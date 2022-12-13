LUAC5S  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b12.domino
-- User graph: Boundaries
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="ePlayer" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerLookAtModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.Boundaries.debug.lua")] = {
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
            [0] = {
                name = "ePlayer",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Delay_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
            [2] = {
                name = "Start",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "LoopingEnded",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Resumed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Stopped",
                delayed = false,
            },
            [5] = {
                name = "TimeElapsed",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "loop",
                type = "bool",
            },
            [1] = {
                name = "nbLoop",
                type = "int",
            },
            [2] = {
                name = "seconds",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "currentLoop",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/PostFx_v3.lua")] = {
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
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "PostFxName",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerLookAtModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LookAtEntity",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendOutTime",
                type = "float",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "lockPlayer",
                type = "bool",
            },
            [3] = {
                name = "lockTime",
                type = "float",
            },
            [4] = {
                name = "lookTarget",
                type = "entity",
            },
            [5] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Boundaries";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries";
    self.PlayerWhoPassedTheBoundaries = nil;
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|760824969");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_PlayerLookAtModifier_v3_2 = cbox:CreateBox("Domino/System/PlayerLookAtModifier_v3.lua");
    l0 = self.box_PlayerLookAtModifier_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerLookAtModifier_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|988481357");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_PlayerLookAtModifier_v3_2_Started,
    });
    self.box_TeleportPawns_5 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|1303671946");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_5_Out,
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|1558143042");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_9_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_6 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|1960427405");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_6_SomeoneFar,
    });
    self.box_PostFx_v3_3 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|2087956975");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_3_Enabled,
    });
    self.box_PostFx_v3_7 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|2106775783");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_7_Disabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|1427381064", "1427381064", "Boundaries", "In", "box_Delay_v5_9.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PawnInvincibleState_v2_1_OnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerLookAtModifier_v3_2();
    l0 = self.box_PlayerLookAtModifier_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|126360753", "126360753", "Boundaries", "box_PawnInvincibleState_v2_1.OnSet", "box_PlayerLookAtModifier_v3_2.LookAtEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- LookAtEntity
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_5();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_TeleportPawns_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|849904248", "849904248", "Boundaries", "box_Delay_v5_8.TimeElapsed", "box_TeleportPawns_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayerLookAtModifier_v3_2_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_7();
    l0 = self.box_PlayerLookAtModifier_v3_2;
    l1 = self.box_PostFx_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|2146996240", "2146996240", "Boundaries", "box_PlayerLookAtModifier_v3_2.Started", "box_PostFx_v3_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_TeleportPawns_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_1();
    l0 = self.box_TeleportPawns_5;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|1549809661", "1549809661", "Boundaries", "box_TeleportPawns_5.Out", "box_PawnInvincibleState_v2_1.SetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInvincible
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_6();
    l0 = self.box_Delay_v5_9;
    l1 = self.box_ProximityRadiusListener_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|322066268", "322066268", "Boundaries", "box_Delay_v5_9.Started", "box_ProximityRadiusListener_v3_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_6();
    l0 = self.box_Delay_v5_9;
    l1 = self.box_ProximityRadiusListener_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|1982441619", "1982441619", "Boundaries", "box_Delay_v5_9.TimeElapsed", "box_ProximityRadiusListener_v3_6.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_6_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_3();
    l0 = self.box_ProximityRadiusListener_v3_6;
    l1 = self.box_PostFx_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|1964362967", "1964362967", "Boundaries", "box_ProximityRadiusListener_v3_6.SomeoneFar", "box_PostFx_v3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_PostFx_v3_3;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|1197698320", "1197698320", "Boundaries", "box_PostFx_v3_3.Enabled", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PostFx_v3_7_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_4();
    l0 = self.box_PostFx_v3_7;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|550376375", "550376375", "Boundaries", "box_PostFx_v3_7.Disabled", "box_PawnInvincibleState_v2_4.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_PawnInvincibleState_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|505411099");
    l0:SetConnections({
    });
    params = {
        -- Pawn,
        [0] = self.ePlayer,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@Boundaries|636270780");
    l0:SetConnections({
        -- OnSet,
        [0] = self.f_box_PawnInvincibleState_v2_1_OnSet,
    });
    params = {
        -- Pawn,
        [0] = self.ePlayer,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlayerLookAtModifier_v3_2()
    local params;
    params = {
        -- blendOutTime,
        [0] = 0,
        -- blendTime,
        [1] = 0,
        -- lockPlayer,
        [2] = false,
        -- lockTime,
        [3] = 3,
        -- lookTarget,
        [4] = "2103606862063610020",
        -- Pawns,
        [5] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_5()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "2104853421648533636",
        -- Destination,
        [1] = "2104840987607047574",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = self.ePlayer,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.ePlayer,
        -- farZone,
        [2] = 15,
        -- id2,
        [3] = "2103606862063610020",
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_3()
    local params;
    params = {
        -- Pawns,
        [0] = self.ePlayer,
        -- PostFxName,
        [1] = "faithwhitetoblack",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_7()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "faithwhitetoblack",
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
	<DatasIn>
		<DataIn Name="ePlayer" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
