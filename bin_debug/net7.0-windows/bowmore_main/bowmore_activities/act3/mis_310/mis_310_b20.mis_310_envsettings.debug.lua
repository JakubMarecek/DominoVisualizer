LUAC�'  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_b20.domino
-- User graph: MIS_310_EnvSettings
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
        cboxRes:RegisterBox("Domino/System/ColorRemapTextureModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/mis_310_b20.MIS_310_EnvSettings.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ColorRemapTextureModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "colorRemapSettings",
                type = "genericdb",
            },
            [1] = {
                name = "playerGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/OverrideEnvironment_v3.lua")] = {
        stateless = true,
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
                name = "adaptiveBloom",
                type = "string",
            },
            [1] = {
                name = "atmosphericScattering",
                type = "string",
            },
            [2] = {
                name = "characterVisibility",
                type = "string",
            },
            [3] = {
                name = "cloud",
                type = "string",
            },
            [4] = {
                name = "depthOfField",
                type = "string",
            },
            [5] = {
                name = "exposure",
                type = "string",
            },
            [6] = {
                name = "fog",
                type = "string",
            },
            [7] = {
                name = "lighting",
                type = "string",
            },
            [8] = {
                name = "motionBlur",
                type = "string",
            },
            [9] = {
                name = "ratio",
                type = "float",
            },
            [10] = {
                name = "shadow",
                type = "string",
            },
            [11] = {
                name = "sky",
                type = "string",
            },
            [12] = {
                name = "stormFactor",
                type = "float",
            },
            [13] = {
                name = "transitionTime",
                type = "float",
            },
            [14] = {
                name = "wind",
                type = "string",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_310_EnvSettings";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_EnvSettings";
    self.Disabled = DummyFunction;
    self.Enabled = DummyFunction;
    self.box_ColorRemapTextureModifier_v3_2 = cbox:CreateBox("Domino/System/ColorRemapTextureModifier_v3.lua");
    l0 = self.box_ColorRemapTextureModifier_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ColorRemapTextureModifier_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_EnvSettings|360493387");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ColorRemapTextureModifier_v3_2_Added,
        -- Removed,
        [1] = self.f_box_ColorRemapTextureModifier_v3_2_Removed,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_1();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_EnvSettings|1398005536", "1398005536", "MIS_310_EnvSettings", "Disable", "box_OverrideEnvironment_v3_1.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_1();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_EnvSettings|343054976", "343054976", "MIS_310_EnvSettings", "Enable", "box_OverrideEnvironment_v3_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ColorRemapTextureModifier_v3_2_Added()
    local l0;
    l0 = self.box_ColorRemapTextureModifier_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_EnvSettings|195870708", "195870708", "MIS_310_EnvSettings", "box_ColorRemapTextureModifier_v3_2.Added", "Enabled", l0:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_ColorRemapTextureModifier_v3_2_Removed()
    local l0;
    l0 = self.box_ColorRemapTextureModifier_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_EnvSettings|870250758", "870250758", "MIS_310_EnvSettings", "box_ColorRemapTextureModifier_v3_2.Removed", "Disabled", l0:GetLuaBox(), self);
    self:Disabled();
end;

function export:f_box_OverrideEnvironment_v3_1_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_2();
    l0 = self.box_ColorRemapTextureModifier_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_EnvSettings|1467352572", "1467352572", "MIS_310_EnvSettings", "box_OverrideEnvironment_v3_1.Disabled", "box_ColorRemapTextureModifier_v3_2.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(1, params);
end;

function export:f_box_OverrideEnvironment_v3_1_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ColorRemapTextureModifier_v3_2();
    l0 = self.box_ColorRemapTextureModifier_v3_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_EnvSettings|673484914", "673484914", "MIS_310_EnvSettings", "box_OverrideEnvironment_v3_1.Enabled", "box_ColorRemapTextureModifier_v3_2.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:OnEnter_box_ColorRemapTextureModifier_v3_2()
    local params;
    DrawTextToScreen("Comment: ColorRemap", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ColorRemapTextureModifier_v3')-- Comment: ColorRemap");
    params = {
        -- colorRemapSettings,
        [0] = "9015351415057264",
        -- playerGroup,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\mis_310_b20.domino|@MIS_310_EnvSettings|647295532");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_OverrideEnvironment_v3_1_Disabled,
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_1_Enabled,
    });
    params = {
        -- characterVisibility,
        [2] = "Special:Fightclub_CharacterVisibility",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

-- Empty out anchor definitions
function export:Disabled()
    
end;
function export:Enabled()
    
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
