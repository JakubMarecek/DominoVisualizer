LUAC�L  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni35/uni35_002/uni35_002_brief_e3.domino
-- User graph: UNI35_002_BRIEF_E3
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI35/UNI35_002/UNI35_002_BRIEF_E3.UNI35_002_BRIEF_E3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Aborted",
                delayed = true,
            },
            [1] = {
                name = "Enabled",
                delayed = false,
            },
            [2] = {
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "Paused",
                delayed = true,
            },
            [4] = {
                name = "Resumed",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "eQCA_STP",
                type = "entity",
            },
            [2] = {
                name = "oObjective",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
            [2] = {
                name = "ShowHud",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
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
                name = "useAnims",
                type = "bool",
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
    self._name = "UNI35_002_BRIEF_E3";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3";
    self.character = nil;
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|510478582");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
    self.box_Brick_NarrativeQuickCinema_V3_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Narrative_QuickCinema.Brick_NarrativeQuickCinema_V3.debug.lua");
    l0 = self.box_Brick_NarrativeQuickCinema_V3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_NarrativeQuickCinema_V3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|651438790");
    l0:SetConnections({
        -- Finished,
        [2] = self.f_box_Brick_NarrativeQuickCinema_V3_5_Finished,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1111289543");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_CharacterLoadedIdListener_3 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1578680868");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_3_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_3_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_3_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_3_LoadedIdReceived,
    });
    self.box_NoWeaponMode_v3_9 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1669004099");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_9_OnEnter,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1973030200");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_3();
    l0 = self.box_CharacterLoadedIdListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1068238112", "1068238112", "UNI35_002_BRIEF_E3", "In", "box_CharacterLoadedIdListener_3.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1656407343", "1656407343", "UNI35_002_BRIEF_E3", "OnLeaveZone", "box_ActivityRetry_2.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1698847528", "1698847528", "UNI35_002_BRIEF_E3", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|764130667", "764130667", "UNI35_002_BRIEF_E3", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_NarrativeQuickCinema_V3_5_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_Brick_NarrativeQuickCinema_V3_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1401791146", "1401791146", "UNI35_002_BRIEF_E3", "box_Brick_NarrativeQuickCinema_V3_5.Finished", "box_ActivityEnd_7.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|214991540", "214991540", "UNI35_002_BRIEF_E3", "box_MultipleOR_1.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_CharacterLoadedIdListener_3_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_3_LoadedIdReceived();
    params = self:OnEnter_box_NoWeaponMode_v3_9();
    l0 = self.box_CharacterLoadedIdListener_3;
    l1 = self.box_NoWeaponMode_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|434501339", "434501339", "UNI35_002_BRIEF_E3", "box_CharacterLoadedIdListener_3.LoadedIdReceived", "box_NoWeaponMode_v3_9.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_NoWeaponMode_v3_9_OnEnter()
    local l0, l1;
    l0 = self.box_NoWeaponMode_v3_9;
    l1 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1347249312", "1347249312", "UNI35_002_BRIEF_E3", "box_NoWeaponMode_v3_9.OnEnter", "box_ActivityAcknowledgeGate_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_NarrativeQuickCinema_V3_5();
    l0 = self.box_ActivityInitialized_4;
    l1 = self.box_Brick_NarrativeQuickCinema_V3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|162778684", "162778684", "UNI35_002_BRIEF_E3", "box_ActivityInitialized_4.Out", "box_Brick_NarrativeQuickCinema_V3_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:OnEnter_box_Brick_NarrativeQuickCinema_V3_5()
    local params;
    params = {
        -- eNPC,
        [0] = self.character,
        -- oObjective,
        [2] = {
            section = "Objectives",
            item = "LT01_005_B35",
            id = "611819",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_2()
    local params, l0;
    DrawTextToScreen("Comment: SILENT FAIL - RETRY LATER", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityRetry')-- Comment: SILENT FAIL - RETRY LATER");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1465916204");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_3()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015202430234855",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_9()
    local params;
    params = {
        -- pawns,
        [0] = self.character,
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI35\\UNI35_002\\UNI35_002_BRIEF_E3.domino|@UNI35_002_BRIEF_E3|1701500321");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_3_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_3;
    self.character = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
