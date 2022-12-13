LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b11.domino
-- User graph: DoorsLocationOnReload
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.DoorsLocationOnReload.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "IN",
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
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "DoorsLocationOnReload";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload";
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|117787630");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_9_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|156729396");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_8_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_8_Loaded,
    });
    self.box_PositionModifier_v2_16 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|211968290");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_19 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|223702689");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_30 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|366684164");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|482860368");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_5_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_EntityStatusListener_33 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|749407660");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_33_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_33_Loaded,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|791568252");
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
    self.box_EntityStatusListener_20 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1004251684");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_20_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_20_Loaded,
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1109533897");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_EntityStatusListener_14 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1130264039");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_14_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_14_Loaded,
    });
    self.box_PositionModifier_v2_2 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1189470001");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_31 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1440842476");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_31_Loaded,
    });
    self.box_PositionModifier_v2_10 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1527051487");
    l0:SetConnections({
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1636007115");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1636586616");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_13_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1674014240");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_1_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1690465675");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_3_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1707630394");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_PositionModifier_v2_4 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1778348783");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1829247351");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_EntityStatusListener_15 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1963277637");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_15_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_15_Loaded,
    });
    self.box_EntityStatusListener_21 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|2063302503");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_21_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_21_Loaded,
    });
    self.box_MultipleAND_v2_18 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|2064855166");
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
        [0] = self.f_box_MultipleAND_v2_18_Out,
    });
end;

function export:IN()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_20();
    l0 = self.box_EntityStatusListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1249486737", "1249486737", "DoorsLocationOnReload", "IN", "box_EntityStatusListener_20.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_12();
    l0 = self.box_EntityStatusListener_9;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|85991504", "85991504", "DoorsLocationOnReload", "box_EntityStatusListener_9.Enabled", "box_ParticleSystem_v3_12.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1957954271", "1957954271", "DoorsLocationOnReload", "box_EntityStatusListener_9.Loaded", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1649832355", "1649832355", "DoorsLocationOnReload", "box_EntityStatusListener_8.Enabled", "box_EntityStatusListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_8_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1858836057", "1858836057", "DoorsLocationOnReload", "box_EntityStatusListener_8.Loaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1226352127", "1226352127", "DoorsLocationOnReload", "box_EntityStatusListener_5.Enabled", "box_EntityStatusListener_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|990530326", "990530326", "DoorsLocationOnReload", "box_EntityStatusListener_5.Loaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_12_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1174859533", "1174859533", "DoorsLocationOnReload", "box_ParticleSystem_v3_12.Stopped", "box_EntityStatusListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_33_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_31();
    l0 = self.box_EntityStatusListener_33;
    l1 = self.box_EntityStatusListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|48617272", "48617272", "DoorsLocationOnReload", "box_EntityStatusListener_33.Enabled", "box_EntityStatusListener_31.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_33_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_33;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1307534169", "1307534169", "DoorsLocationOnReload", "box_EntityStatusListener_33.Loaded", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_10();
    l0 = self.box_MultipleOR_11;
    l1 = self.box_PositionModifier_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1784269051", "1784269051", "DoorsLocationOnReload", "box_MultipleOR_11.Out", "box_PositionModifier_v2_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_21();
    l0 = self.box_EntityStatusListener_20;
    l1 = self.box_EntityStatusListener_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|395495315", "395495315", "DoorsLocationOnReload", "box_EntityStatusListener_20.Enabled", "box_EntityStatusListener_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_20_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_18();
    l0 = self.box_EntityStatusListener_20;
    l1 = self.box_MultipleAND_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1129843278", "1129843278", "DoorsLocationOnReload", "box_EntityStatusListener_20.Loaded", "box_MultipleAND_v2_18.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_30();
    l0 = self.box_MultipleOR_32;
    l1 = self.box_PositionModifier_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1451488843", "1451488843", "DoorsLocationOnReload", "box_MultipleOR_32.Out", "box_PositionModifier_v2_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_15();
    l0 = self.box_EntityStatusListener_14;
    l1 = self.box_EntityStatusListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|88847620", "88847620", "DoorsLocationOnReload", "box_EntityStatusListener_14.Enabled", "box_EntityStatusListener_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_14_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_14;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|2079566969", "2079566969", "DoorsLocationOnReload", "box_EntityStatusListener_14.Loaded", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_31_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_31;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1007680003", "1007680003", "DoorsLocationOnReload", "box_EntityStatusListener_31.Loaded", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_16();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_PositionModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1582640060", "1582640060", "DoorsLocationOnReload", "box_MultipleOR_17.Out", "box_PositionModifier_v2_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|183859990", "183859990", "DoorsLocationOnReload", "box_EntityStatusListener_13.Enabled", "box_EntityStatusListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1885906487", "1885906487", "DoorsLocationOnReload", "box_EntityStatusListener_13.Loaded", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|538971832", "538971832", "DoorsLocationOnReload", "box_EntityStatusListener_1.Enabled", "box_EntityStatusListener_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|573819575", "573819575", "DoorsLocationOnReload", "box_EntityStatusListener_1.Loaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_33();
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_EntityStatusListener_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1783747787", "1783747787", "DoorsLocationOnReload", "box_EntityStatusListener_3.Enabled", "box_EntityStatusListener_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|181212630", "181212630", "DoorsLocationOnReload", "box_EntityStatusListener_3.Loaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_2();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_PositionModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|525416859", "525416859", "DoorsLocationOnReload", "box_MultipleOR_7.Out", "box_PositionModifier_v2_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_4();
    l0 = self.box_MultipleOR_6;
    l1 = self.box_PositionModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|646230932", "646230932", "DoorsLocationOnReload", "box_MultipleOR_6.Out", "box_PositionModifier_v2_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_15;
    l1 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1698618673", "1698618673", "DoorsLocationOnReload", "box_EntityStatusListener_15.Enabled", "box_EntityStatusListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_15_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_15;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1408965552", "1408965552", "DoorsLocationOnReload", "box_EntityStatusListener_15.Loaded", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_14();
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_EntityStatusListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|1812114397", "1812114397", "DoorsLocationOnReload", "box_EntityStatusListener_21.Enabled", "box_EntityStatusListener_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_21_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_18();
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_MultipleAND_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|966101604", "966101604", "DoorsLocationOnReload", "box_EntityStatusListener_21.Loaded", "box_MultipleAND_v2_18.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleAND_v2_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_19();
    l0 = self.box_MultipleAND_v2_18;
    l1 = self.box_PositionModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|938944395", "938944395", "DoorsLocationOnReload", "box_MultipleAND_v2_18.Out", "box_PositionModifier_v2_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104080469409678229",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104080501447869361",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_16()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103803391395306126",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101950081929334416",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_19()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103803391393208970",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101950099704794779",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_30()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104272866995359964",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104175712117212239",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104132611969405347",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_12()
    local params, l0;
    DrawTextToScreen("Comment: Stopping the Falling Petal Set in the normal states of the Father Compound", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: Stopping the Falling Petal Set in the normal states of the Father Compound");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@DoorsLocationOnReload|728018586");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_12_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103900871441007062",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_33()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104272866995359964",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101950099704794779",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_14()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101950081929334416",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_2()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104132625141617063",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104079629240255720",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_31()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104175712117212239",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_10()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104133825205398887",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104080469409678229",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104133825205398887",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104132625141617063",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104079629240255720",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_4()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104132611969405347",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104080501447869361",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103803391395306126",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_21()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103803391393208970",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_18()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="IN" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
