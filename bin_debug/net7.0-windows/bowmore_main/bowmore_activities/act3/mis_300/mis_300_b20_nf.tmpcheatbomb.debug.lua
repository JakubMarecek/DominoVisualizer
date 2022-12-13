LUAC<  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b20_nf.domino
-- User graph: TmpCheatBomb
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
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B20_nf = nil;
    Globals.MIS_300_B20_nf = {
        bHostage1Save = false,
        bHostage2Save = false,
        bHostage3Save = false,
        bHostageEnoughSaved = false,
        iNumberOfHostages = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B20_nf.TmpCheatBomb.debug.lua")] = {
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
    self._name = "TmpCheatBomb";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb";
    self.box_PhysicsModifier_9 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|64880485");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_3 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|541853101");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_3_Disabled,
    });
    self.box_VisibilityModifier_1 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|595336843");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_1_Disabled,
    });
    self.box_VisibilityModifier_5 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|722202035");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_5_Disabled,
    });
    self.box_PhysicsModifier_6 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|1231982883");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_2 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|1265365343");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_4 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|2027517848");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_8 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|2075840776");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_8_Disabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|1784181530", "1784181530", "TmpCheatBomb", "In", "box_OutputOrder_v2_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_1();
    l0 = self.box_VisibilityModifier_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|1827684299", "1827684299", "TmpCheatBomb", "box_OutputOrder_v2_7.Out", "box_VisibilityModifier_1.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_3();
    l0 = self.box_VisibilityModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|289533559", "289533559", "TmpCheatBomb", "box_OutputOrder_v2_7.Out", "box_VisibilityModifier_3.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_5();
    l0 = self.box_VisibilityModifier_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|1065015131", "1065015131", "TmpCheatBomb", "box_OutputOrder_v2_7.Out", "box_VisibilityModifier_5.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_8();
    l0 = self.box_VisibilityModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|349367804", "349367804", "TmpCheatBomb", "box_OutputOrder_v2_7.Out", "box_VisibilityModifier_8.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_3_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_4();
    l0 = self.box_VisibilityModifier_3;
    l1 = self.box_PhysicsModifier_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|971151872", "971151872", "TmpCheatBomb", "box_VisibilityModifier_3.Disabled", "box_PhysicsModifier_4.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_1_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_2();
    l0 = self.box_VisibilityModifier_1;
    l1 = self.box_PhysicsModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|708382162", "708382162", "TmpCheatBomb", "box_VisibilityModifier_1.Disabled", "box_PhysicsModifier_2.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_5_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_6();
    l0 = self.box_VisibilityModifier_5;
    l1 = self.box_PhysicsModifier_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|1470325528", "1470325528", "TmpCheatBomb", "box_VisibilityModifier_5.Disabled", "box_PhysicsModifier_6.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_8_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_9();
    l0 = self.box_VisibilityModifier_8;
    l1 = self.box_PhysicsModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|301615688", "301615688", "TmpCheatBomb", "box_VisibilityModifier_8.Disabled", "box_PhysicsModifier_9.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:OnEnter_box_PhysicsModifier_9()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108514421977389942",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B20_nf.domino|@TmpCheatBomb|153608258");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_3()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108435165735817936",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_1()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108435077410067149",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_5()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108435172396372691",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_6()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108435172396372691",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_2()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108435077410067149",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_4()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108435165735817936",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_8()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108514421977389942",
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
