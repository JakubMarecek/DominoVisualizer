LUAC�H  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_510/mis_510_hostage.domino
-- User graph: MIS_510_Hostage_MAIN
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_510/MIS_510_Hostage.MIS_510_Hostage_MAIN.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ForceRelease",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "HostageReleased",
                delayed = false,
            },
            [1] = {
                name = "NextHostage",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Hostage",
                type = "entity",
            },
            [1] = {
                name = "STP_Tied",
                type = "entity",
            },
        },
        dataInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_510_Hostage_MAIN";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN";
    self.box_Brick_Hostage_Setup_v2_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|190870425");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_1_HostageReleased,
    });
    self.box_Brick_Hostage_Setup_v2_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|345221275");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_3_HostageReleased,
    });
    self.box_Brick_Hostage_Setup_v2_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Hostage.Brick_Hostage_Setup_v2.debug.lua");
    l0 = self.box_Brick_Hostage_Setup_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Hostage_Setup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|1464132278");
    l0:SetConnections({
        -- HostageReleased,
        [0] = self.f_box_Brick_Hostage_Setup_v2_2_HostageReleased,
    });
    self.box_MultipleAND_v2_7 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|1869609420");
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
        [0] = self.f_box_MultipleAND_v2_7_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|107915423", "107915423", "MIS_510_Hostage_MAIN", "In", "box_OutputOrder_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Hostage_Setup_v2_1_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_Brick_Hostage_Setup_v2_1;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|721839036", "721839036", "MIS_510_Hostage_MAIN", "box_Brick_Hostage_Setup_v2_1.HostageReleased", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Brick_Hostage_Setup_v2_3_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_Brick_Hostage_Setup_v2_3;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|837303998", "837303998", "MIS_510_Hostage_MAIN", "box_Brick_Hostage_Setup_v2_3.HostageReleased", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_1();
    l0 = self.box_Brick_Hostage_Setup_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|1112680916", "1112680916", "MIS_510_Hostage_MAIN", "box_OutputOrder_v2_8.Out", "box_Brick_Hostage_Setup_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_2();
    l0 = self.box_Brick_Hostage_Setup_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|1023792084", "1023792084", "MIS_510_Hostage_MAIN", "box_OutputOrder_v2_8.Out", "box_Brick_Hostage_Setup_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Hostage_Setup_v2_3();
    l0 = self.box_Brick_Hostage_Setup_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|681807177", "681807177", "MIS_510_Hostage_MAIN", "box_OutputOrder_v2_8.Out", "box_Brick_Hostage_Setup_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Brick_Hostage_Setup_v2_2_HostageReleased()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_Brick_Hostage_Setup_v2_2;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|1789632236", "1789632236", "MIS_510_Hostage_MAIN", "box_Brick_Hostage_Setup_v2_2.HostageReleased", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|1209513353", "1209513353", "MIS_510_Hostage_MAIN", "box_OutputOrder_v2_10.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|1886575169", "1886575169", "MIS_510_Hostage_MAIN", "box_OutputOrder_v2_10.Out", "box_Print_v2_9.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_MultipleAND_v2_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|944811671", "944811671", "MIS_510_Hostage_MAIN", "box_MultipleAND_v2_7.Out", "box_ActivityEnd_4.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_1()
    local params;
    params = {
        -- Hostage,
        [0] = "2107437313580609295",
        -- STP_Tied,
        [1] = "2109497677619181002",
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_3()
    local params;
    params = {
        -- Hostage,
        [0] = "2107451731221691546",
        -- STP_Tied,
        [1] = "2109484652684134891",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|425156206");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Hostage_Setup_v2_2()
    local params;
    params = {
        -- Hostage,
        [0] = "2107437318020280101",
        -- STP_Tied,
        [1] = "2107437324963950397",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|1623217844");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|1675688488");
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

function export:OnEnter_box_MultipleAND_v2_7()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_510\\MIS_510_Hostage.domino|@MIS_510_Hostage_MAIN|2010133599");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_510_Hostage Started",
        -- useTimeTag,
        [9] = true,
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
