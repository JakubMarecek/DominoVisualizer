LUAC�O  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_homebase/home_upg01.domino
-- User graph: HOME_UPG01_AltBRIEF
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.HOME_UPG01 = nil;
    Globals.HOME_UPG01 = {
        SpecialistsCount = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Homebase/HOME_UPG01.HOME_UPG01_AltBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener_v2.lua")] = {
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
                name = "PreconditionMet",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "PreconditionId",
                type = "database",
            },
            [2] = {
                name = "TestOnEnable",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
            },
        },
        dataInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "HOME_UPG01_AltBRIEF";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF";
    self.box_PreconditionListener_v2_6 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|160782033");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PreconditionListener_v2_6_Enabled,
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_6_PreconditionMet,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1471603589");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_MessageListener_v3_7 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1580707717");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_7_Received,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1749448695");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1853412318");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1222464496", "1222464496", "HOME_UPG01_AltBRIEF", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|375590818", "375590818", "HOME_UPG01_AltBRIEF", "OnLeaveZone", "box_ActivityRetry_v2_1.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_6_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_7();
    l0 = self.box_PreconditionListener_v2_6;
    l1 = self.box_MessageListener_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1080040432", "1080040432", "HOME_UPG01_AltBRIEF", "box_PreconditionListener_v2_6.Enabled", "box_MessageListener_v3_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PreconditionListener_v2_6_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_PreconditionListener_v2_6;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1816637721", "1816637721", "HOME_UPG01_AltBRIEF", "box_PreconditionListener_v2_6.PreconditionMet", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|903627060", "903627060", "HOME_UPG01_AltBRIEF", "box_SetActivityFact_8.Out", "box_Print_v2_9.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|2014082497", "2014082497", "HOME_UPG01_AltBRIEF", "box_MultipleOR_2.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MessageListener_v3_7_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_8();
    l0 = self.box_MessageListener_v3_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|723862227", "723862227", "HOME_UPG01_AltBRIEF", "box_MessageListener_v3_7.Received", "box_SetActivityFact_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PreconditionListener_v2_6();
    l0 = self.box_ActivityInitialized_4;
    l1 = self.box_PreconditionListener_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|334208147", "334208147", "HOME_UPG01_AltBRIEF", "box_ActivityInitialized_4.Out", "box_PreconditionListener_v2_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|639765605", "639765605", "HOME_UPG01_AltBRIEF", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1568956061", "1568956061", "HOME_UPG01_AltBRIEF", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_PreconditionListener_v2_6()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015332764478949",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|256231048");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "homebaseupgradedone",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|509332911");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1093522818");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\HOME_UPG01.domino|@HOME_UPG01_AltBRIEF|1231907096");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_8_Out,
    });
    params = {
        -- Fact,
        [0] = "homebaseupgradedone",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "homebaseupgradedone",
    };
    return params;
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
