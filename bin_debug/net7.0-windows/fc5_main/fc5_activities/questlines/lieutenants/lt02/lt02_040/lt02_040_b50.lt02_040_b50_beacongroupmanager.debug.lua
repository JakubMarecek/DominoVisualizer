LUAC*;  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_040/lt02_040_b50.domino
-- User graph: LT02_040_B50_BeaconGroupManager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="gMasterGroup" Type="Nomad|group" />
    <DataIn Name="eAnchor" Type="Nomad|entity{}" />
    <DataIn Name="gLocalGroup" Type="Nomad|group" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_BeaconGroupManager.debug.lua")] = {
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
                name = "eAnchor",
                type = "entity",
            },
            [1] = {
                name = "gLocalGroup",
                type = "group",
            },
            [2] = {
                name = "gMasterGroup",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
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
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_040_B50_BeaconGroupManager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager";
    self.Enabled = DummyFunction;
    self.Disabled = DummyFunction;
    self.eCurrentEntity = nil;
    self.box_ProximityRadiusListener_v3_1 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|513845177");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_1_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_1_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_1_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_1_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_1_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_1_SomeoneNear,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_1();
    l0 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|392376779", "392376779", "LT02_040_B50_BeaconGroupManager", "Disable", "box_ProximityRadiusListener_v3_1.Disable", self, l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_1();
    l0 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|9597944", "9597944", "LT02_040_B50_BeaconGroupManager", "Enable", "box_ProximityRadiusListener_v3_1.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_1_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_1_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_1_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_1_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_1_Disabled()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|304160399", "304160399", "LT02_040_B50_BeaconGroupManager", "box_ProximityRadiusListener_v3_1.Disabled", "Disabled", l0:GetLuaBox(), self);
    self:Disabled();
end;

function export:f_box_ProximityRadiusListener_v3_1_Enabled()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|78576059", "78576059", "LT02_040_B50_BeaconGroupManager", "box_ProximityRadiusListener_v3_1.Enabled", "Enabled", l0:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_ProximityRadiusListener_v3_1_SomeoneFar()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_1_SomeoneFar();
    params = self:OnEnter_box_IsEntityInGroup_2();
    l0 = self.box_ProximityRadiusListener_v3_1;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|231729463", "231729463", "LT02_040_B50_BeaconGroupManager", "box_ProximityRadiusListener_v3_1.SomeoneFar", "box_IsEntityInGroup_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_1_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_1_SomeoneNear();
    params = self:OnEnter_box_GroupAddToGroup_v2_3();
    l0 = self.box_ProximityRadiusListener_v3_1;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|571035994", "571035994", "LT02_040_B50_BeaconGroupManager", "box_ProximityRadiusListener_v3_1.SomeoneNear", "box_GroupAddToGroup_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_2_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|980450066", "980450066", "LT02_040_B50_BeaconGroupManager", "box_IsEntityInGroup_2.True", "box_RemoveFromGroup_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ProximityRadiusListener_v3_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.gMasterGroup,
        -- farZone,
        [2] = 16,
        -- id2,
        [3] = self.eAnchor,
        -- nearZone,
        [4] = 15,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|668192550");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_2_True,
    });
    params = {
        -- Entity,
        [0] = self.eCurrentEntity,
        -- Group,
        [1] = self.gLocalGroup,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|835723910");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = self.eCurrentEntity,
        -- Group,
        [1] = self.gLocalGroup,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_BeaconGroupManager|1720290867");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = self.eCurrentEntity,
        -- ToGroup,
        [1] = self.gLocalGroup,
    };
    return params;
end;

function export:OnExit_box_ProximityRadiusListener_v3_1_AllFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_1;
    self.eCurrentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_1_AllNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_1;
    self.eCurrentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_1_SomeoneFar()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_1;
    self.eCurrentEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_1_SomeoneNear()
    local l0;
    l0 = self.box_ProximityRadiusListener_v3_1;
    self.eCurrentEntity = l0:GetDataOutValue(0);
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
	<DatasIn>
		<DataIn Name="eAnchor" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="gLocalGroup" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="gMasterGroup" AnchorDynType="0" DataTypeID="group" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
