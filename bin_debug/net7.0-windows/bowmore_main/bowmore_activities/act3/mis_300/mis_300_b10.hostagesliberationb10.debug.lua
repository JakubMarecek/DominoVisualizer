LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b10.domino
-- User graph: HostagesLiberationB10
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eHost1" Type="Nomad|entity{}" />
    <DataIn Name="eHost2" Type="Nomad|entity{}" />
    <DataIn Name="eHost3" Type="Nomad|entity{}" />
    <DataIn Name="eHostMarker1" Type="Nomad|entity{}" />
    <DataIn Name="eHostMarker2" Type="Nomad|entity{}" />
    <DataIn Name="eHostMarker3" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsPawnAlive_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/StatisticIncrement_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B10 = nil;
    Globals.MIS_300_B10 = {
        bBreakersDone = false,
        bTankDone = false,
        bHostageAllDead = false,
        gPlayerGroup = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B10.HostagesLiberationB10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = false,
            },
            [1] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eHost1",
                type = "entity",
            },
            [1] = {
                name = "eHost2",
                type = "entity",
            },
            [2] = {
                name = "eHost3",
                type = "entity",
            },
            [3] = {
                name = "eHostMarker1",
                type = "entity",
            },
            [4] = {
                name = "eHostMarker2",
                type = "entity",
            },
            [5] = {
                name = "eHostMarker3",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/IsPawnAlive_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Alive",
                delayed = false,
            },
            [1] = {
                name = "DeadOrDown",
                delayed = false,
            },
            [2] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/StatisticIncrement_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Increment",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Incremented",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "increment",
                type = "int",
            },
            [1] = {
                name = "name",
                type = "string",
            },
            [2] = {
                name = "statisticDbObject",
                type = "database",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
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
    self._name = "HostagesLiberationB10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10";
    self.Success = DummyFunction;
    self.Fail = DummyFunction;
    self.box_UniversalInteractionModifier_v2_36 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|329812455");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_36_Disabled,
    });
    self.box_UniversalInteractionModifier_v2_46 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|378057731");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_46_Disabled,
    });
    self.box_OnceOnly_v3_23 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|570676094");
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
                [0] = self.f_box_OnceOnly_v3_23_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_18 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|826489322");
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
                [0] = self.f_box_OnceOnly_v3_18_Out_0,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionModifier_v2_45 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1035152487");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UniversalInteractionModifier_v2_45_Disabled,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1843819700");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_OnceOnly_v3_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1900027367", "1900027367", "HostagesLiberationB10", "In", "box_OnceOnly_v3_18.In", self, l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_51_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_41();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1440494344", "1440494344", "HostagesLiberationB10", "box_IsPawnAlive_v3_51.Alive", "box_GroupAddToGroup_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StatisticIncrement_v2_42_Incremented()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|466863981", "466863981", "HostagesLiberationB10", "box_StatisticIncrement_v2_42.Incremented", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionModifier_v2_36_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_44();
    l0 = self.box_UniversalInteractionModifier_v2_36;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1048711809", "1048711809", "HostagesLiberationB10", "box_UniversalInteractionModifier_v2_36.Disabled", "box_SetContextualStrategy_44.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_46_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_UniversalInteractionModifier_v2_46;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1132004357", "1132004357", "HostagesLiberationB10", "box_UniversalInteractionModifier_v2_46.Disabled", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StatisticIncrement_v2_49();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1879058992", "1879058992", "HostagesLiberationB10", "box_GroupAddToGroup_v2_43.Out", "box_StatisticIncrement_v2_49.Increment", clone:GetLuaBox(), l0:GetLuaBox());
    -- Increment
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_23_Out_0()
    local l0;
    l0 = self.box_OnceOnly_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1149244492", "1149244492", "HostagesLiberationB10", "box_OnceOnly_v3_23.Out", "Success", l0:GetLuaBox(), self);
    self:Success();
end;

function export:f_box_SetContextualStrategy_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_36();
    l0 = self.box_UniversalInteractionModifier_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1515551409", "1515551409", "HostagesLiberationB10", "box_SetContextualStrategy_26.Out", "box_UniversalInteractionModifier_v2_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IsPawnAlive_v3_52_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_43();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|468680909", "468680909", "HostagesLiberationB10", "box_IsPawnAlive_v3_52.Alive", "box_GroupAddToGroup_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_18_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_26();
    l0 = self.box_OnceOnly_v3_18;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|320847610", "320847610", "HostagesLiberationB10", "box_OnceOnly_v3_18.Out", "box_SetContextualStrategy_26.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_52();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|824572463", "824572463", "HostagesLiberationB10", "box_UseContextualActionModifier_v3_24.Disabled", "box_IsPawnAlive_v3_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StatisticIncrement_v2_25();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|719021052", "719021052", "HostagesLiberationB10", "box_GroupAddToGroup_v2_41.Out", "box_StatisticIncrement_v2_25.Increment", clone:GetLuaBox(), l0:GetLuaBox());
    -- Increment
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_45();
    l0 = self.box_UniversalInteractionModifier_v2_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1624197148", "1624197148", "HostagesLiberationB10", "box_SetContextualStrategy_44.Out", "box_UniversalInteractionModifier_v2_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_45_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_39();
    l0 = self.box_UniversalInteractionModifier_v2_45;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1393008949", "1393008949", "HostagesLiberationB10", "box_UniversalInteractionModifier_v2_45.Disabled", "box_SetContextualStrategy_39.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_33();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1505369245", "1505369245", "HostagesLiberationB10", "box_OutputOrder_v2_48.Out", "box_UseContextualActionModifier_v3_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|940306593", "940306593", "HostagesLiberationB10", "box_OutputOrder_v2_48.Out", "box_UseContextualActionModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_37();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1800999312", "1800999312", "HostagesLiberationB10", "box_OutputOrder_v2_48.Out", "box_UseContextualActionModifier_v3_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StatisticIncrement_v2_42();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|873467762", "873467762", "HostagesLiberationB10", "box_GroupAddToGroup_v2_34.Out", "box_StatisticIncrement_v2_42.Increment", clone:GetLuaBox(), l0:GetLuaBox());
    -- Increment
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_33_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_51();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|995427307", "995427307", "HostagesLiberationB10", "box_UseContextualActionModifier_v3_33.Disabled", "box_IsPawnAlive_v3_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_21;
    l1 = self.box_OnceOnly_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1275654920", "1275654920", "HostagesLiberationB10", "box_MultipleOR_21.Out", "box_OnceOnly_v3_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsPawnAlive_v3_50_Alive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1681872717", "1681872717", "HostagesLiberationB10", "box_IsPawnAlive_v3_50.Alive", "box_GroupAddToGroup_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsPawnAlive_v3_50_DeadOrDown()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|444843903", "444843903", "HostagesLiberationB10", "box_IsPawnAlive_v3_50.DeadOrDown", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsPawnAlive_v3_50_NotLoaded()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1590998844", "1590998844", "HostagesLiberationB10", "box_IsPawnAlive_v3_50.NotLoaded", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_UseContextualActionModifier_v3_37_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsPawnAlive_v3_50();
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1573995705", "1573995705", "HostagesLiberationB10", "box_UseContextualActionModifier_v3_37.Disabled", "box_IsPawnAlive_v3_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_39_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_46();
    l0 = self.box_UniversalInteractionModifier_v2_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|525735888", "525735888", "HostagesLiberationB10", "box_SetContextualStrategy_39.Out", "box_UniversalInteractionModifier_v2_46.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:OnEnter_box_IsPawnAlive_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|94334290");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_51_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2108321487610980308",
    };
    return params;
end;

function export:OnEnter_box_StatisticIncrement_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticIncrement_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|189564623");
    l0:SetConnections({
        -- Incremented,
        [0] = self.f_box_StatisticIncrement_v2_42_Incremented,
    });
    params = {
        -- increment,
        [0] = 1,
        -- name,
        [1] = "General_TotalHostagesRescued",
        -- statisticDbObject,
        [2] = nil,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_36()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_FREE_HOSTAGE",
            id = "730165",
        },
        -- usableEntity,
        [4] = "2108321487610980308",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_46()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_FREE_HOSTAGE",
            id = "730165",
        },
        -- usableEntity,
        [4] = "2109097602363430365",
    };
    return params;
end;

function export:OnEnter_box_StatisticIncrement_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticIncrement_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|395647338");
    l0:SetConnections({
    });
    params = {
        -- increment,
        [0] = 1,
        -- name,
        [1] = "General_TotalHostagesRescued",
        -- statisticDbObject,
        [2] = nil,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|519871194");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_43_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#FB3314DA",
        -- ToGroup,
        [1] = "#BEC33A93",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|670333757");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_26_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108321470032652046",
        -- Group,
        [1] = "2108321487610980308",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|774483463");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_52_Alive,
    });
    params = {
        -- Pawn,
        [0] = "2109097596443170236",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|868040075");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_24_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109096674396738836",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|924541497");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_41_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#FB3314DA",
        -- ToGroup,
        [1] = "#BEC33A93",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|980774902");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_44_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108321470032652046",
        -- Group,
        [1] = "2109097596443170236",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_45()
    local params;
    params = {
        -- displayId,
        [1] = {
            section = "Interactions",
            item = "INTERACTION_FREE_HOSTAGE",
            id = "730165",
        },
        -- usableEntity,
        [4] = "2109097596443170236",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1130009979");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1200530705");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_34_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#FB3314DA",
        -- ToGroup,
        [1] = "#BEC33A93",
    };
    return params;
end;

function export:OnEnter_box_StatisticIncrement_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticIncrement_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1462169881");
    l0:SetConnections({
    });
    params = {
        -- increment,
        [0] = 1,
        -- name,
        [1] = "General_TotalHostagesRescued",
        -- statisticDbObject,
        [2] = nil,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1602944451");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_33_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108309538162613200",
    };
    return params;
end;

function export:OnEnter_box_IsPawnAlive_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsPawnAlive_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsPawnAlive_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|1972015866");
    l0:SetConnections({
        -- Alive,
        [0] = self.f_box_IsPawnAlive_v3_50_Alive,
        -- DeadOrDown,
        [1] = self.f_box_IsPawnAlive_v3_50_DeadOrDown,
        -- NotLoaded,
        [2] = self.f_box_IsPawnAlive_v3_50_NotLoaded,
    });
    params = {
        -- Pawn,
        [0] = "2109097602363430365",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|2027876971");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_37_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109096697616405834",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B10.domino|@HostagesLiberationB10|2119032225");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_39_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108321470032652046",
        -- Group,
        [1] = "2109097602363430365",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Success()
    
end;
function export:Fail()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Fail" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Success" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eHost1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHost2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHost3" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHostMarker1" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHostMarker2" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eHostMarker3" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
