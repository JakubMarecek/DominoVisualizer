LUACVO  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/dbg/exp_swamp_dbg.domino
-- User graph: Helicopter
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
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/DBG/Exp_Swamp_DBG.Helicopter.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "PlayerGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Helicopter";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter";
    self.box_ConsoleCommand_v3_1 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|732254166");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_1_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_1_Execute,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|888920752");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_RemoveEntity_v2_2 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1177944080");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_5 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1221609298");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_5_Execute,
    });
    self.box_PhysicsModifier_3 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1331797913");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_4 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1676021543");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_4_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_4_Execute,
    });
    self.box_PhysicsModifier_6 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1779573050");
    l0:SetConnections({
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1827363805");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ConsoleCommand_v3_1();
    l0 = self.box_ConsoleCommand_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1524173431", "1524173431", "Helicopter", "In", "box_ConsoleCommand_v3_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_7_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_6();
    l0 = self.box_PhysicsModifier_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1025077327", "1025077327", "Helicopter", "box_GetPlayerGroup_v2_7.Out", "box_PhysicsModifier_6.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_4();
    l0 = self.box_ConsoleCommand_v3_1;
    l1 = self.box_ConsoleCommand_v3_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|387427883", "387427883", "Helicopter", "box_ConsoleCommand_v3_1.Enabled", "box_ConsoleCommand_v3_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_1_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_ConsoleCommand_v3_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|188018260", "188018260", "Helicopter", "box_ConsoleCommand_v3_1.Execute", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_3();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_PhysicsModifier_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1049758917", "1049758917", "Helicopter", "box_MultipleOR_9.Out", "box_PhysicsModifier_3.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_5_Execute()
    local l0, l1;
    l0 = self.box_ConsoleCommand_v3_5;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1774955333", "1774955333", "Helicopter", "box_ConsoleCommand_v3_5.Execute", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|2126327224", "2126327224", "Helicopter", "box_OutputOrder_v2_10.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|721022873", "721022873", "Helicopter", "box_OutputOrder_v2_10.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ConsoleCommand_v3_4_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_5();
    l0 = self.box_ConsoleCommand_v3_4;
    l1 = self.box_ConsoleCommand_v3_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1331381925", "1331381925", "Helicopter", "box_ConsoleCommand_v3_4.Enabled", "box_ConsoleCommand_v3_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_4_Execute()
    local l0, l1;
    l0 = self.box_ConsoleCommand_v3_4;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|215079410", "215079410", "Helicopter", "box_ConsoleCommand_v3_4.Execute", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_7();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|656716372", "656716372", "Helicopter", "box_MultipleOR_11.Out", "box_GetPlayerGroup_v2_7.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_2();
    l0 = self.box_RemoveEntity_v2_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|566451301", "566451301", "Helicopter", "box_OutputOrder_v2_8.Out", "box_RemoveEntity_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1942459362", "1942459362", "Helicopter", "box_OutputOrder_v2_8.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_GetPlayerGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|184193983");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_1()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "helicopter_remove",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_2()
    local params;
    params = {
        -- Group,
        [0] = "#89D8440A",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_5()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "helicopter_disablephys_player",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_3()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#475E503B",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1355799296");
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

function export:OnEnter_box_ConsoleCommand_v3_4()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "helicopter_disablephys_pilot",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Helicopter|1943407020");
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

function export:OnExit_box_GetPlayerGroup_v2_7_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_PhysicsModifier_6;
    l1:GetLuaBox().targets = l0:GetDataOutValue(0);
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
