LUACd=  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/encounteractivity/e5/ea_e5_30.domino
-- User graph: EA_E5_30
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
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/EncounterActivity/E5/EA_E5_30.EA_E5_30.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
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
    self._name = "EA_E5_30";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30";
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|85796735");
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
    self.box_RemoveEntity_v2_11 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|160098788");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_11_Out,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|574798609");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_LookAtTrigger_v2_3 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|669860767");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_3_EnterFOV,
    });
    self.box_ActivityInitialized_2 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|746393251");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_2_Out,
    });
    self.box_RemoveEntity_v2_10 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|1326274910");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_10_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|449068163", "449068163", "EA_E5_30", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|1752734023", "1752734023", "EA_E5_30", "OnLeaveZone", "box_ActivityRetry_v2_1.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|1628122249", "1628122249", "EA_E5_30", "box_MultipleOR_6.Out", "box_ActivityInitialized_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_RemoveEntity_v2_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_RemoveEntity_v2_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|935601143", "935601143", "EA_E5_30", "box_RemoveEntity_v2_11.Out", "box_ActivityEnd_4.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|1719596066", "1719596066", "EA_E5_30", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|1387423363", "1387423363", "EA_E5_30", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_LookAtTrigger_v2_3_EnterFOV()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_10();
    l0 = self.box_LookAtTrigger_v2_3;
    l1 = self.box_RemoveEntity_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|2100369142", "2100369142", "EA_E5_30", "box_LookAtTrigger_v2_3.EnterFOV", "box_RemoveEntity_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_3();
    l0 = self.box_ActivityInitialized_2;
    l1 = self.box_LookAtTrigger_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|1130672213", "1130672213", "EA_E5_30", "box_ActivityInitialized_2.Out", "box_LookAtTrigger_v2_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_11();
    l0 = self.box_RemoveEntity_v2_10;
    l1 = self.box_RemoveEntity_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|952018053", "952018053", "EA_E5_30", "box_RemoveEntity_v2_10.Out", "box_RemoveEntity_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_RemoveEntity_v2_11()
    local params;
    params = {
        -- Group,
        [0] = "2109277994641051217",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|295900724");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\EncounterActivity\\E5\\EA_E5_30.domino|@EA_E5_30|385957353");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2108613203173845412",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_10()
    local params;
    params = {
        -- Group,
        [0] = "2109278000596962898",
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
