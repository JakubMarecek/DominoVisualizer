LUAC�F  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b50.domino
-- User graph: Set_Loot_Group_Content
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetLootGroup.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.INTRO_010_B50 = nil;
    Globals.INTRO_010_B50 = {
        TutorialPlayed = false,
        player = nil,
        Players = nil,
        bReloaded = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B50.Set_Loot_Group_Content.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/SetLootGroup.lua")] = {
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
                name = "LootGroup",
                type = "genericdb",
            },
            [1] = {
                name = "Targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Set_Loot_Group_Content";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content";
    self.box_SetLootGroup_9 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|170621026");
    l0:SetConnections({
    });
    self.box_SetLootGroup_10 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|666308965");
    l0:SetConnections({
    });
    self.box_SetLootGroup_8 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|731519466");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1145575453");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1215440298");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1217240307");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_SetLootGroup_2 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1224846845");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1295733375");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_SetLootGroup_6 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|2074647006");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_4 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|2136705247");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_4_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1642581647", "1642581647", "Set_Loot_Group_Content", "In", "box_OutputOrder_v2_11.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_4();
    l0 = self.box_EntityStatusListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1233374464", "1233374464", "Set_Loot_Group_Content", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|957213878", "957213878", "Set_Loot_Group_Content", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|2088271561", "2088271561", "Set_Loot_Group_Content", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|2074257808", "2074257808", "Set_Loot_Group_Content", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1289884240", "1289884240", "Set_Loot_Group_Content", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetLootGroup_8();
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_SetLootGroup_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1550140095", "1550140095", "Set_Loot_Group_Content", "box_EntityStatusListener_1.Loaded", "box_SetLootGroup_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetLootGroup_2();
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_SetLootGroup_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|433030682", "433030682", "Set_Loot_Group_Content", "box_EntityStatusListener_3.Loaded", "box_SetLootGroup_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetLootGroup_6();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_SetLootGroup_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|51021038", "51021038", "Set_Loot_Group_Content", "box_EntityStatusListener_5.Loaded", "box_SetLootGroup_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetLootGroup_10();
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_SetLootGroup_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|1901738575", "1901738575", "Set_Loot_Group_Content", "box_EntityStatusListener_7.Loaded", "box_SetLootGroup_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_4_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetLootGroup_9();
    l0 = self.box_EntityStatusListener_4;
    l1 = self.box_SetLootGroup_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|239436109", "239436109", "Set_Loot_Group_Content", "box_EntityStatusListener_4.Loaded", "box_SetLootGroup_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@Set_Loot_Group_Content|66288814");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
                [4] = self.f_box_OutputOrder_v2_11_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetLootGroup_9()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015281663705884",
        -- Targets,
        [1] = "2101287510331121433",
    };
    return params;
end;

function export:OnEnter_box_SetLootGroup_10()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015281663705884",
        -- Targets,
        [1] = "2103678212759394718",
    };
    return params;
end;

function export:OnEnter_box_SetLootGroup_8()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015281663705884",
        -- Targets,
        [1] = "2103678206428092828",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103678206428092828",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103678228976671136",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102708974060072004",
    };
    return params;
end;

function export:OnEnter_box_SetLootGroup_2()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015281663705884",
        -- Targets,
        [1] = "2103678228976671136",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103678212759394718",
    };
    return params;
end;

function export:OnEnter_box_SetLootGroup_6()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015281663705884",
        -- Targets,
        [1] = "2102708974060072004",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101287510331121433",
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
