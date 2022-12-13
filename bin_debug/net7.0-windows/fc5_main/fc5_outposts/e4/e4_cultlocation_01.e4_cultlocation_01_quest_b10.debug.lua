LUAC5�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/e4/e4_cultlocation_01.domino
-- User graph: E4_CultLocation_01_QUEST_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/E4/E4_CultLocation_01.E4_CultLocation_01_QUEST_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua")] = {
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
                name = "Failed",
                delayed = true,
            },
            [2] = {
                name = "Player_EnterVehicle",
                delayed = true,
            },
            [3] = {
                name = "Player_ExitVehicle",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = false,
            },
            [5] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bDisplayVehicleHealth",
                type = "bool",
            },
            [2] = {
                name = "bMustExitVehicle",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "eTarget",
                type = "entity",
            },
            [5] = {
                name = "eTargetMarker",
                type = "entity",
            },
            [6] = {
                name = "eVehicle",
                type = "entity",
            },
            [7] = {
                name = "eVehicleMarker",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "isTargetTrigger",
                type = "bool",
            },
            [10] = {
                name = "Objective",
                type = "oasis",
            },
            [11] = {
                name = "opt_FailReason",
                type = "oasis",
            },
        },
        dataInCount = 12,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Destroyed",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [2] = {
                name = "e_Vehicle",
                type = "entity",
            },
            [3] = {
                name = "hasObjective",
                type = "bool",
            },
            [4] = {
                name = "o_Objective",
                type = "oasis",
            },
            [5] = {
                name = "opt_FailReason",
                type = "oasis",
            },
            [6] = {
                name = "opt_MarkerBone",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "FailureReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
            [0] = {
                name = "PlayerGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    self._name = "E4_CultLocation_01_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10";
    self.o_FailReason = {
        section = "",
        item = "",
        id = "",
    };
    self.Cults = 7;
    self.box_ExitZoneWarningListener_v3_18 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|74001776");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_18_FailingZoneEntered,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|352321902");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_StartCelebration_7 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|914836575");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_7_Ended,
    });
    self.box_Brick_TakeControl_Vehicle_Specific_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Specific_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|921980311");
    l0:SetConnections({
        -- Destroyed,
        [0] = self.f_box_Brick_TakeControl_Vehicle_Specific_2_Destroyed,
        -- Started,
        [1] = self.f_box_Brick_TakeControl_Vehicle_Specific_2_Started,
        -- Success,
        [2] = self.f_box_Brick_TakeControl_Vehicle_Specific_2_Success,
        -- Unloaded,
        [3] = self.f_box_Brick_TakeControl_Vehicle_Specific_2_Unloaded,
    });
    self.box_VehicleListener_v3_9 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1084140401");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_9_OnSit,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1506174039");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1580208553");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_ExitZoneWarningListener_v3_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1744681564");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_15_FailingZoneEntered,
    });
    self.box_Brick_Deliver_Vehicle_v5_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1856100669");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_Brick_Deliver_Vehicle_v5_1_Disabled,
        -- Failed,
        [1] = self.f_box_Brick_Deliver_Vehicle_v5_1_Failed,
        -- Player_EnterVehicle,
        [2] = self.f_box_Brick_Deliver_Vehicle_v5_1_Player_EnterVehicle,
        -- Player_ExitVehicle,
        [3] = self.f_box_Brick_Deliver_Vehicle_v5_1_Player_ExitVehicle,
        -- Started,
        [4] = self.f_box_Brick_Deliver_Vehicle_v5_1_Started,
        -- Success,
        [5] = self.f_box_Brick_Deliver_Vehicle_v5_1_Success,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|2043759431");
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
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|623199861", "623199861", "E4_CultLocation_01_QUEST_B10", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ExitZoneWarningListener_v3_18_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_10();
    l0 = self.box_ExitZoneWarningListener_v3_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|7517965", "7517965", "E4_CultLocation_01_QUEST_B10", "box_ExitZoneWarningListener_v3_18.FailingZoneEntered", "box_ActivityRetry_10.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_11();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|187480007", "187480007", "E4_CultLocation_01_QUEST_B10", "box_MultipleOR_12.Out", "box_ActivityRetry_11.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_25_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_9();
    l0 = self.box_VehicleListener_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1628882333", "1628882333", "E4_CultLocation_01_QUEST_B10", "box_GetPlayerGroup_v2_25.Out", "box_VehicleListener_v3_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_7();
    l0 = self.box_StartCelebration_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1425140655", "1425140655", "E4_CultLocation_01_QUEST_B10", "box_EndActivityObjective_v2_6.Out", "box_StartCelebration_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_StartCelebration_7_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = self.box_StartCelebration_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1623061036", "1623061036", "E4_CultLocation_01_QUEST_B10", "box_StartCelebration_7.Ended", "box_ActivityEnd_8.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_2_Destroyed()
    local l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Specific_2_Destroyed();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_2;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1863884600", "1863884600", "E4_CultLocation_01_QUEST_B10", "box_Brick_TakeControl_Vehicle_Specific_2.Destroyed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_2_Started()
    local params, l0, l1;
    self:OnExit_box_Brick_TakeControl_Vehicle_Specific_2_Started();
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|100383304", "100383304", "E4_CultLocation_01_QUEST_B10", "box_Brick_TakeControl_Vehicle_Specific_2.Started", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_2_Success()
    self:OnExit_box_Brick_TakeControl_Vehicle_Specific_2_Success();
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_2_Unloaded()
    self:OnExit_box_Brick_TakeControl_Vehicle_Specific_2_Unloaded();
end;

function export:f_box_VehicleListener_v3_9_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_VehicleListener_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1509584818", "1509584818", "E4_CultLocation_01_QUEST_B10", "box_VehicleListener_v3_9.OnSit", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|831047776", "831047776", "E4_CultLocation_01_QUEST_B10", "box_ActivityInitialized_4.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|666803712", "666803712", "E4_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1853815131", "1853815131", "E4_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_21_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_25();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|220873074", "220873074", "E4_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_21.Out", "box_GetPlayerGroup_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_15_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_13();
    l0 = self.box_ExitZoneWarningListener_v3_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|429496699", "429496699", "E4_CultLocation_01_QUEST_B10", "box_ExitZoneWarningListener_v3_15.FailingZoneEntered", "box_ActivityRetry_13.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_1_Disabled()
    self:OnExit_box_Brick_Deliver_Vehicle_v5_1_Disabled();
end;

function export:f_box_Brick_Deliver_Vehicle_v5_1_Failed()
    local l0, l1;
    self:OnExit_box_Brick_Deliver_Vehicle_v5_1_Failed();
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1122849830", "1122849830", "E4_CultLocation_01_QUEST_B10", "box_Brick_Deliver_Vehicle_v5_1.Failed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_1_Player_EnterVehicle()
    self:OnExit_box_Brick_Deliver_Vehicle_v5_1_Player_EnterVehicle();
end;

function export:f_box_Brick_Deliver_Vehicle_v5_1_Player_ExitVehicle()
    self:OnExit_box_Brick_Deliver_Vehicle_v5_1_Player_ExitVehicle();
end;

function export:f_box_Brick_Deliver_Vehicle_v5_1_Started()
    self:OnExit_box_Brick_Deliver_Vehicle_v5_1_Started();
end;

function export:f_box_Brick_Deliver_Vehicle_v5_1_Success()
    local params, l0, l1;
    self:OnExit_box_Brick_Deliver_Vehicle_v5_1_Success();
    params = self:OnEnter_box_EndActivityObjective_v2_6();
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|483728992", "483728992", "E4_CultLocation_01_QUEST_B10", "box_Brick_Deliver_Vehicle_v5_1.Success", "box_EndActivityObjective_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_1();
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1598798518", "1598798518", "E4_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_16.Out", "box_Brick_Deliver_Vehicle_v5_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_17();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|378163078", "378163078", "E4_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_16.Out", "box_SetContextualStrategy_17.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_15();
    l0 = self.box_ExitZoneWarningListener_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|975213833", "975213833", "E4_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_16.Out", "box_ExitZoneWarningListener_v3_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_18();
    l0 = self.box_ExitZoneWarningListener_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1645242333", "1645242333", "E4_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_16.Out", "box_ExitZoneWarningListener_v3_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|729536167", "729536167", "E4_CultLocation_01_QUEST_B10", "box_MultipleOR_5.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Specific_2();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1211034576", "1211034576", "E4_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_14.Out", "box_Brick_TakeControl_Vehicle_Specific_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_15();
    l0 = self.box_ExitZoneWarningListener_v3_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1830136772", "1830136772", "E4_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_14.Out", "box_ExitZoneWarningListener_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_18()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2104479086222023083",
        -- WarningZoneTrigger,
        [3] = "2104478991747410109",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|366738005");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Mission Fail msg (generic)",
            item = "MSG_MISSION_FAILED_EXITMISSIONZONE",
            id = "869998",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|437665963");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|485551711");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|503107149");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104548438329818574",
        -- Group,
        [1] = "#531E8039",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|526830942");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_6_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "E4_CultLocation_01_QUEST_B20_OBJ_03",
            id = "592741",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_7()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Specific_2()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- e_MobileObjectiveMarker,
        [1] = "2105130138617272123",
        -- e_Vehicle,
        [2] = "2100802533720076820",
        -- hasObjective,
        [3] = true,
        -- o_Objective,
        [4] = {
            section = "Objectives",
            item = "E4_CultLocation_01_QUEST_B20_OBJ_02",
            id = "592740",
        },
        -- opt_FailReason,
        [5] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleDestroyed",
            id = "432249",
        },
        -- opt_MarkerBone,
        [6] = "DRIVER_SITPOINT_00",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [1] = false,
        -- pawns,
        [2] = l0:GetDataOutValue(0),
        -- vehicle,
        [4] = "2100802533720076820",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1421321424");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = self.o_FailReason,
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1605123697");
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
                [2] = self.f_box_OutputOrder_v2_21_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1620107566");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_15()
    local params;
    params = {
        -- bShowUI,
        [0] = false,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2104479086222023083",
        -- WarningZoneTrigger,
        [3] = "2104478991747410109",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_v5_1()
    local params;
    DrawTextToScreen("Comment: Cult Location QUEST E4 Option 01 STARTED", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Deliver_Vehicle_v5')-- Comment: Cult Location QUEST E4 Option 01 STARTED");
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bDisplayVehicleHealth,
        [1] = false,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- eTarget,
        [4] = "2100803507540986758",
        -- eTargetMarker,
        [5] = "2100802943893648520",
        -- eVehicle,
        [6] = "2100802533720076820",
        -- eVehicleMarker,
        [7] = "2100842351239891898",
        -- fDistanceFromTarget,
        [8] = 20,
        -- isTargetTrigger,
        [9] = false,
        -- Objective,
        [10] = {
            section = "Objectives",
            item = "E4_CultLocation_01_QUEST_B20_OBJ_03",
            id = "592741",
        },
        -- opt_FailReason,
        [11] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_VehicleDestroyed",
            id = "432249",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|1950170409");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
                [2] = self.f_box_OutputOrder_v2_16_Out_2,
                [3] = self.f_box_OutputOrder_v2_16_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\E4\\E4_CultLocation_01.domino|@E4_CultLocation_01_QUEST_B10|2121796342");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_25_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_VehicleListener_v3_9;
    l1:GetLuaBox().pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Specific_2_Destroyed()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_2;
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Specific_2_Started()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_2;
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Specific_2_Success()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_2;
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_TakeControl_Vehicle_Specific_2_Unloaded()
    local l0;
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_2;
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Deliver_Vehicle_v5_1_Disabled()
    local l0;
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Deliver_Vehicle_v5_1_Failed()
    local l0;
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Deliver_Vehicle_v5_1_Player_EnterVehicle()
    local l0;
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Deliver_Vehicle_v5_1_Player_ExitVehicle()
    local l0;
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Deliver_Vehicle_v5_1_Started()
    local l0;
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    self.o_FailReason = l0:GetDataOutValue(0);
end;

function export:OnExit_box_Brick_Deliver_Vehicle_v5_1_Success()
    local l0;
    l0 = self.box_Brick_Deliver_Vehicle_v5_1;
    self.o_FailReason = l0:GetDataOutValue(0);
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
