LUAC/A  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/dbg/exp_swamp_dbg.domino
-- User graph: UI
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
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/DBG/Exp_Swamp_DBG.UI.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AreaMessage",
            },
            [1] = {
                name = "Cinematic",
            },
            [2] = {
                name = "Compass",
            },
            [3] = {
                name = "DetectionMeter",
            },
            [4] = {
                name = "EnergyGauge",
            },
            [5] = {
                name = "Health",
            },
            [6] = {
                name = "HelmetMask",
            },
            [7] = {
                name = "Hiring",
            },
            [8] = {
                name = "HudActivityStatus",
            },
            [9] = {
                name = "HudAutodriveStatus",
            },
            [10] = {
                name = "HudChallenge",
            },
            [11] = {
                name = "HudDiscovery",
            },
            [12] = {
                name = "HudGunsForHire",
            },
            [13] = {
                name = "HudHint",
            },
            [14] = {
                name = "HudLocationDiscovery",
            },
            [15] = {
                name = "HudNewCharacterDiscovery",
            },
            [16] = {
                name = "HudNotifGFH",
            },
            [17] = {
                name = "HudNotificationsQueue",
            },
            [18] = {
                name = "HudNotificationsQueueCenterMessage",
            },
            [19] = {
                name = "HudNotificationsQueueDiscovery",
            },
            [20] = {
                name = "HudNotificationsQueueGMS",
            },
            [21] = {
                name = "HudNotificationsQueuePlayerPoints",
            },
            [22] = {
                name = "HudNotificationsQueueWarning",
            },
            [23] = {
                name = "HudObjective",
            },
            [24] = {
                name = "HudObjectiveRewards",
            },
            [25] = {
                name = "HudOpenWorld",
            },
            [26] = {
                name = "HudOutpostSuccess",
            },
            [27] = {
                name = "HudPerkPoints",
            },
            [28] = {
                name = "HudSurvivalInstinct",
            },
            [29] = {
                name = "Interaction",
            },
            [30] = {
                name = "Looting",
            },
            [31] = {
                name = "MissionGiver",
            },
            [32] = {
                name = "ObjectiveProgress",
            },
            [33] = {
                name = "ObjectiveTracked",
            },
            [34] = {
                name = "PlayerBuffs",
            },
            [35] = {
                name = "RepairBar",
            },
            [36] = {
                name = "Reputation",
            },
            [37] = {
                name = "Reticle",
            },
            [38] = {
                name = "Tag",
            },
            [39] = {
                name = "TopCenterTimer",
            },
            [40] = {
                name = "TrackedMaterials",
            },
            [41] = {
                name = "Tutorial",
            },
        },
        controlInCount = 42,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "disableUI",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UI";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI";
    self.box_ConsoleCommand_v3_5 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|150407787");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ConsoleCommand_v3_5_Enabled,
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_5_Execute,
    });
    self.box_ConsoleCommand_v3_3 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|559117833");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_3_Execute,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ConsoleCommand_v3_5();
    l0 = self.box_ConsoleCommand_v3_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|985235550", "985235550", "UI", "In", "box_ConsoleCommand_v3_5.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_3();
    l0 = self.box_ConsoleCommand_v3_5;
    l1 = self.box_ConsoleCommand_v3_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|1886521074", "1886521074", "UI", "box_ConsoleCommand_v3_5.Enabled", "box_ConsoleCommand_v3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_5_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_ConsoleCommand_v3_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|102079740", "102079740", "UI", "box_ConsoleCommand_v3_5.Execute", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ConsoleCommand_v3_3_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_ConsoleCommand_v3_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|1430798162", "1430798162", "UI", "box_ConsoleCommand_v3_3.Execute", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_6();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|377484700", "377484700", "UI", "box_OutputOrder_v2_4.Out", "box_OverrideDisabledLogicId_6.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_6();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|1002942919", "1002942919", "UI", "box_OutputOrder_v2_4.Out", "box_OverrideDisabledLogicId_6.HudNewCharacterDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNewCharacterDiscovery
    l0:Exec(15, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_6();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|1097021706", "1097021706", "UI", "box_OutputOrder_v2_4.Out", "box_OverrideDisabledLogicId_6.HudDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudDiscovery
    l0:Exec(11, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_1();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|450251628", "450251628", "UI", "box_OutputOrder_v2_2.Out", "box_OverrideDisabledLogicId_1.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_1();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|159808793", "159808793", "UI", "box_OutputOrder_v2_2.Out", "box_OverrideDisabledLogicId_1.HudNewCharacterDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNewCharacterDiscovery
    l0:Exec(15, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_1();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|1294200631", "1294200631", "UI", "box_OutputOrder_v2_2.Out", "box_OverrideDisabledLogicId_1.HudDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudDiscovery
    l0:Exec(11, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ConsoleCommand_v3_5()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "ui_intel_notification_disable",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_3()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "ui_intel_notification_enable",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|742694484");
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
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
                [2] = self.f_box_OutputOrder_v2_4_Out_2,
                [3] = self.f_box_OutputOrder_v2_4_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|1073977108");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|1373972304");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\DBG\\Exp_Swamp_DBG.domino|@UI|1850036230");
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
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
            },
            count = 4,
        },
    });
    params = {
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
