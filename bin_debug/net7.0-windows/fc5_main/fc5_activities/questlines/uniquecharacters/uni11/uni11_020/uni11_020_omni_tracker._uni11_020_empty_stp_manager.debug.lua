LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni11/uni11_020/uni11_020_omni_tracker.domino
-- User graph: _UNI11_020_Empty_STP_Manager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Cow_STP" Type="Nomad|entity{}" />
    <DataIn Name="Bull_STP" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/GetContextualAction.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI11/UNI11_020/UNI11_020_Omni_Tracker._UNI11_020_Empty_STP_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Bull_STP",
                type = "entity",
            },
            [1] = {
                name = "Cow_STP",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")] = {
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
                name = "pawnId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "contextualActionId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
            },
            [1] = {
                name = "Group",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/GroupIter.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndIter",
                delayed = true,
            },
            [1] = {
                name = "PawnIter",
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
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "entity",
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
    self._name = "_UNI11_020_Empty_STP_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager";
    self.var_BullNotMating = nil;
    self.var_BullMatingNow = nil;
    self.box_GroupIter_3 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|439250360");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_3_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_3_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_3_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_3_Stopped,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|657743516");
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
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|978400303");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_ContextualActionListener_1 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1362060940");
    l0:SetConnections({
        -- Select,
        [7] = self.f_box_ContextualActionListener_1_Select,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1447251509");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1478710468");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_OnceOnly_v3_20 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1721456096");
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
                [0] = self.f_box_OnceOnly_v3_20_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_6 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1738798506");
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
    self.box_ContextualActionListener_9 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1855324623");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_9_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_9_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_9_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_9_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_9_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_9_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_9_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_9_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_9_Start,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1934806963");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
end;

function export:Enable()
    local l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|306371625", "306371625", "_UNI11_020_Empty_STP_Manager", "Enable", "box_MultipleOR_15.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1335303992", "1335303992", "_UNI11_020_Empty_STP_Manager", "box_Simple_Node_16.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|774918026", "774918026", "_UNI11_020_Empty_STP_Manager", "box_Simple_Node_16.Out", "box_Delay_v5_18.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1679924098", "1679924098", "_UNI11_020_Empty_STP_Manager", "box_Simple_Node_16.Out", "box_OnceOnly_v3_6.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|484743687", "484743687", "_UNI11_020_Empty_STP_Manager", "box_Simple_Node_16.Out", "box_Delay_v5_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|659089375", "659089375", "_UNI11_020_Empty_STP_Manager", "box_Simple_Node_16.Out", "box_UseContextualActionModifier_v3_7.CallInterrupt", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallInterrupt
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
    l0 = self.box_OnceOnly_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|277457646", "277457646", "_UNI11_020_Empty_STP_Manager", "box_Simple_Node_16.Out", "box_OnceOnly_v3_20.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_GroupAddToGroup_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|156875309", "156875309", "_UNI11_020_Empty_STP_Manager", "box_GroupAddToGroup_v2_17.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1572902368", "1572902368", "_UNI11_020_Empty_STP_Manager", "box_OutputOrder_v2_14.Out", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_9();
    l0 = self.box_ContextualActionListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1542560697", "1542560697", "_UNI11_020_Empty_STP_Manager", "box_OutputOrder_v2_14.Out", "box_ContextualActionListener_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_5_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|303007155", "303007155", "_UNI11_020_Empty_STP_Manager", "box_UseContextualActionModifier_v3_5.InterruptCalled", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupIter_3_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_3_PawnIter();
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_GroupIter_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|9022509", "9022509", "_UNI11_020_Empty_STP_Manager", "box_GroupIter_3.PawnIter", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_1();
    l0 = self.box_MultipleOR_15;
    l1 = self.box_ContextualActionListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|2015439502", "2015439502", "_UNI11_020_Empty_STP_Manager", "box_MultipleOR_15.Out", "box_ContextualActionListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_2();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1602490758", "1602490758", "_UNI11_020_Empty_STP_Manager", "box_OutputOrder_v2_13.Out", "box_Simple_Node_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_1();
    l0 = self.box_ContextualActionListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1335958174", "1335958174", "_UNI11_020_Empty_STP_Manager", "box_OutputOrder_v2_13.Out", "box_ContextualActionListener_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1560656137", "1560656137", "_UNI11_020_Empty_STP_Manager", "box_OutputOrder_v2_10.Out", "box_UseContextualActionModifier_v3_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_9();
    l0 = self.box_ContextualActionListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|122523620", "122523620", "_UNI11_020_Empty_STP_Manager", "box_OutputOrder_v2_10.Out", "box_ContextualActionListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_11();
    l0 = self.box_Delay_v5_12;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|468339535", "468339535", "_UNI11_020_Empty_STP_Manager", "box_Delay_v5_12.TimeElapsed", "box_GroupAddToGroup_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_7_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1134577280", "1134577280", "_UNI11_020_Empty_STP_Manager", "box_UseContextualActionModifier_v3_7.Enabled", "box_UseContextualActionModifier_v3_7.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_7_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1495127378", "1495127378", "_UNI11_020_Empty_STP_Manager", "box_UseContextualActionModifier_v3_7.InterruptCalled", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_7_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1532809502", "1532809502", "_UNI11_020_Empty_STP_Manager", "box_UseContextualActionModifier_v3_7.UseCalled", "box_RemoveFromGroup_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetContextualAction_4_Out()
    local params, l0;
    self:OnExit_box_GetContextualAction_4_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_5();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1483533441", "1483533441", "_UNI11_020_Empty_STP_Manager", "box_GetContextualAction_4.Out", "box_UseContextualActionModifier_v3_5.CallInterrupt", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallInterrupt
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|998779923", "998779923", "_UNI11_020_Empty_STP_Manager", "box_GroupAddToGroup_v2_11.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_1_Select()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_ContextualActionListener_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|845506098", "845506098", "_UNI11_020_Empty_STP_Manager", "box_ContextualActionListener_1.Select", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_2_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_3();
    l0 = self.box_GroupIter_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|210392111", "210392111", "_UNI11_020_Empty_STP_Manager", "box_Simple_Node_2.Out", "box_GroupIter_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_17();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|135501060", "135501060", "_UNI11_020_Empty_STP_Manager", "box_Delay_v5_18.TimeElapsed", "box_GroupAddToGroup_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_7();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1099479184", "1099479184", "_UNI11_020_Empty_STP_Manager", "box_Delay_v5_21.TimeElapsed", "box_UseContextualActionModifier_v3_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_3();
    l0 = self.box_GroupIter_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1241955077", "1241955077", "_UNI11_020_Empty_STP_Manager", "box_OutputOrder_v2_22.Out", "box_GroupIter_3.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1957370466", "1957370466", "_UNI11_020_Empty_STP_Manager", "box_OutputOrder_v2_22.Out", "box_OnceOnly_v3_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_20_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_OnceOnly_v3_20;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1502091937", "1502091937", "_UNI11_020_Empty_STP_Manager", "box_OnceOnly_v3_20.Out", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_6_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetContextualAction_4();
    l0 = self.box_OnceOnly_v3_6;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|790492914", "790492914", "_UNI11_020_Empty_STP_Manager", "box_OnceOnly_v3_6.Out", "box_GetContextualAction_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_9_End()
    self:OnExit_box_ContextualActionListener_9_End();
end;

function export:f_box_ContextualActionListener_9_Interrupt()
    self:OnExit_box_ContextualActionListener_9_Interrupt();
end;

function export:f_box_ContextualActionListener_9_Markup1()
    local params, l0, l1;
    self:OnExit_box_ContextualActionListener_9_Markup1();
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_ContextualActionListener_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|2075518046", "2075518046", "_UNI11_020_Empty_STP_Manager", "box_ContextualActionListener_9.Markup1", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_9_Markup2()
    self:OnExit_box_ContextualActionListener_9_Markup2();
end;

function export:f_box_ContextualActionListener_9_Select()
    self:OnExit_box_ContextualActionListener_9_Select();
end;

function export:f_box_ContextualActionListener_9_Start()
    self:OnExit_box_ContextualActionListener_9_Start();
end;

function export:f_box_MultipleOR_19_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_19;
    l1 = self.box_OnceOnly_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1714542617", "1714542617", "_UNI11_020_Empty_STP_Manager", "box_MultipleOR_19.Out", "box_OnceOnly_v3_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveFromGroup_v2_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|601037148", "601037148", "_UNI11_020_Empty_STP_Manager", "box_RemoveFromGroup_v2_8.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|@n_Reset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|11541382");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_17_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.var_BullNotMating,
        -- ToGroup,
        [1] = "#4C14AD20",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|57538116");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|299511430");
    l0:SetConnections({
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_5_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = self._sld_contextualActionId_box_GetContextualAction_4,
        -- Entity,
        [1] = self.var_BullNotMating,
    };
    return params;
end;

function export:OnEnter_box_GroupIter_3()
    local params;
    params = {
        -- entities,
        [0] = "#4C14AD20",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|831962830");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|967880357");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
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
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1072117669");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_7_Enabled,
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_7_InterruptCalled,
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_7_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = self.Bull_STP,
        -- Entity,
        [1] = self.var_BullNotMating,
    };
    return params;
end;

function export:OnEnter_box_GetContextualAction_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualAction_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1208329574");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualAction_4_Out,
    });
    params = {
        -- pawnId,
        [0] = self.var_BullNotMating,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1304199630");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_11_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.var_BullMatingNow,
        -- ToGroup,
        [1] = "#4C14AD20",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_1()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.Cow_STP,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_2()
    local params, l0;
    DrawTextToScreen("Comment: Cow X is available", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Cow X is available");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1374412951");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_2_Out,
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
        [2] = 45,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|1593326968");
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

function export:OnEnter_box_ContextualActionListener_9()
    local params;
    params = {
        -- ContextualAction,
        [0] = self.Bull_STP,
        -- UserFilter,
        [1] = self.var_BullNotMating,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI11\\UNI11_020\\UNI11_020_Omni_Tracker.domino|@_UNI11_020_Empty_STP_Manager|2141563400");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_8_Out,
    });
    params = {
        -- Entities,
        [0] = self.var_BullNotMating,
        -- Group,
        [1] = "#4C14AD20",
    };
    return params;
end;

function export:OnExit_box_GroupIter_3_PawnIter()
    local l0;
    l0 = self.box_GroupIter_3;
    self.var_BullNotMating = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetContextualAction_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    self._sld_contextualActionId_box_GetContextualAction_4 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_9_End()
    local l0;
    l0 = self.box_ContextualActionListener_9;
    self.var_BullMatingNow = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_9_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_9;
    self.var_BullMatingNow = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_9_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_9;
    self.var_BullMatingNow = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_9_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_9;
    self.var_BullMatingNow = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_9_Select()
    local l0;
    l0 = self.box_ContextualActionListener_9;
    self.var_BullMatingNow = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_9_Start()
    local l0;
    l0 = self.box_ContextualActionListener_9;
    self.var_BullMatingNow = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="Bull_STP" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Cow_STP" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
