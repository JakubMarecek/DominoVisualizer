LUAC�T  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_brief.domino
-- User graph: MIS_310_ArmPunchingMachine
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
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_brief.MIS_310_ArmPunchingMachine.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/MetaBreakableModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDamageable",
            },
            [1] = {
                name = "SetDisabled",
            },
            [2] = {
                name = "SetEnabled",
            },
            [3] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 4,
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
                name = "OnSetDamageable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUnDamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
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
    self._name = "MIS_310_ArmPunchingMachine";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine";
    self.Out = DummyFunction;
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|22897511");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_Bind_v4_1 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|352392413");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_1_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_1_UnBound,
    });
    self.box_PositionModifier_v2_3 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|512063554");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_3_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_3_StartOut,
    });
    self.box_Bind_v4_4 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1284829794");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_4_Bound,
        -- UnBound,
        [1] = self.f_box_Bind_v4_4_UnBound,
    });
    self.box_EntityStatusListener_6 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1459596596");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_6_Loaded,
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1855794430");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_7_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_MetaBreakableModifier_v2_2 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|2044445363");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1370181047", "1370181047", "MIS_310_ArmPunchingMachine", "In", "box_EntityStatusListener_7.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_4();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_Bind_v4_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1512028639", "1512028639", "MIS_310_ArmPunchingMachine", "box_EntityStatusListener_5.Loaded", "box_Bind_v4_4.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_1_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_3();
    l0 = self.box_Bind_v4_1;
    l1 = self.box_PositionModifier_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1557576210", "1557576210", "MIS_310_ArmPunchingMachine", "box_Bind_v4_1.Bound", "box_PositionModifier_v2_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_1_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_4();
    l0 = self.box_Bind_v4_1;
    l1 = self.box_Bind_v4_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1896234350", "1896234350", "MIS_310_ArmPunchingMachine", "box_Bind_v4_1.UnBound", "box_Bind_v4_4.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_3_Done()
    local l0;
    l0 = self.box_PositionModifier_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|928914560", "928914560", "MIS_310_ArmPunchingMachine", "box_PositionModifier_v2_3.Done", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_PositionModifier_v2_3_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_2();
    l0 = self.box_PositionModifier_v2_3;
    l1 = self.box_MetaBreakableModifier_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1011072742", "1011072742", "MIS_310_ArmPunchingMachine", "box_PositionModifier_v2_3.StartOut", "box_MetaBreakableModifier_v2_2.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_Bind_v4_4_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_1();
    l0 = self.box_Bind_v4_4;
    l1 = self.box_Bind_v4_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|2016756465", "2016756465", "MIS_310_ArmPunchingMachine", "box_Bind_v4_4.Bound", "box_Bind_v4_1.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Bind_v4_4_UnBound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_1();
    l0 = self.box_Bind_v4_4;
    l1 = self.box_Bind_v4_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1484001133", "1484001133", "MIS_310_ArmPunchingMachine", "box_Bind_v4_4.UnBound", "box_Bind_v4_1.UnBind", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnBind
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_6_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_6;
    l1 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|447944351", "447944351", "MIS_310_ArmPunchingMachine", "box_EntityStatusListener_6.Loaded", "box_EntityStatusListener_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_7_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_8();
    l0 = self.box_EntityStatusListener_7;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|959280680", "959280680", "MIS_310_ArmPunchingMachine", "box_EntityStatusListener_7.Enabled", "box_Print_v2_8.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_6();
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_EntityStatusListener_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|1108454952", "1108454952", "MIS_310_ArmPunchingMachine", "box_EntityStatusListener_7.Loaded", "box_EntityStatusListener_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109026013051649313",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_1()
    local params;
    params = {
        -- EntityA,
        [1] = "2108449111448505799",
        -- EntityB,
        [2] = "2109026013051649313",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_3()
    local params;
    DrawTextToScreen("Comment: MOVE THE PUNCHINGMACHINE TARGET UP !", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PositionModifier_v2')-- Comment: MOVE THE PUNCHINGMACHINE TARGET UP !");
    params = {
        -- blendTime,
        [1] = 0.1,
        -- endTarget,
        [4] = "2109111008543934355",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2108449111448505799",
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_brief.domino|@MIS_310_ArmPunchingMachine|792945499");
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
        [8] = "Prepare Punching machine",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_4()
    local params;
    params = {
        -- EntityA,
        [1] = "2108449111448505799",
        -- EntityB,
        [2] = "2109029386408704308",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109029386408704308",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108449111448505799",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_2()
    local params;
    params = {
        -- targets,
        [0] = "2109026013051649313",
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
