LUAC�h -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c7/coast_c7_ctp_010_main.domino
-- User graph: Coast_C7_CTP_010_ContextualActions
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Coast_C7_CTP_010_Main = nil;
    Globals.Coast_C7_CTP_010_Main = {
        iC7Difficulty = 0,
        iDifficulty = 0,
        iPlayerSpawnPOIIndex = 0,
        iExtractionPOIID = 0,
        iPackagePositionID = 0,
        ePackageSpawner_OBSOLETEEEEEEEEE = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_ContextualActions.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Navlink_Vehicle_Jump",
            },
            [2] = {
                name = "Set_WatchingFight_STP",
            },
            [3] = {
                name = "Switch_CS_RaceCars_PKG_D",
            },
            [4] = {
                name = "Switch_CS_RaceCars_PKG_F",
            },
        },
        controlInCount = 5,
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
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
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
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "requiresPawnsActive",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C7_CTP_010_ContextualActions";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions";
    self.box_VehicleListener_v3_35 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|7211028");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_35_OnStandUp,
    });
    self.box_ProximityTrigger_v3_18 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|275892600");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_18_Enter,
    });
    self.box_MultipleAND_v2_7 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|355883587");
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
        [0] = self.f_box_MultipleAND_v2_7_Out,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|432782638");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|686597952");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_ProximityTrigger_v3_17 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|741877774");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_17_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_17_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_17_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_17_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_17_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_17_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_17_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_17_Use,
    });
    self.box_VehicleListener_v3_42 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|826696141");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_42_OnStandUp,
    });
    self.box_ProximityTrigger_v3_47 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1007259561");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_47_Enter,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1211515213");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_OnceOnly_v3_20 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1245348031");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_20_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_19 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1368732425");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_19_TimeElapsed,
    });
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1431697240");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_VehicleListener_v3_41 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1485659370");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_41_OnStandUp,
    });
    self.box_ContextualActionListener_1 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1492383470");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_1_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_1_Start,
    });
    self.box_VehicleListener_v3_34 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1567650955");
    l0:SetConnections({
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_34_OnStandUp,
    });
    self.box_ContextualActionListener_3 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1575017817");
    l0:SetConnections({
        -- End,
        [3] = self.f_box_ContextualActionListener_3_End,
        -- Start,
        [8] = self.f_box_ContextualActionListener_3_Start,
    });
    self.box_NavLinkModifier_46 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1633259633");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_46_Activated,
    });
    self.box_ProximityTrigger_v3_25 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1641997313");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_25_Enter,
    });
    self.box_ProximityTrigger_v3_27 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1779275356");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_27_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_27_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_27_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_27_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_27_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_27_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_27_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_27_Use,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1913428138");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_ProximityTrigger_v3_15 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1944487821");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_15_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_15_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_15_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_15_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_15_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_15_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_15_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_15_Use,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1946794835");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_EntityStatusListener_37 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|2070494322");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_37_Loaded,
    });
    self.box_MultipleAND_v2_2 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|2081068835");
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
        [0] = self.f_box_MultipleAND_v2_2_Out,
    });
end;

function export:In()
    
end;

function export:Navlink_Vehicle_Jump()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_37();
    l0 = self.box_EntityStatusListener_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|860100514", "860100514", "Coast_C7_CTP_010_ContextualActions", "Navlink_Vehicle_Jump", "box_EntityStatusListener_37.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:Set_WatchingFight_STP()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|2034594129", "2034594129", "Coast_C7_CTP_010_ContextualActions", "Set_WatchingFight_STP", "box_OutputOrder_v2_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Switch_CS_RaceCars_PKG_D()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1760296715", "1760296715", "Coast_C7_CTP_010_ContextualActions", "Switch_CS_RaceCars_PKG_D", "box_OutputOrder_v2_29.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Switch_CS_RaceCars_PKG_F()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1649940288", "1649940288", "Coast_C7_CTP_010_ContextualActions", "Switch_CS_RaceCars_PKG_F", "box_OutputOrder_v2_30.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_35_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_36();
    l0 = self.box_VehicleListener_v3_35;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|437564337", "437564337", "Coast_C7_CTP_010_ContextualActions", "box_VehicleListener_v3_35.OnStandUp", "box_SetContextualStrategy_36.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_34();
    l0 = self.box_VehicleListener_v3_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1979504436", "1979504436", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_33.Out", "box_VehicleListener_v3_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_35();
    l0 = self.box_VehicleListener_v3_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|203852444", "203852444", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_33.Out", "box_VehicleListener_v3_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_1();
    l0 = self.box_ContextualActionListener_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|500111211", "500111211", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_4.Out", "box_ContextualActionListener_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_3();
    l0 = self.box_ContextualActionListener_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|429520406", "429520406", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_4.Out", "box_ContextualActionListener_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_5_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|101439765", "101439765", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_5.Disabled", "box_UseContextualActionModifier_v3_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_5_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_8();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1442535630", "1442535630", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_5.Enabled", "box_UseContextualActionModifier_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_18_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_ProximityTrigger_v3_18;
    l1 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1517510266", "1517510266", "Coast_C7_CTP_010_ContextualActions", "box_ProximityTrigger_v3_18.Enter", "box_Delay_v5_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_10_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|916476652", "916476652", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_10.Disabled", "box_UseContextualActionModifier_v3_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_10_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1199728171", "1199728171", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_10.Enabled", "box_UseContextualActionModifier_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_9();
    l0 = self.box_MultipleAND_v2_7;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|948959278", "948959278", "Coast_C7_CTP_010_ContextualActions", "box_MultipleAND_v2_7.Out", "box_Print_v2_9.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_27();
    l0 = self.box_Delay_v5_26;
    l1 = self.box_ProximityTrigger_v3_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|403655713", "403655713", "Coast_C7_CTP_010_ContextualActions", "box_Delay_v5_26.TimeElapsed", "box_ProximityTrigger_v3_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_Delay_v5_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|561198890", "561198890", "Coast_C7_CTP_010_ContextualActions", "box_Delay_v5_31.TimeElapsed", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_17_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_13();
    l0 = self.box_ProximityTrigger_v3_17;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1837878958", "1837878958", "Coast_C7_CTP_010_ContextualActions", "box_ProximityTrigger_v3_17.Enter", "box_SetContextualStrategy_13.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_42_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_44();
    l0 = self.box_VehicleListener_v3_42;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|393435790", "393435790", "Coast_C7_CTP_010_ContextualActions", "box_VehicleListener_v3_42.OnStandUp", "box_SetContextualStrategy_44.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_6_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_5();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|582170566", "582170566", "Coast_C7_CTP_010_ContextualActions", "box_Print_v2_6.PrintedToScreen", "box_UseContextualActionModifier_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_11_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|2115907363", "2115907363", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_11.Disabled", "box_UseContextualActionModifier_v3_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_11_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|446206035", "446206035", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_11.Enabled", "box_UseContextualActionModifier_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_18();
    l0 = self.box_ProximityTrigger_v3_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|632827888", "632827888", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_29.Out", "box_ProximityTrigger_v3_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_19();
    l0 = self.box_Delay_v5_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1403355816", "1403355816", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_29.Out", "box_Delay_v5_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|158538482", "158538482", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_29.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_47_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_46();
    l0 = self.box_ProximityTrigger_v3_47;
    l1 = self.box_NavLinkModifier_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|864341662", "864341662", "Coast_C7_CTP_010_ContextualActions", "box_ProximityTrigger_v3_47.Enter", "box_NavLinkModifier_46.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1543827339", "1543827339", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_24.Out", "box_OnceOnly_v3_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|314231918", "314231918", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_24.Out", "box_Print_v2_23.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_38_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|2064452839", "2064452839", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_38.Disabled", "box_UseContextualActionModifier_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_38_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1975564007", "1975564007", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_38.Enabled", "box_UseContextualActionModifier_v3_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_14;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|308107710", "308107710", "Coast_C7_CTP_010_ContextualActions", "box_Delay_v5_14.TimeElapsed", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_20_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_15();
    l0 = self.box_OnceOnly_v3_20;
    l1 = self.box_ProximityTrigger_v3_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|659521240", "659521240", "Coast_C7_CTP_010_ContextualActions", "box_OnceOnly_v3_20.Out", "box_ProximityTrigger_v3_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_19_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_19;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1596174597", "1596174597", "Coast_C7_CTP_010_ContextualActions", "box_Delay_v5_19.TimeElapsed", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_45_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_41();
    l0 = self.box_VehicleListener_v3_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1798419015", "1798419015", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_45.Out", "box_VehicleListener_v3_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_45_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_42();
    l0 = self.box_VehicleListener_v3_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|566132519", "566132519", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_45.Out", "box_VehicleListener_v3_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_45();
    l0 = self.box_Delay_v5_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1316104282", "1316104282", "Coast_C7_CTP_010_ContextualActions", "box_Delay_v5_40.TimeElapsed", "box_OutputOrder_v2_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_25();
    l0 = self.box_ProximityTrigger_v3_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1084217280", "1084217280", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_30.Out", "box_ProximityTrigger_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|433780560", "433780560", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_30.Out", "box_Delay_v5_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VehicleListener_v3_41_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_43();
    l0 = self.box_VehicleListener_v3_41;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|2125660186", "2125660186", "Coast_C7_CTP_010_ContextualActions", "box_VehicleListener_v3_41.OnStandUp", "box_SetContextualStrategy_43.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_1_End()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_ContextualActionListener_1;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1300579044", "1300579044", "Coast_C7_CTP_010_ContextualActions", "box_ContextualActionListener_1.End", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_ContextualActionListener_1_Start()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_2();
    l0 = self.box_ContextualActionListener_1;
    l1 = self.box_MultipleAND_v2_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|859460578", "859460578", "Coast_C7_CTP_010_ContextualActions", "box_ContextualActionListener_1.Start", "box_MultipleAND_v2_2.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_VehicleListener_v3_34_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_32();
    l0 = self.box_VehicleListener_v3_34;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|202683427", "202683427", "Coast_C7_CTP_010_ContextualActions", "box_VehicleListener_v3_34.OnStandUp", "box_SetContextualStrategy_32.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_3_End()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_7();
    l0 = self.box_ContextualActionListener_3;
    l1 = self.box_MultipleAND_v2_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|857915164", "857915164", "Coast_C7_CTP_010_ContextualActions", "box_ContextualActionListener_3.End", "box_MultipleAND_v2_7.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ContextualActionListener_3_Start()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_2();
    l0 = self.box_ContextualActionListener_3;
    l1 = self.box_MultipleAND_v2_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|691008891", "691008891", "Coast_C7_CTP_010_ContextualActions", "box_ContextualActionListener_3.Start", "box_MultipleAND_v2_2.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_NavLinkModifier_46_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_47();
    l0 = self.box_NavLinkModifier_46;
    l1 = self.box_ProximityTrigger_v3_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1937031737", "1937031737", "Coast_C7_CTP_010_ContextualActions", "box_NavLinkModifier_46.Activated", "box_ProximityTrigger_v3_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_25_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_ProximityTrigger_v3_25;
    l1 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|575352336", "575352336", "Coast_C7_CTP_010_ContextualActions", "box_ProximityTrigger_v3_25.Enter", "box_Delay_v5_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v3_27_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_28();
    l0 = self.box_ProximityTrigger_v3_27;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1089137781", "1089137781", "Coast_C7_CTP_010_ContextualActions", "box_ProximityTrigger_v3_27.Enter", "box_SetContextualStrategy_28.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_9_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_5();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1963268736", "1963268736", "Coast_C7_CTP_010_ContextualActions", "box_Print_v2_9.PrintedToScreen", "box_UseContextualActionModifier_v3_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_8_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_38();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|486666377", "486666377", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_8.Disabled", "box_UseContextualActionModifier_v3_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_8_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_38();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|2109520132", "2109520132", "Coast_C7_CTP_010_ContextualActions", "box_UseContextualActionModifier_v3_8.Enabled", "box_UseContextualActionModifier_v3_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|121290403", "121290403", "Coast_C7_CTP_010_ContextualActions", "box_MultipleOR_21.Out", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_15_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_ProximityTrigger_v3_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1232812632", "1232812632", "Coast_C7_CTP_010_ContextualActions", "box_ProximityTrigger_v3_15.Enter", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_17();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_ProximityTrigger_v3_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1809396688", "1809396688", "Coast_C7_CTP_010_ContextualActions", "box_Delay_v5_39.TimeElapsed", "box_ProximityTrigger_v3_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_37_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_46();
    l0 = self.box_EntityStatusListener_37;
    l1 = self.box_NavLinkModifier_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|460160691", "460160691", "Coast_C7_CTP_010_ContextualActions", "box_EntityStatusListener_37.Loaded", "box_NavLinkModifier_46.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_6();
    l0 = self.box_MultipleAND_v2_2;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1918201443", "1918201443", "Coast_C7_CTP_010_ContextualActions", "box_MultipleAND_v2_2.Out", "box_Print_v2_6.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_16();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1189125559", "1189125559", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_12.Out", "box_SetContextualStrategy_16.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1340653695", "1340653695", "Coast_C7_CTP_010_ContextualActions", "box_OutputOrder_v2_12.Out", "box_Delay_v5_39.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:OnEnter_box_VehicleListener_v3_35()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#40EED223",
        -- vehicle,
        [4] = "2108814745600528111",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|58467818");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|80955174");
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

function export:OnEnter_box_SetContextualStrategy_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|167564799");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109590057085055613",
        -- Group,
        [1] = "#F2CAD05A",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|183250612");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2110139120834584069",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|274749551");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_5_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_5_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109394397224276216",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108908566694861329",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|311871089");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_10_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_10_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2110128455594036276",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_7()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 40,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|499637017");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v3_15;
    params = {
        -- ContextualStrategy,
        [0] = "2109588401486315843",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#D9E78399",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109588674957039165",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_42()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#D9E78399",
        -- vehicle,
        [4] = "2110264143463342140",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|833512930");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109975603835844922",
        -- Group,
        [1] = "#40EED223",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|835644906");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2110139081401834977",
        -- Group,
        [1] = "#D9E78399",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|874006647");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_6_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "blue",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "STP_Hangar_Boxing_Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|972269626");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_11_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_11_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2110128490165587117",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|984199779");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "2108925052459164109",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2110277978261822575",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1124671302");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1185824801");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v3_27;
    params = {
        -- ContextualStrategy,
        [0] = "2110264246412536414",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1200061652");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_38_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_38_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2110262934937538533",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1255601393");
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
        [8] = "[STP] - Racing Stopped",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1320947086");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v3_17;
    params = {
        -- ContextualStrategy,
        [0] = "2110239747738712306",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_19()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 420,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1379262978");
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
                [0] = self.f_box_OutputOrder_v2_45_Out_0,
                [1] = self.f_box_OutputOrder_v2_45_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1435589171");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_41()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#F2CAD05A",
        -- vehicle,
        [4] = "2108813977583622639",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_1()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109392825077488096",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_34()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#6BC381E0",
        -- vehicle,
        [4] = "2110234658693200595",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_3()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2109392825077488095",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1605930448");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109590889872498260",
        -- Group,
        [1] = "#6BC381E0",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_46()
    local params;
    params = {
        -- Entity,
        [0] = "2108770898537355398",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108908566694861329",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#6BC381E0",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2110264249042365101",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1857677383");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_9_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "blue",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "STP_Hangar_Boxing_Ended",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|1908252589");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_8_Disabled,
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_8_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109987645940569766",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = "#F2CAD05A",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109588590540379653",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108925052459164109",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_2()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_ContextualActions|2146925241");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
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
		<ControlIn Name="Navlink_Vehicle_Jump" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Set_WatchingFight_STP" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Switch_CS_RaceCars_PKG_D" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Switch_CS_RaceCars_PKG_F" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
