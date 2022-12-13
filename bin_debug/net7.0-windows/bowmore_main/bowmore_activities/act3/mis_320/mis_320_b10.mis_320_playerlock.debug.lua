LUACL/  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b10.domino
-- User graph: MIS_320_PlayerLock
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
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b10.MIS_320_PlayerLock.debug.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/IgnoreSignal_v2.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "signal",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_320_PlayerLock";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock";
    self.Enabled = DummyFunction;
    self.Disabled = DummyFunction;
    self.box_IgnoreSignal_v2_1 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|348007816");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_1_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_1_Enabled,
    });
    self.box_IgnoreSignal_v2_4 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|715145838");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_4_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_4_Enabled,
    });
    self.box_PlayerSpeedModifier_v3_2 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|1106925148");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_2_ApplySpeedFactorOut,
        -- Stopped,
        [3] = self.f_box_PlayerSpeedModifier_v3_2_Stopped,
    });
    self.box_IgnoreSignal_v2_3 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|1890547603");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_IgnoreSignal_v2_3_Disabled,
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_3_Enabled,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_2();
    l0 = self.box_PlayerSpeedModifier_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|1682090300", "1682090300", "MIS_320_PlayerLock", "Disable", "box_PlayerSpeedModifier_v3_2.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_2();
    l0 = self.box_PlayerSpeedModifier_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|1405306837", "1405306837", "MIS_320_PlayerLock", "Enable", "box_PlayerSpeedModifier_v3_2.ApplySpeedFactor", self, l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_1_Disabled()
    local l0;
    l0 = self.box_IgnoreSignal_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|1288429275", "1288429275", "MIS_320_PlayerLock", "box_IgnoreSignal_v2_1.Disabled", "Disabled", l0:GetLuaBox(), self);
    self:Disabled();
end;

function export:f_box_IgnoreSignal_v2_1_Enabled()
    local l0;
    l0 = self.box_IgnoreSignal_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|876196058", "876196058", "MIS_320_PlayerLock", "box_IgnoreSignal_v2_1.Enabled", "Enabled", l0:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_IgnoreSignal_v2_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_3();
    l0 = self.box_IgnoreSignal_v2_4;
    l1 = self.box_IgnoreSignal_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|426857233", "426857233", "MIS_320_PlayerLock", "box_IgnoreSignal_v2_4.Disabled", "box_IgnoreSignal_v2_3.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_4_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_3();
    l0 = self.box_IgnoreSignal_v2_4;
    l1 = self.box_IgnoreSignal_v2_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|609322673", "609322673", "MIS_320_PlayerLock", "box_IgnoreSignal_v2_4.Enabled", "box_IgnoreSignal_v2_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayerSpeedModifier_v3_2_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_4();
    l0 = self.box_PlayerSpeedModifier_v3_2;
    l1 = self.box_IgnoreSignal_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|391452143", "391452143", "MIS_320_PlayerLock", "box_PlayerSpeedModifier_v3_2.ApplySpeedFactorOut", "box_IgnoreSignal_v2_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayerSpeedModifier_v3_2_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_4();
    l0 = self.box_PlayerSpeedModifier_v3_2;
    l1 = self.box_IgnoreSignal_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|2049710988", "2049710988", "MIS_320_PlayerLock", "box_PlayerSpeedModifier_v3_2.Stopped", "box_IgnoreSignal_v2_4.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_3_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_1();
    l0 = self.box_IgnoreSignal_v2_3;
    l1 = self.box_IgnoreSignal_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|1722015053", "1722015053", "MIS_320_PlayerLock", "box_IgnoreSignal_v2_3.Disabled", "box_IgnoreSignal_v2_1.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_IgnoreSignal_v2_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_1();
    l0 = self.box_IgnoreSignal_v2_3;
    l1 = self.box_IgnoreSignal_v2_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b10.domino|@MIS_320_PlayerLock|707705595", "707705595", "MIS_320_PlayerLock", "box_IgnoreSignal_v2_3.Enabled", "box_IgnoreSignal_v2_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_IgnoreSignal_v2_1()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "sprint",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_4()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "crouch",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_2()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_3()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Enabled()
    
end;
function export:Disabled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Disabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
