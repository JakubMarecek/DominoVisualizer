LUAC�U  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_master/bowmore_ambiant.domino
-- User graph: Bowmore_Ambiant
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
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_Ambiant.Bowmore_Homebase_WindEffect_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_Ambiant.JanuaryDemo_Setup.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_Ambiant.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Bowmore_Ambiant = nil;
    Globals.Bowmore_Ambiant = {
        Church_Bell_sound_Hour_Check = 0,
        Church_Bell_Minute_Check = 0,
        gPlayerGroup = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_Ambiant.Bowmore_Ambiant.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_Ambiant.Bowmore_Homebase_WindEffect_Manager.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_Ambiant.JanuaryDemo_Setup.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Bowmore_Ambiant";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant";
    self.Church_Bell = 0;
    self.Church_Bell_Sound_Hour = 0;
    self.Church_Bell_Sound_Minute = 0;
    self.Church_Bell_Sound_Second = 0;
    self.iHour = 0;
    self.iMinutes = 0;
    self.Player_ID = nil;
    self.bIsPlayerCloseBell = false;
    self.box_JanuaryDemo_Setup_7 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_Ambiant.JanuaryDemo_Setup.debug.lua");
    l0 = self.box_JanuaryDemo_Setup_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JanuaryDemo_Setup_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|120822967");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_6 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|1052513410");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_6_Execute,
    });
    self.box_ConsoleCommand_v3_10 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|1286584668");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_10_Execute,
    });
    self.box_Bowmore_Homebase_WindEffect_Manager_12 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_Ambiant.Bowmore_Homebase_WindEffect_Manager.debug.lua");
    l0 = self.box_Bowmore_Homebase_WindEffect_Manager_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bowmore_Homebase_WindEffect_Manager_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|1784738570");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_3();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|1884760321", "1884760321", "Bowmore_Ambiant", "In", "box_GetPlayerGroup_v2_3.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_GetPlayerGroup_v2_3_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|1317752944", "1317752944", "Bowmore_Ambiant", "box_GetPlayerGroup_v2_3.Out", "box_OutputOrder_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|304119740", "304119740", "Bowmore_Ambiant", "box_SetActivityFact_9.Out", "box_Print_v2_11.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|412387733", "412387733", "Bowmore_Ambiant", "box_OutputOrder_v2_4.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Bowmore_Homebase_WindEffect_Manager_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|1016613799", "1016613799", "Bowmore_Ambiant", "box_OutputOrder_v2_4.Out", "box_Bowmore_Homebase_WindEffect_Manager_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_JanuaryDemo_Setup_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|1563776561", "1563776561", "Bowmore_Ambiant", "box_OutputOrder_v2_4.Out", "box_JanuaryDemo_Setup_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_4_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_6();
    l0 = self.box_ConsoleCommand_v3_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|29096214", "29096214", "Bowmore_Ambiant", "box_OutputOrder_v2_4.Out", "box_ConsoleCommand_v3_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_10();
    l0 = self.box_ConsoleCommand_v3_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|1204766426", "1204766426", "Bowmore_Ambiant", "box_OutputOrder_v2_4.Out", "box_ConsoleCommand_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_6_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_8();
    l0 = self.box_ConsoleCommand_v3_6;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|837401651", "837401651", "Bowmore_Ambiant", "box_ConsoleCommand_v3_6.Execute", "box_MissionBlockLayer_8.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_10_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_9();
    l0 = self.box_ConsoleCommand_v3_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|665757323", "665757323", "Bowmore_Ambiant", "box_ConsoleCommand_v3_10.Execute", "box_SetActivityFact_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_GetPlayerGroup_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|113363386");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_3_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|468536715");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_9_Out,
    });
    params = {
        -- Fact,
        [0] = "Encounter_Test",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_8()
    local params, l0;
    DrawTextToScreen("Comment: ACTIVATE FC5_DEBUG_LD_Intentions layer", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MissionBlockLayer')-- Comment: ACTIVATE FC5_DEBUG_LD_Intentions layer");
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|604726378");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "18152951936437122",
        -- missionLayerId,
        [1] = "27160212534580131",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|784659474");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [4] = self.f_box_OutputOrder_v2_4_Out_4,
                [5] = self.f_box_OutputOrder_v2_4_Out_5,
            },
            count = 8,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|831706703");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 30,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "DISABLE ALL PLAYER CAPTURE QUESTLINES",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_6()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "LD_Intentions",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_10()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "Encounter_Test",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@Bowmore_Ambiant|1939685727");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "BOWMORE AMBIANT Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    Globals.Bowmore_Ambiant.gPlayerGroup = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
