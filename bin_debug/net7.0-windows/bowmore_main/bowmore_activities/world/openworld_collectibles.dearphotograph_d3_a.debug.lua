LUAC�U  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/world/openworld_collectibles.domino
-- User graph: DearPhotograph_D3_A
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
        cboxRes:RegisterBox("Domino/Library/Lib_Brick_DearPhotograph.Brick_DearPhotograph_CORE.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayerSelectedHoldableObject.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/World/OpenWorld_Collectibles.DearPhotograph_D3_A.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Lib_Brick_DearPhotograph.Brick_DearPhotograph_CORE.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "CelebrationEnded",
                delayed = false,
            },
            [1] = {
                name = "CelebrationStarted",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "eLookAt",
                type = "entity",
            },
            [1] = {
                name = "eMarker",
                type = "entity",
            },
            [2] = {
                name = "ePosition",
                type = "entity",
            },
            [3] = {
                name = "fFeedbackThreshold",
                type = "float",
            },
            [4] = {
                name = "fPositionThreshold",
                type = "float",
            },
            [5] = {
                name = "ItemDescriptor",
                type = "genericdb",
            },
            [6] = {
                name = "Objective",
                type = "oasis",
            },
            [7] = {
                name = "RequiresAdditionalStep",
                type = "bool",
            },
            [8] = {
                name = "RequiresObjective",
                type = "bool",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
            },
            [2] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [3] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
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
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/PlayerSelectedHoldableObject.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetSelectedHoldableObject",
            },
            [1] = {
                name = "SetSelectedHoldableObject",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "SelectedHoldableObjectReset",
                delayed = false,
            },
            [1] = {
                name = "SelectedHoldableObjectSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "Player",
                type = "entity",
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
    self._name = "DearPhotograph_D3_A";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A";
    self.box_Brick_DearPhotograph_CORE_2 = cbox:CreateBox("Domino/Library/Lib_Brick_DearPhotograph.Brick_DearPhotograph_CORE.debug.lua");
    l0 = self.box_Brick_DearPhotograph_CORE_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_DearPhotograph_CORE_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|316868555");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Brick_DearPhotograph_CORE_2_Success,
    });
    self.box_PlayerSelectedHoldableObject_9 = cbox:CreateBox("Domino/System/Player/PlayerSelectedHoldableObject.lua");
    l0 = self.box_PlayerSelectedHoldableObject_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSelectedHoldableObject_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|377737360");
    l0:SetConnections({
        -- SelectedHoldableObjectReset,
        [0] = self.f_box_PlayerSelectedHoldableObject_9_SelectedHoldableObjectReset,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1116757128");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1264243343");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1380337071");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_ExitZoneWarningListener_v3_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|2093682341");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_8_FailingZoneEntered,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|541860049", "541860049", "DearPhotograph_D3_A", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Brick_DearPhotograph_CORE_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_Brick_DearPhotograph_CORE_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|781657288", "781657288", "DearPhotograph_D3_A", "box_Brick_DearPhotograph_CORE_2.Success", "box_ActivityEnd_7.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerSelectedHoldableObject_9_SelectedHoldableObjectReset()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_6();
    l0 = self.box_PlayerSelectedHoldableObject_9;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1712819933", "1712819933", "DearPhotograph_D3_A", "box_PlayerSelectedHoldableObject_9.SelectedHoldableObjectReset", "box_ActivityRetry_v2_6.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|65074178", "65074178", "DearPhotograph_D3_A", "box_MultipleOR_5.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|2075121470", "2075121470", "DearPhotograph_D3_A", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1365146020", "1365146020", "DearPhotograph_D3_A", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1369430770", "1369430770", "DearPhotograph_D3_A", "box_ActivityInitialized_1.Out", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_DearPhotograph_CORE_2();
    l0 = self.box_Brick_DearPhotograph_CORE_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1902889440", "1902889440", "DearPhotograph_D3_A", "box_OutputOrder_v2_4.Out", "box_Brick_DearPhotograph_CORE_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_8();
    l0 = self.box_ExitZoneWarningListener_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|548860180", "548860180", "DearPhotograph_D3_A", "box_OutputOrder_v2_4.Out", "box_ExitZoneWarningListener_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ExitZoneWarningListener_v3_8_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSelectedHoldableObject_9();
    l0 = self.box_ExitZoneWarningListener_v3_8;
    l1 = self.box_PlayerSelectedHoldableObject_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1726833686", "1726833686", "DearPhotograph_D3_A", "box_ExitZoneWarningListener_v3_8.FailingZoneEntered", "box_PlayerSelectedHoldableObject_9.ResetSelectedHoldableObject", l0:GetLuaBox(), l1:GetLuaBox());
    -- ResetSelectedHoldableObject
    l1:Exec(0, params);
end;

function export:OnEnter_box_Brick_DearPhotograph_CORE_2()
    local params;
    params = {
        -- eLookAt,
        [0] = "2109066514064745602",
        -- eMarker,
        [1] = "2109066491356783742",
        -- ePosition,
        [2] = "2109066504013096064",
        -- fFeedbackThreshold,
        [3] = 3,
        -- fPositionThreshold,
        [4] = 3,
        -- ItemDescriptor,
        [5] = "9015339749294925",
        -- Objective,
        [6] = {
            section = "BIRCK_DearPhotograph",
            item = "BRICK_DearPhoto_OBJ",
            id = "373024",
        },
        -- RequiresAdditionalStep,
        [7] = false,
        -- RequiresObjective,
        [8] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayerSelectedHoldableObject_9()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015339749294925",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1111073053");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    DrawTextToScreen("Comment: TEST", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityEnd')-- Comment: TEST");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1506706171");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\World\\OpenWorld_Collectibles.domino|@DearPhotograph_D3_A|1850410656");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_8()
    local params;
    params = {
        -- bShowUI,
        [0] = false,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2109066460740461690",
    };
    return params;
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
