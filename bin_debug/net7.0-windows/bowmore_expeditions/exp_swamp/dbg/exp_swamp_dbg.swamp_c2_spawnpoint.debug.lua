LUAC7<  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/dbg/exp_swamp_dbg.domino
-- User graph: Swamp_C2_SpawnPoint
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
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/DBG/Exp_Swamp_DBG.Swamp_C2_SpawnPoint.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Swamp_C2_SpawnPoint";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint";
    self.box_TeleportPawns_8 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|758040116");
    l0:SetConnections({
    });
    self.box_TeleportPawns_7 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|780919257");
    l0:SetConnections({
    });
    self.box_TeleportPawns_3 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|1624037199");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_4 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|1821099110");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_4_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_4_Execute,
    });
    self.box_ConsoleCommand_v3_1 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|1869599260");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_1_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_1_Execute,
    });
    self.box_ConsoleCommand_v3_5 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|2044408755");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_5_Execute,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ConsoleCommand_v3_1();
    l0 = self.box_ConsoleCommand_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|1496458820", "1496458820", "Swamp_C2_SpawnPoint", "In", "box_ConsoleCommand_v3_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_9_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_8();
    l0 = self.box_TeleportPawns_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|1415192986", "1415192986", "Swamp_C2_SpawnPoint", "box_IsEntityLoaded_v3_9.True", "box_TeleportPawns_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_2_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_3();
    l0 = self.box_TeleportPawns_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|932565577", "932565577", "Swamp_C2_SpawnPoint", "box_IsEntityLoaded_v3_2.True", "box_TeleportPawns_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_4_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_5();
    l0 = self.box_ConsoleCommand_v3_4;
    l1 = self.box_ConsoleCommand_v3_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|1124227908", "1124227908", "Swamp_C2_SpawnPoint", "box_ConsoleCommand_v3_4.Enabled", "box_ConsoleCommand_v3_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_4_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_6();
    l0 = self.box_ConsoleCommand_v3_4;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|1147448849", "1147448849", "Swamp_C2_SpawnPoint", "box_ConsoleCommand_v3_4.Execute", "box_IsEntityLoaded_v3_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_4();
    l0 = self.box_ConsoleCommand_v3_1;
    l1 = self.box_ConsoleCommand_v3_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|1847740150", "1847740150", "Swamp_C2_SpawnPoint", "box_ConsoleCommand_v3_1.Enabled", "box_ConsoleCommand_v3_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_1_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_2();
    l0 = self.box_ConsoleCommand_v3_1;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|2065739766", "2065739766", "Swamp_C2_SpawnPoint", "box_ConsoleCommand_v3_1.Execute", "box_IsEntityLoaded_v3_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_5_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_9();
    l0 = self.box_ConsoleCommand_v3_5;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|581400575", "581400575", "Swamp_C2_SpawnPoint", "box_ConsoleCommand_v3_5.Execute", "box_IsEntityLoaded_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_6_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_7();
    l0 = self.box_TeleportPawns_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|2063207272", "2063207272", "Swamp_C2_SpawnPoint", "box_IsEntityLoaded_v3_6.True", "box_TeleportPawns_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnEnter_box_IsEntityLoaded_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|471483858");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_9_True,
    });
    params = {
        -- entityId,
        [0] = "2107152551360070536",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|709720620");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_2_True,
    });
    params = {
        -- entityId,
        [0] = "2107152547073491844",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_8()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107152551360070536",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_7()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107152549208392582",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_3()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107152547073491844",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_4()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "C2_SpawnPoint_MoveToB",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_1()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "C2_SpawnPoint_MoveToA",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_5()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "C2_SpawnPoint_MoveToC",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@Swamp_C2_SpawnPoint|2052803654");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_6_True,
    });
    params = {
        -- entityId,
        [0] = "2107152549208392582",
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
