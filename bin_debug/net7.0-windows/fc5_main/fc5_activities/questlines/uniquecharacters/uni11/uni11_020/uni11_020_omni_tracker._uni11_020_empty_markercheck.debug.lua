LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni11/uni11_020/uni11_020_omni_tracker.domino
-- User graph: _UNI11_020_Empty_MarkerCheck
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
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_MarkerCheck.debug.lua")] = {
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
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua")] = {
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
                name = "MarkedBull_Resetted",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "MarkedBull",
                type = "entity",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Reset_MarkedBull",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "_UNI11_020_Empty_MarkerCheck";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck";
    self.var_NewBullMated = nil;
    self.var_MarkedBull_01 = "2104203087345397869";
    self.var_MarkedBull_02 = "2104203087345397869";
    self.var_MarkedBull_03 = "2104203087345397869";
    self.var_MarkedBull_04 = "2104203087345397869";
    self.var_MarkedBull_05 = "2104203087345397869";
    self.var_MarkedBull_06 = "2104203087345397869";
    self.var_MarkedBull_07 = "2104203087345397869";
    self.var_MarkedBull_08 = "2104203087345397869";
    self.var_MarkedBull_09 = "2104203087345397869";
    self.var_MarkedBull_10 = "2104203087345397869";
    self.box__UNI11_020_Empty_AddMarker_11 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|102290855");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_11_MarkedBull_Resetted,
    });
    self.box__UNI11_020_Empty_AddMarker_46 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|116837885");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_46_MarkedBull_Resetted,
    });
    self.box__UNI11_020_Empty_AddMarker_24 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|586937658");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_24_MarkedBull_Resetted,
    });
    self.box__UNI11_020_Empty_AddMarker_15 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|811120695");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_15_MarkedBull_Resetted,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1061077617");
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
    });
    self.box_GroupSizeListener_v5_38 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1214195459");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_38_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_38_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_38_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_38_MemberRemoved,
    });
    self.box__UNI11_020_Empty_AddMarker_53 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1223744704");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_53_MarkedBull_Resetted,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1345851495");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box__UNI11_020_Empty_AddMarker_2 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1375131787");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_2_MarkedBull_Resetted,
    });
    self.box__UNI11_020_Empty_AddMarker_12 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1387506277");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_12_MarkedBull_Resetted,
    });
    self.box__UNI11_020_Empty_AddMarker_56 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1452453735");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_56_MarkedBull_Resetted,
    });
    self.box__UNI11_020_Empty_AddMarker_28 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1875812282");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_28_MarkedBull_Resetted,
    });
    self.box__UNI11_020_Empty_AddMarker_54 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_AddMarker.debug.lua");
    l0 = self.box__UNI11_020_Empty_AddMarker_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI11_020_Empty_AddMarker_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2135210637");
    l0:SetConnections({
        -- MarkedBull_Resetted,
        [0] = self.f_box__UNI11_020_Empty_AddMarker_54_MarkedBull_Resetted,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_57();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2092016298", "2092016298", "_UNI11_020_Empty_MarkerCheck", "Disable", "box_Simple_Node_57.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|851298109", "851298109", "_UNI11_020_Empty_MarkerCheck", "Enable", "box_MultipleOR_29.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1001969207", "1001969207", "_UNI11_020_Empty_MarkerCheck", "box_Simple_Node_57.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_GroupSizeListener_v5_38();
    l0 = self.box_GroupSizeListener_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1354490303", "1354490303", "_UNI11_020_Empty_MarkerCheck", "box_Simple_Node_57.Out", "box_GroupSizeListener_v5_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_58_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1494383454", "1494383454", "_UNI11_020_Empty_MarkerCheck", "box_Simple_Node_58.Out", "box_MultipleOR_29.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetEntity_v2_23_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|135847904", "135847904", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_23.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI11_020_Empty_AddMarker_11_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_11_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_11;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|254452101", "254452101", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_11.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Entity_18_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_5();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1601101526", "1601101526", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_18.NotEqual", "box_Compare_Entity_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_40_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_49();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1834579794", "1834579794", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_40.Equal", "box_SetEntity_v2_49.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_40_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_19();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|476648372", "476648372", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_40.NotEqual", "box_Compare_Entity_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_48_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_48_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|307783356", "307783356", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_48.Out", "box_OutputOrder_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI11_020_Empty_AddMarker_46_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_46_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_46;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2138441095", "2138441095", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_46.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Entity_16_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_25();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|767719890", "767719890", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_16.NotEqual", "box_Compare_Entity_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|721497020", "721497020", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_34.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_28();
    l0 = self.box__UNI11_020_Empty_AddMarker_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2042078814", "2042078814", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_34.Out", "box__UNI11_020_Empty_AddMarker_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_26_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_26_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|540122403", "540122403", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_26.Out", "box_OutputOrder_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_17_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_10();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2015775937", "2015775937", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_17.NotEqual", "box_Compare_Entity_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|368700571", "368700571", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_35.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_54();
    l0 = self.box__UNI11_020_Empty_AddMarker_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|422712525", "422712525", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_35.Out", "box__UNI11_020_Empty_AddMarker_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_47_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_47_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|692443831", "692443831", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_47.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|912401856", "912401856", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_32.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_24();
    l0 = self.box__UNI11_020_Empty_AddMarker_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1469401039", "1469401039", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_32.Out", "box__UNI11_020_Empty_AddMarker_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Entity_33_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_14();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1281860816", "1281860816", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_33.NotEqual", "box_Compare_Entity_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_5_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_4();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1475145862", "1475145862", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_5.NotEqual", "box_Compare_Entity_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_39_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_7();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1344900228", "1344900228", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_39.Equal", "box_SetEntity_v2_7.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_39_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_40();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|56377604", "56377604", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_39.NotEqual", "box_Compare_Entity_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI11_020_Empty_AddMarker_24_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_24_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_24;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|84276746", "84276746", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_24.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_Compare_Entity_41_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_31();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1330431711", "1330431711", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_41.Equal", "box_SetEntity_v2_31.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_41_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_36();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2136034867", "2136034867", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_41.NotEqual", "box_Compare_Entity_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI11_020_Empty_AddMarker_15_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_15_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_15;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|664961650", "664961650", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_15.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_SetEntity_v2_7_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|153345422", "153345422", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_7.Out", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_10_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_16();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|140556829", "140556829", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_10.NotEqual", "box_Compare_Entity_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_4_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_33();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|286994302", "286994302", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_4.NotEqual", "box_Compare_Entity_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|114046370", "114046370", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_52.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_56();
    l0 = self.box__UNI11_020_Empty_AddMarker_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2125415786", "2125415786", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_52.Out", "box__UNI11_020_Empty_AddMarker_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_55_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|136760399", "136760399", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_55.Out", "box_OutputOrder_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_45_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1123915435", "1123915435", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_45.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_38_MemberAdded()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_38_MemberAdded();
    params = self:OnEnter_box_Compare_Entity_18();
    l0 = self.box_GroupSizeListener_v5_38;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|327749310", "327749310", "_UNI11_020_Empty_MarkerCheck", "box_GroupSizeListener_v5_38.MemberAdded", "box_Compare_Entity_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_38_MemberRemoved()
    self:OnExit_box_GroupSizeListener_v5_38_MemberRemoved();
end;

function export:f_box_Compare_Entity_6_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_37();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1184084799", "1184084799", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_6.Equal", "box_SetEntity_v2_37.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_6_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_44();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1104492373", "1104492373", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_6.NotEqual", "box_Compare_Entity_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1594161036", "1594161036", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_3.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_2();
    l0 = self.box__UNI11_020_Empty_AddMarker_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1783083221", "1783083221", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_3.Out", "box__UNI11_020_Empty_AddMarker_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__UNI11_020_Empty_AddMarker_53_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_53_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_53;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2056553999", "2056553999", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_53.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_38();
    l0 = self.box_MultipleOR_29;
    l1 = self.box_GroupSizeListener_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|897432021", "897432021", "_UNI11_020_Empty_MarkerCheck", "box_MultipleOR_29.Out", "box_GroupSizeListener_v5_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_49_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_49_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1087637261", "1087637261", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_49.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI11_020_Empty_AddMarker_2_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_2_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_2;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|770435505", "770435505", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_2.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box__UNI11_020_Empty_AddMarker_12_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_12_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_12;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|318732299", "318732299", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_12.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_Compare_Entity_44_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_47();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1955561031", "1955561031", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_44.Equal", "box_SetEntity_v2_47.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_44_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_41();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1662745056", "1662745056", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_44.NotEqual", "box_Compare_Entity_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_8_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_23();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1188526910", "1188526910", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_8.Equal", "box_SetEntity_v2_23.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_8_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_6();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|402564005", "402564005", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_8.NotEqual", "box_Compare_Entity_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI11_020_Empty_AddMarker_56_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_56_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_56;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2103401572", "2103401572", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_56.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_Compare_Entity_36_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_26();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1468907499", "1468907499", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_36.Equal", "box_SetEntity_v2_26.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_36_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_39();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1614873319", "1614873319", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_36.NotEqual", "box_Compare_Entity_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_25_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_30();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1609595527", "1609595527", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_25.NotEqual", "box_Compare_Entity_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_19_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_55();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1895609233", "1895609233", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_19.Equal", "box_SetEntity_v2_55.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_19_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_43();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1015586261", "1015586261", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_19.NotEqual", "box_Compare_Entity_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|129648138", "129648138", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_21.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_15();
    l0 = self.box__UNI11_020_Empty_AddMarker_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1804187907", "1804187907", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_21.Out", "box__UNI11_020_Empty_AddMarker_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_11();
    l0 = self.box__UNI11_020_Empty_AddMarker_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|399633679", "399633679", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_46();
    l0 = self.box__UNI11_020_Empty_AddMarker_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1953450179", "1953450179", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_46.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_28();
    l0 = self.box__UNI11_020_Empty_AddMarker_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1222515923", "1222515923", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_15();
    l0 = self.box__UNI11_020_Empty_AddMarker_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|81289488", "81289488", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_2();
    l0 = self.box__UNI11_020_Empty_AddMarker_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|29922252", "29922252", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_24();
    l0 = self.box__UNI11_020_Empty_AddMarker_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1512351826", "1512351826", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_54();
    l0 = self.box__UNI11_020_Empty_AddMarker_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1456464927", "1456464927", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_54.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_12();
    l0 = self.box__UNI11_020_Empty_AddMarker_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1929559470", "1929559470", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_53();
    l0 = self.box__UNI11_020_Empty_AddMarker_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1644359558", "1644359558", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_56();
    l0 = self.box__UNI11_020_Empty_AddMarker_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1997966493", "1997966493", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_1.Out", "box__UNI11_020_Empty_AddMarker_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Entity_30_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_42();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1595036449", "1595036449", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_30.NotEqual", "box_Compare_Entity_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|903064314", "903064314", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_50.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_12();
    l0 = self.box__UNI11_020_Empty_AddMarker_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1966003425", "1966003425", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_50.Out", "box__UNI11_020_Empty_AddMarker_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__UNI11_020_Empty_AddMarker_28_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_28_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_28;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1559874061", "1559874061", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_28.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|510097682", "510097682", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_9.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_11();
    l0 = self.box__UNI11_020_Empty_AddMarker_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1540276013", "1540276013", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_9.Out", "box__UNI11_020_Empty_AddMarker_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_31_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_31_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|706457584", "706457584", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_31.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_14_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_17();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1795502989", "1795502989", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_14.NotEqual", "box_Compare_Entity_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1129794130", "1129794130", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_22.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_46();
    l0 = self.box__UNI11_020_Empty_AddMarker_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1302417214", "1302417214", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_22.Out", "box__UNI11_020_Empty_AddMarker_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Entity_42_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_45();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1166073653", "1166073653", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_42.Equal", "box_SetEntity_v2_45.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_42_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_8();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2125757271", "2125757271", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_42.NotEqual", "box_Compare_Entity_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_37_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_37_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|904612853", "904612853", "_UNI11_020_Empty_MarkerCheck", "box_SetEntity_v2_37.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_43_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_48();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1748262232", "1748262232", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_43.Equal", "box_SetEntity_v2_48.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_43_NotEqual()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_27();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2079286824", "2079286824", "_UNI11_020_Empty_MarkerCheck", "box_Compare_Entity_43.NotEqual", "box_Print_v2_27.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1401957450", "1401957450", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_51.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI11_020_Empty_AddMarker_53();
    l0 = self.box__UNI11_020_Empty_AddMarker_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|261183658", "261183658", "_UNI11_020_Empty_MarkerCheck", "box_OutputOrder_v2_51.Out", "box__UNI11_020_Empty_AddMarker_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__UNI11_020_Empty_AddMarker_54_MarkedBull_Resetted()
    local l0, l1;
    self:OnExit_box__UNI11_020_Empty_AddMarker_54_MarkedBull_Resetted();
    l0 = self.box__UNI11_020_Empty_AddMarker_54;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1791667783", "1791667783", "_UNI11_020_Empty_MarkerCheck", "box__UNI11_020_Empty_AddMarker_54.MarkedBull_Resetted", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:OnEnter_box_Simple_Node_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_57_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|@n_NewBullMated_Set");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|452337");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_23_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_11()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_01,
        -- Marker,
        [1] = "2104202634851299360",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|104009555");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_18_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_01,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|106023126");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_40_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_40_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_08,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|107012978");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_48_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_46()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_02,
        -- Marker,
        [1] = "2104202639441965092",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|140062345");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_16_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_08,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|273207600");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|337382003");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_26_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|361566719");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_17_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_06,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|367381934");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|431400242");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_47_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|494837564");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|508572415");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_33_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_04,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|534541912");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_5_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_02,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|553314888");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_39_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_39_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_07,
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_24()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_06,
        -- Marker,
        [1] = "2104217686063048845",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|774689375");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_41_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_41_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_05,
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_15()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_04,
        -- Marker,
        [1] = "2104202642375880748",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|878212860");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_7_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|953926263");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_10_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_07,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1039404802");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_4_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_03,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1067996952");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1076895173");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_55_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1133955481");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_45_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#A099127D",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1219618999");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_6_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_6_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_03,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1220729024");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_53()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_09,
        -- Marker,
        [1] = "2104217686058854529",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1364350225");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "More Markers NOT SUPPORTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1369381133");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_49_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_2()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_05,
        -- Marker,
        [1] = "2104202642656899120",
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_12()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_08,
        -- Marker,
        [1] = "2104217686060951685",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1421190174");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_44_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_44_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_04,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1437389818");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_8_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_8_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_02,
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_56()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_10,
        -- Marker,
        [1] = "2104217686058854525",
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1522711494");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_36_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_36_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_06,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1554889712");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_25_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_09,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1715878983");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_19_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_19_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_09,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1741690751");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1776589398");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [4] = self.f_box_OutputOrder_v2_1_Out_4,
                [5] = self.f_box_OutputOrder_v2_1_Out_5,
                [6] = self.f_box_OutputOrder_v2_1_Out_6,
                [7] = self.f_box_OutputOrder_v2_1_Out_7,
                [8] = self.f_box_OutputOrder_v2_1_Out_8,
                [9] = self.f_box_OutputOrder_v2_1_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1788136213");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_30_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1874439694");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_28()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_03,
        -- Marker,
        [1] = "2104202642052919336",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1887053401");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1910785401");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_31_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1923987005");
    l0:SetConnections({
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_14_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = self.var_NewBullMated,
        -- Entity2,
        [1] = self.var_MarkedBull_05,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|1960790878");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2032848230");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_42_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_42_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_01,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2044126716");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_37_Out,
    });
    params = {
        -- Entity,
        [0] = self.var_NewBullMated,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2051668450");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_43_Equal,
        -- NotEqual,
        [1] = self.f_box_Compare_Entity_43_NotEqual,
    });
    params = {
        -- Entity1,
        [0] = "2104203087345397869",
        -- Entity2,
        [1] = self.var_MarkedBull_10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_MarkerCheck|2083399927");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__UNI11_020_Empty_AddMarker_54()
    local params;
    params = {
        -- MarkedBull,
        [0] = self.var_MarkedBull_07,
        -- Marker,
        [1] = "2104217686060951689",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_11_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_11;
    self.var_MarkedBull_01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_48_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_46_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_46;
    self.var_MarkedBull_02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_26_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_06 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_24_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_24;
    self.var_MarkedBull_06 = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_15_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_15;
    self.var_MarkedBull_04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_07 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_09 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_01 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_38_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_38;
    self.var_NewBullMated = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_38_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_38;
    self.var_NewBullMated = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_53_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_53;
    self.var_MarkedBull_09 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_49_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_08 = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_2_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_2;
    self.var_MarkedBull_05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_12_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_12;
    self.var_MarkedBull_08 = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_56_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_56;
    self.var_MarkedBull_10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_28_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_28;
    self.var_MarkedBull_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_37_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.var_MarkedBull_03 = l0:GetDataOutValue(0);
end;

function export:OnExit_box__UNI11_020_Empty_AddMarker_54_MarkedBull_Resetted()
    local l0;
    l0 = self.box__UNI11_020_Empty_AddMarker_54;
    self.var_MarkedBull_07 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
