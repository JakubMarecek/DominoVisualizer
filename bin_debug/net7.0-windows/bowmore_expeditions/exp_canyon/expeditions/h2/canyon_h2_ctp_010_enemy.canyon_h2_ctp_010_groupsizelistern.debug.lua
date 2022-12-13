LUACUs  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_enemy.domino
-- User graph: Canyon_H2_CTP_010_GroupSizeListern
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="npcGroupToListen" Type="Nomad|group" />
    <DataIn Name="vehicleGroupToListen" Type="Nomad|group" />
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
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/StringConcatenate_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_H2_CTP_010_Enemy = nil;
    Globals.Canyon_H2_CTP_010_Enemy = {
        iExtractionPOIIndex = 0,
        iPackagePositionIndex = 0,
        iDifficulty = 0,
        ePackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_GroupSizeListern.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Start",
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "npcGroupToListen",
                type = "group",
            },
            [1] = {
                name = "vehicleGroupToListen",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "npcGroupSize",
                type = "int",
            },
            [1] = {
                name = "vehicleGroupSize",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
                delayed = true,
            },
        },
        controlOutCount = 6,
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
    metadataTable[GetPathID("Domino/System/StringConcatenate_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "WithBoolean",
            },
            [1] = {
                name = "WithFloat",
            },
            [2] = {
                name = "WithInteger",
            },
            [3] = {
                name = "WithString",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Boolean",
                type = "bool",
            },
            [1] = {
                name = "Float",
                type = "float",
            },
            [2] = {
                name = "Input",
                type = "string",
            },
            [3] = {
                name = "Integer",
                type = "int",
            },
            [4] = {
                name = "String",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "Target",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_H2_CTP_010_GroupSizeListern";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern";
    self.Started = DummyFunction;
    self.Disabled = DummyFunction;
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|514375112");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_GroupSizeListener_v6_2 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|643190001");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_2_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_2_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_2_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_2_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_2_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_2_MemberSpawned,
    });
    self.box_GroupSizeListener_v6_4 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|710104016");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_4_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_4_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_4_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_4_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_4_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_4_MemberSpawned,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|870098553");
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
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|2036976907", "2036976907", "Canyon_H2_CTP_010_GroupSizeListern", "Disable", "box_OutputOrder_v2_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|1828350588", "1828350588", "Canyon_H2_CTP_010_GroupSizeListern", "Start", "box_OutputOrder_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StringConcatenate_v2_12_Out()
    local params, l0;
    self:OnExit_box_StringConcatenate_v2_12_Out();
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_13();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|963001803", "963001803", "Canyon_H2_CTP_010_GroupSizeListern", "box_StringConcatenate_v2_12.Out", "box_Print_v2_13.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StringConcatenate_v2_12();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|150308355", "150308355", "Canyon_H2_CTP_010_GroupSizeListern", "box_MultipleOR_1.Out", "box_StringConcatenate_v2_12.WithInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- WithInteger
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StringConcatenate_v2_3_Out()
    local params, l0;
    self:OnExit_box_StringConcatenate_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|831791758", "831791758", "Canyon_H2_CTP_010_GroupSizeListern", "box_StringConcatenate_v2_3.Out", "box_Print_v2_5.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_4();
    l0 = self.box_GroupSizeListener_v6_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|216961942", "216961942", "Canyon_H2_CTP_010_GroupSizeListern", "box_OutputOrder_v2_9.Out", "box_GroupSizeListener_v6_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_2();
    l0 = self.box_GroupSizeListener_v6_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|1184616326", "1184616326", "Canyon_H2_CTP_010_GroupSizeListern", "box_OutputOrder_v2_9.Out", "box_GroupSizeListener_v6_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_2_Enabled()
    self:OnExit_box_GroupSizeListener_v6_2_Enabled();
end;

function export:f_box_GroupSizeListener_v6_2_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_2_MemberAdded();
    l0 = self.box_GroupSizeListener_v6_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|1069762850", "1069762850", "Canyon_H2_CTP_010_GroupSizeListern", "box_GroupSizeListener_v6_2.MemberAdded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_2_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_2_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_2_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_2_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|705098701", "705098701", "Canyon_H2_CTP_010_GroupSizeListern", "box_GroupSizeListener_v6_2.MemberRemoved", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_2_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_2_MemberSpawned();
end;

function export:f_box_GroupSizeListener_v6_4_Disabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|1149859363", "1149859363", "Canyon_H2_CTP_010_GroupSizeListern", "box_GroupSizeListener_v6_4.Disabled", "Disabled", l0:GetLuaBox(), self);
    self:Disabled();
end;

function export:f_box_GroupSizeListener_v6_4_Enabled()
    local l0;
    self:OnExit_box_GroupSizeListener_v6_4_Enabled();
    l0 = self.box_GroupSizeListener_v6_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|30317296", "30317296", "Canyon_H2_CTP_010_GroupSizeListern", "box_GroupSizeListener_v6_4.Enabled", "Started", l0:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_GroupSizeListener_v6_4_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_4_MemberAdded();
    l0 = self.box_GroupSizeListener_v6_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|482024456", "482024456", "Canyon_H2_CTP_010_GroupSizeListern", "box_GroupSizeListener_v6_4.MemberAdded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_4_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_4_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_4_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_4_MemberRemoved();
    l0 = self.box_GroupSizeListener_v6_4;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|653942926", "653942926", "Canyon_H2_CTP_010_GroupSizeListern", "box_GroupSizeListener_v6_4.MemberRemoved", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v6_4_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_4_MemberSpawned();
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StringConcatenate_v2_3();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|1535329002", "1535329002", "Canyon_H2_CTP_010_GroupSizeListern", "box_MultipleOR_6.Out", "box_StringConcatenate_v2_3.WithInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- WithInteger
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_4();
    l0 = self.box_GroupSizeListener_v6_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|1830342748", "1830342748", "Canyon_H2_CTP_010_GroupSizeListern", "box_OutputOrder_v2_8.Out", "box_GroupSizeListener_v6_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_2();
    l0 = self.box_GroupSizeListener_v6_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|401851680", "401851680", "Canyon_H2_CTP_010_GroupSizeListern", "box_OutputOrder_v2_8.Out", "box_GroupSizeListener_v6_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Print_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|63660290");
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
        [8] = self._sld_Target_box_StringConcatenate_v2_12,
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_StringConcatenate_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StringConcatenate_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|138223322");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StringConcatenate_v2_12_Out,
    });
    l0 = self.box_GroupSizeListener_v6_2;
    params = {
        -- Input,
        [2] = "Current Vehicle Number: ",
        -- Integer,
        [3] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_StringConcatenate_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StringConcatenate_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|614789523");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StringConcatenate_v2_3_Out,
    });
    l0 = self.box_GroupSizeListener_v6_4;
    params = {
        -- Input,
        [2] = "Current Enemy Number: ",
        -- Integer,
        [3] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|619098057");
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

function export:OnEnter_box_GroupSizeListener_v6_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.vehicleGroupToListen,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_4()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.npcGroupToListen,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|1590911492");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_GroupSizeListern|1810597213");
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
        [8] = self._sld_Target_box_StringConcatenate_v2_3,
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnExit_box_StringConcatenate_v2_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    self._sld_Target_box_StringConcatenate_v2_12 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StringConcatenate_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    self._sld_Target_box_StringConcatenate_v2_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_2_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.vehicleGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.vehicleGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.vehicleGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.vehicleGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.vehicleGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_4_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_4;
    self.npcGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_4_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_4;
    self.npcGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_4_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_4;
    self.npcGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_4_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_4;
    self.npcGroupSize = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_4_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_4;
    self.npcGroupSize = l0:GetDataOutValue(1);
end;

-- Empty out anchor definitions
function export:Started()
    
end;
function export:Disabled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Disabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="npcGroupToListen" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="vehicleGroupToListen" AnchorDynType="0" DataTypeID="group" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="npcGroupSize" AnchorDynType="0" DataTypeID="int" />
		<DataOut Name="vehicleGroupSize" AnchorDynType="0" DataTypeID="int" />
	</DatasOut>
</DominoMetadata>
