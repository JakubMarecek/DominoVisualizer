LUAC>E  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/agendas/uni34_e3_fakeagenda_despawnnpc.domino
-- User graph: UNI34_FakeAgenda
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
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/Agendas/UNI34_E3_FakeAgenda_DespawnNPC.UNI34_FakeAgenda.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI34_FakeAgenda";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda";
    self.Out = DummyFunction;
    self.eQuestGiver = nil;
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|234816590");
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
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|1117774782");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_ContextualActionListener_1 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|1350431685");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_1_Start,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|1387433089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_CharacterLoadedIdListener_4 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|1700877030");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_4_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_4_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_4_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_4_LoadedIdReceived,
    });
    self.box_EntityStatusListener_3 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|1831278814");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_3_Loaded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|857542753", "857542753", "UNI34_FakeAgenda", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|17503587", "17503587", "UNI34_FakeAgenda", "box_MultipleOR_6.Out", "box_ActivityInitialized_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|1005344518", "1005344518", "UNI34_FakeAgenda", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|884167637", "884167637", "UNI34_FakeAgenda", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ContextualActionListener_1_Start()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_ContextualActionListener_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|1885633308", "1885633308", "UNI34_FakeAgenda", "box_ContextualActionListener_1.Start", "box_ActivityEnd_2.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_4();
    l0 = self.box_ActivityInitialized_5;
    l1 = self.box_CharacterLoadedIdListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|1862190008", "1862190008", "UNI34_FakeAgenda", "box_ActivityInitialized_5.Out", "box_CharacterLoadedIdListener_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_4_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_4_LoadedIdReceived();
    params = self:OnEnter_box_EntityStatusListener_3();
    l0 = self.box_CharacterLoadedIdListener_4;
    l1 = self.box_EntityStatusListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|2028044658", "2028044658", "UNI34_FakeAgenda", "box_CharacterLoadedIdListener_4.LoadedIdReceived", "box_EntityStatusListener_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_3_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_1();
    l0 = self.box_EntityStatusListener_3;
    l1 = self.box_ContextualActionListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|2128998850", "2128998850", "UNI34_FakeAgenda", "box_EntityStatusListener_3.Loaded", "box_ContextualActionListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\Agendas\\UNI34_E3_FakeAgenda_DespawnNPC.domino|@UNI34_FakeAgenda|915768266");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_1()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2103969851176406500",
        -- UserFilter,
        [1] = self.eQuestGiver,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015201653466527",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969851176406500",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_4_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_4;
    self.eQuestGiver = l0:GetDataOutValue(0);
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
