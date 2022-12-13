LUAC�y  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d2/d2_outpost_02.domino
-- User graph: D2_Outpost_02_Cinematic
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_02.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_02.D2_Outpost_02_Cinematic.debug.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FadedOut",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bUseFadeInAtEnd",
                type = "bool",
            },
            [1] = {
                name = "CS_CINEMA_Outpost_Animals",
                type = "entity",
            },
            [2] = {
                name = "eSceneEntity",
                type = "entity",
            },
            [3] = {
                name = "IsFaithCelebration",
                type = "bool",
            },
            [4] = {
                name = "sSequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "TeleportDestination",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua")] = {
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
                name = "Global_Veh_List",
                type = "list",
            },
            [1] = {
                name = "Other_Group",
                type = "group",
            },
            [2] = {
                name = "Vehicle_Group",
                type = "group",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
        },
        controlOutCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "D2_Outpost_02_Cinematic";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic";
    self.Out = DummyFunction;
    self.box_VisibilityModifier_14 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|49329593");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_14_Disabled,
    });
    self.box_VisibilityModifier_23 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|231542888");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_23_Enabled,
    });
    self.box_Brick_Cult_Location_Cinematic_V2_Main_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Cinematic_V2_Main_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|413726392");
    l0:SetConnections({
        -- FadedOut,
        [0] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_10_FadedOut,
        -- Out,
        [1] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_10_Out,
    });
    self.box_VisibilityModifier_17 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|493904779");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_17_Enabled,
    });
    self.box_VisibilityModifier_15 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|549339566");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_15_Enabled,
    });
    self.box_VisibilityModifier_22 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|652291704");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_22_Disabled,
    });
    self.box_CultLocation_Cleanup_Manager_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua");
    l0 = self.box_CultLocation_Cleanup_Manager_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Cleanup_Manager_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|902535206");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_16 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|906568876");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_16_Enabled,
    });
    self.box_VisibilityModifier_12 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|983863376");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_12_Disabled,
    });
    self.box_VisibilityModifier_21 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1064655935");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_21_Disabled,
    });
    self.box_VisibilityModifier_13 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1309622444");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_13_Disabled,
    });
    self.box_VisibilityModifier_24 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1501367141");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_24_Enabled,
    });
    self.box_VisibilityModifier_20 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1575402886");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_20_Enabled,
    });
    self.box_VisibilityModifier_19 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1797605578");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_19_Disabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_VisibilityModifier_12();
    l0 = self.box_VisibilityModifier_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|448194006", "448194006", "D2_Outpost_02_Cinematic", "In", "box_VisibilityModifier_12.SetDisabled", self, l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_14_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_19();
    l0 = self.box_VisibilityModifier_14;
    l1 = self.box_VisibilityModifier_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1348635139", "1348635139", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_14.Disabled", "box_VisibilityModifier_19.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CultLocation_Cleanup_Manager_1();
    l0 = self.box_CultLocation_Cleanup_Manager_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1857680133", "1857680133", "D2_Outpost_02_Cinematic", "box_OutputOrder_v2_3.Out", "box_CultLocation_Cleanup_Manager_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_2();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|810422023", "810422023", "D2_Outpost_02_Cinematic", "box_OutputOrder_v2_3.Out", "box_SetContextualStrategy_2.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_VisibilityModifier_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1128488874", "1128488874", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_23.Enabled", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_10_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|242583977", "242583977", "D2_Outpost_02_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_10.FadedOut", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_15();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_10;
    l1 = self.box_VisibilityModifier_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|2100370596", "2100370596", "D2_Outpost_02_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_10.Out", "box_VisibilityModifier_15.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_16();
    l0 = self.box_VisibilityModifier_17;
    l1 = self.box_VisibilityModifier_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1712328854", "1712328854", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_17.Enabled", "box_VisibilityModifier_16.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_17();
    l0 = self.box_VisibilityModifier_15;
    l1 = self.box_VisibilityModifier_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1747783519", "1747783519", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_15.Enabled", "box_VisibilityModifier_17.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_22_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_10();
    l0 = self.box_VisibilityModifier_22;
    l1 = self.box_Brick_Cult_Location_Cinematic_V2_Main_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1185383775", "1185383775", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_22.Disabled", "box_Brick_Cult_Location_Cinematic_V2_Main_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_20();
    l0 = self.box_VisibilityModifier_16;
    l1 = self.box_VisibilityModifier_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|367702616", "367702616", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_16.Enabled", "box_VisibilityModifier_20.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_13();
    l0 = self.box_VisibilityModifier_12;
    l1 = self.box_VisibilityModifier_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|848631717", "848631717", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_12.Disabled", "box_VisibilityModifier_13.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_21_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_22();
    l0 = self.box_VisibilityModifier_21;
    l1 = self.box_VisibilityModifier_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|603446163", "603446163", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_21.Disabled", "box_VisibilityModifier_22.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_13_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_14();
    l0 = self.box_VisibilityModifier_13;
    l1 = self.box_VisibilityModifier_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1393308042", "1393308042", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_13.Disabled", "box_VisibilityModifier_14.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_24_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_23();
    l0 = self.box_VisibilityModifier_24;
    l1 = self.box_VisibilityModifier_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|522794868", "522794868", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_24.Enabled", "box_VisibilityModifier_23.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_24();
    l0 = self.box_VisibilityModifier_20;
    l1 = self.box_VisibilityModifier_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|635077720", "635077720", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_20.Enabled", "box_VisibilityModifier_24.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_19_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_21();
    l0 = self.box_VisibilityModifier_19;
    l1 = self.box_VisibilityModifier_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1955163334", "1955163334", "D2_Outpost_02_Cinematic", "box_VisibilityModifier_19.Disabled", "box_VisibilityModifier_21.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_4();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|747676863", "747676863", "D2_Outpost_02_Cinematic", "box_OutputOrder_v2_5.Out", "box_SetContextualStrategy_4.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1390328611", "1390328611", "D2_Outpost_02_Cinematic", "box_OutputOrder_v2_5.Out", "box_ActivityEnd_26.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_VisibilityModifier_14()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097583160490464765",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|161523992");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_23()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097484679794922909",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_10()
    local params;
    params = {
        -- bUseFadeInAtEnd,
        [0] = false,
        -- CS_CINEMA_Outpost_Animals,
        [1] = "2097759135719237741",
        -- eSceneEntity,
        [2] = "2098629609351294380",
        -- IsFaithCelebration,
        [3] = false,
        -- sSequenceFile,
        [4] = "sequences/zeta_main/sunrise_celebration/sunrise_celebration.seq",
        -- TeleportDestination,
        [5] = "2097758905923806933",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_17()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097583138139018745",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_15()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097583151707592187",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_22()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097484679794922911",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|835472384");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Cleanup_Manager_1()
    local params;
    params = {
        -- Global_Veh_List,
        [0] = PersistentGlobals.D2_Outpost_02.veh_list,
        -- Vehicle_Group,
        [2] = "#7EDF03D3",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_16()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097583160490464765",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_12()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097583151707592187",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_21()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097484679794922909",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_13()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097583138139018745",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1379382433");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#DC9391C5",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_24()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097484679794922911",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_20()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097704026853350620",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_19()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2097484679794922911",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|1978740434");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105737982179835542",
        -- Group,
        [1] = "#DC9391C5",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_02.domino|@D2_Outpost_02_Cinematic|2124632582");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
