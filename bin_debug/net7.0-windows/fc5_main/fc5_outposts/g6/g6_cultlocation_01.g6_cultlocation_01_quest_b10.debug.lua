LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/g6/g6_cultlocation_01.domino
-- User graph: G6_CultLocation_01_QUEST_B10
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/FishingListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StatisticIncrement_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.G6_CultLocation_01 = nil;
    Globals.G6_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/G6/G6_CultLocation_01.G6_CultLocation_01_QUEST_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
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
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/FishingListener.lua")] = {
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
                name = "Bite",
                delayed = true,
            },
            [1] = {
                name = "Cancelled",
                delayed = true,
            },
            [2] = {
                name = "CastFail",
                delayed = true,
            },
            [3] = {
                name = "CastSuccess",
                delayed = true,
            },
            [4] = {
                name = "Caught",
                delayed = true,
            },
            [5] = {
                name = "CaughtBass",
                delayed = true,
            },
            [6] = {
                name = "CaughtSalmon",
                delayed = true,
            },
            [7] = {
                name = "CaughtSturgeon",
                delayed = true,
            },
            [8] = {
                name = "CaughtTrout",
                delayed = true,
            },
            [9] = {
                name = "Disabled",
                delayed = false,
            },
            [10] = {
                name = "Enabled",
                delayed = false,
            },
            [11] = {
                name = "Escaped",
                delayed = true,
            },
            [12] = {
                name = "Hooked",
                delayed = true,
            },
            [13] = {
                name = "Started",
                delayed = true,
            },
            [14] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 15,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "interruptOnDamage",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Fisherman",
                type = "entity",
            },
            [1] = {
                name = "FishName",
                type = "string",
            },
            [2] = {
                name = "Weight",
                type = "float",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/InventoryItemListener.lua")] = {
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
                name = "ItemAdded",
                delayed = true,
            },
            [3] = {
                name = "ItemRemoved",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [3] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "itemQuantityRemain",
                type = "int",
            },
            [1] = {
                name = "outItemDescriptorID",
                type = "genericdb",
            },
            [2] = {
                name = "player",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
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
    metadataTable[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetNumberOfItems",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "numItems",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
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
    metadataTable[GetPathID("Domino/System/StatisticIncrement_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Increment",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Incremented",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "increment",
                type = "int",
            },
            [1] = {
                name = "name",
                type = "string",
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
    self._name = "G6_CultLocation_01_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10";
    self.ePlayer = nil;
    self.iInitialAlbinoPaddlefish = 0;
    self.eGroup = nil;
    self.iNumPaddlefishesCaught = 0;
    self.numberofrod = 0;
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|15869599");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_InventoryItemListener_13 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|215301388");
    l0:SetConnections({
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_13_ItemAdded,
    });
    self.box_ActivityAcknowledgeGate_14 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|624876534");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_14_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_14_Reloaded,
    });
    self.box_ActivityInitialized_15 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|763313716");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_15_Out,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1126173484");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_InventoryItemListener_28 = cbox:CreateBox("Domino/System/InventoryItemListener.lua");
    l0 = self.box_InventoryItemListener_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemListener_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1297004839");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_InventoryItemListener_28_Disabled,
        -- Enabled,
        [1] = self.f_box_InventoryItemListener_28_Enabled,
        -- ItemAdded,
        [2] = self.f_box_InventoryItemListener_28_ItemAdded,
        -- ItemRemoved,
        [3] = self.f_box_InventoryItemListener_28_ItemRemoved,
    });
    self.box_FishingListener_34 = cbox:CreateBox("Domino/System/FishingListener.lua");
    l0 = self.box_FishingListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FishingListener_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1680494755");
    l0:SetConnections({
        -- Bite,
        [0] = self.f_box_FishingListener_34_Bite,
        -- Cancelled,
        [1] = self.f_box_FishingListener_34_Cancelled,
        -- CastFail,
        [2] = self.f_box_FishingListener_34_CastFail,
        -- CastSuccess,
        [3] = self.f_box_FishingListener_34_CastSuccess,
        -- Caught,
        [4] = self.f_box_FishingListener_34_Caught,
        -- CaughtBass,
        [5] = self.f_box_FishingListener_34_CaughtBass,
        -- CaughtSalmon,
        [6] = self.f_box_FishingListener_34_CaughtSalmon,
        -- CaughtSturgeon,
        [7] = self.f_box_FishingListener_34_CaughtSturgeon,
        -- CaughtTrout,
        [8] = self.f_box_FishingListener_34_CaughtTrout,
        -- Disabled,
        [9] = self.f_box_FishingListener_34_Disabled,
        -- Enabled,
        [10] = self.f_box_FishingListener_34_Enabled,
        -- Escaped,
        [11] = self.f_box_FishingListener_34_Escaped,
        -- Hooked,
        [12] = self.f_box_FishingListener_34_Hooked,
        -- Started,
        [13] = self.f_box_FishingListener_34_Started,
        -- Stopped,
        [14] = self.f_box_FishingListener_34_Stopped,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1743376688");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_StartCelebration_33 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1800783046");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_33_Ended,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|642884673", "642884673", "G6_CultLocation_01_QUEST_B10", "In", "box_ActivityAcknowledgeGate_14.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_2();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1121823097", "1121823097", "G6_CultLocation_01_QUEST_B10", "OnLeaveZone", "box_ActivityRetry_2.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_25();
    l0 = self.box_Delay_v5_29;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|894964077", "894964077", "G6_CultLocation_01_QUEST_B10", "box_Delay_v5_29.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_25.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1193887429", "1193887429", "G6_CultLocation_01_QUEST_B10", "box_AddActivityObjective_v2_35.Out", "box_ActivityObjectiveMarkerModifier_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_30_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1174385261", "1174385261", "G6_CultLocation_01_QUEST_B10", "box_MissionBlockLayer_30.Disabled", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_InventoryItemListener_13_ItemAdded()
    local l0, l1;
    l0 = self.box_InventoryItemListener_13;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1896701412", "1896701412", "G6_CultLocation_01_QUEST_B10", "box_InventoryItemListener_13.ItemAdded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_39();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1578942572", "1578942572", "G6_CultLocation_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_27.Enabled", "box_MissionBlockLayer_39.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|808647275", "808647275", "G6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_5.Out", "box_GetPlayerGroup_v2_9.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|947599697", "947599697", "G6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_5.Out", "box_Print_v2_1.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_10_A_ge_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1168347897", "1168347897", "G6_CultLocation_01_QUEST_B10", "box_Compare_Integers_10.A_ge_B", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_10_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_13();
    l0 = self.box_InventoryItemListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|686802901", "686802901", "G6_CultLocation_01_QUEST_B10", "box_Compare_Integers_10.A_lt_B", "box_InventoryItemListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Compare_Strings_4_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1255175859", "1255175859", "G6_CultLocation_01_QUEST_B10", "box_Compare_Strings_4.A_eq_B", "box_OutputOrder_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_14_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_14;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|2114320276", "2114320276", "G6_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_14.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_14_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_14;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1067351912", "1067351912", "G6_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_14.Reloaded", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemListener_28();
    l0 = self.box_InventoryItemListener_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1754785880", "1754785880", "G6_CultLocation_01_QUEST_B10", "box_GetPlayerGroup_v2_9.Out", "box_InventoryItemListener_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_39_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_38();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1618521762", "1618521762", "G6_CultLocation_01_QUEST_B10", "box_MissionBlockLayer_39.Activated", "box_MissionBlockLayer_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_ActivityInitialized_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1217805204", "1217805204", "G6_CultLocation_01_QUEST_B10", "box_ActivityInitialized_15.Out", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1807823803", "1807823803", "G6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_11.Out", "box_AddActivityObjective_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|27027892", "27027892", "G6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_11.Out", "box_Print_v2_26.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StatisticIncrement_v2_22_Incremented()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_24();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|562932847", "562932847", "G6_CultLocation_01_QUEST_B10", "box_StatisticIncrement_v2_22.Incremented", "box_MissionBlockLayer_24.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_8_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetInventoryItemQuantity_16();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1267201154", "1267201154", "G6_CultLocation_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_8.Enabled", "box_GetInventoryItemQuantity_16.GetNumberOfItems", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetNumberOfItems
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_31_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1725057054", "1725057054", "G6_CultLocation_01_QUEST_B10", "box_Compare_Integers_31.A_gt_B", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Integers_31_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|869108334", "869108334", "G6_CultLocation_01_QUEST_B10", "box_Compare_Integers_31.A_le_B", "box_AddActivityObjective_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetInventoryItemQuantity_16_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_16_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_10();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|173615492", "173615492", "G6_CultLocation_01_QUEST_B10", "box_GetInventoryItemQuantity_16.Out", "box_Compare_Integers_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StatisticIncrement_v2_22();
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|715709039", "715709039", "G6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_StatisticIncrement_v2_22.Increment", clone:GetLuaBox(), l0:GetLuaBox());
    -- Increment
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_18();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|961536593", "961536593", "G6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_19.Out", "box_Print_v2_18.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1328055197", "1328055197", "G6_CultLocation_01_QUEST_B10", "box_MultipleOR_7.Out", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1599749023", "1599749023", "G6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_21.Out", "box_ActivityObjectiveMarkerModifier_v3_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_25_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_33();
    l0 = self.box_StartCelebration_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1988668277", "1988668277", "G6_CultLocation_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_25.Disabled", "box_StartCelebration_33.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_InventoryItemListener_28_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_31();
    l0 = self.box_InventoryItemListener_28;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|16159630", "16159630", "G6_CultLocation_01_QUEST_B10", "box_InventoryItemListener_28.Enabled", "box_Compare_Integers_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemListener_28_ItemAdded()
    local params, l0, l1;
    self:OnExit_box_InventoryItemListener_28_ItemAdded();
    params = self:OnEnter_box_Simple_Node_32();
    l0 = self.box_InventoryItemListener_28;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1790464061", "1790464061", "G6_CultLocation_01_QUEST_B10", "box_InventoryItemListener_28.ItemAdded", "box_Simple_Node_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemListener_28_ItemRemoved()
    self:OnExit_box_InventoryItemListener_28_ItemRemoved();
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_6_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1101424809", "1101424809", "G6_CultLocation_01_QUEST_B10", "box_ActivityObjectiveMarkerModifier_v3_6.Disabled", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_24_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_30();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1917154725", "1917154725", "G6_CultLocation_01_QUEST_B10", "box_MissionBlockLayer_24.Activated", "box_MissionBlockLayer_30.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_38_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_FishingListener_34();
    l0 = self.box_FishingListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1243760566", "1243760566", "G6_CultLocation_01_QUEST_B10", "box_MissionBlockLayer_38.Disabled", "box_FishingListener_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_FishingListener_34_Caught()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Strings_4();
    l0 = self.box_FishingListener_34;
    l1 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|931421826", "931421826", "G6_CultLocation_01_QUEST_B10", "box_FishingListener_34.Caught", "box_Compare_Strings_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|739043350", "739043350", "G6_CultLocation_01_QUEST_B10", "box_MultipleOR_3.Out", "box_ActivityInitialized_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_AddActivityObjective_v2_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1166658364", "1166658364", "G6_CultLocation_01_QUEST_B10", "box_AddActivityObjective_v2_12.Out", "box_ActivityObjectiveMarkerModifier_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_33_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_23();
    l0 = self.box_StartCelebration_33;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|2138344533", "2138344533", "G6_CultLocation_01_QUEST_B10", "box_StartCelebration_33.Ended", "box_ActivityEnd_23.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|120269534");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_35_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "G6_CultLocation_01_QUEST_B20_GOAL",
            id = "672733",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|212158680");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_30_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "54181810420141713",
        -- missionLayerId,
        [1] = "36167428982347291",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptorID,
        [1] = "9015190374018495",
        -- players,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|251611951");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|301936105");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_27_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2104366422103692270",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "G6_CultLocation_01_QUEST_B20_GOAL",
            id = "672733",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|389491238");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|403432844");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_10_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_10_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_16,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|551906352");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_4_A_eq_B,
    });
    l0 = self.box_FishingListener_34;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = "Paddlefish_Albino",
        -- IgnoreCase,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|639965872");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|673252018");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|716149125");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_39_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181810420141713",
        -- missionLayerId,
        [1] = "36167428982347291",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|768204410");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|803064006");
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
        [8] = "G6_Outpost_01_Quest_B20_STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_StatisticIncrement_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StatisticIncrement_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StatisticIncrement_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|871185838");
    l0:SetConnections({
        -- Incremented,
        [0] = self.f_box_StatisticIncrement_v2_22_Incremented,
    });
    params = {
        -- increment,
        [0] = 1,
        -- name,
        [1] = "Paddlefish_Albino",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|886445731");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_8_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100897914619451379",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "G6_CultLocation_01_QUEST_B10_GOAL",
            id = "591508",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|888641839");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_31_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_31_A_le_B,
    });
    params = {
        -- A,
        [0] = self.numberofrod,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1040173011");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_16_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015190374018495",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1064366267");
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
        [8] = "G6_Outpost_01_Quest_B10_STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1067080930");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1081094683");
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
        [8] = "CAUGHT THE PADDLE FISH!!!!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1180592986");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1202971330");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_25_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2104366422103692270",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "G6_CultLocation_01_QUEST_B20_GOAL",
            id = "672733",
        },
    };
    return params;
end;

function export:OnEnter_box_InventoryItemListener_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = false,
        -- itemDescriptorID,
        [1] = "9015190374018495",
        -- players,
        [3] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1348134297");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1458305266");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_6_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100897914619451379",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "G6_CultLocation_01_QUEST_B10_GOAL",
            id = "591508",
        },
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1537010996");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_24_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "54181810420141713",
        -- missionLayerId,
        [1] = "27160229727595651",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1640596268");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_38_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "54181810420141713",
        -- missionLayerId,
        [1] = "27160229727595651",
    };
    return params;
end;

function export:OnEnter_box_FishingListener_34()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- interruptOnDamage,
        [1] = false,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G6\\G6_CultLocation_01.domino|@G6_CultLocation_01_QUEST_B10|1759787844");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_12_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "G6_CultLocation_01_QUEST_B10_GOAL",
            id = "591508",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_33()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_InventoryItemListener_28;
    l1:GetLuaBox().players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetInventoryItemQuantity_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_16 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_InventoryItemListener_28_ItemAdded()
    local l0;
    l0 = self.box_InventoryItemListener_28;
    self.numberofrod = l0:GetDataOutValue(0);
end;

function export:OnExit_box_InventoryItemListener_28_ItemRemoved()
    local l0;
    l0 = self.box_InventoryItemListener_28;
    self.numberofrod = l0:GetDataOutValue(0);
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
