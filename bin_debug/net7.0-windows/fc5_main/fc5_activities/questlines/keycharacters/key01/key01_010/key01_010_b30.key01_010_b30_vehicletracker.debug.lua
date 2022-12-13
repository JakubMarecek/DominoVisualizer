LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_010/key01_010_b30.domino
-- User graph: KEY01_010_B30_VehicleTracker
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFxListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B30.KEY01_010_B30_VehicleTracker.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/Player/PostFxListener_v2.lua")] = {
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
                name = "OnFxStartOnAllPlayers",
                delayed = true,
            },
            [3] = {
                name = "OnFxStartOnPlayer",
                delayed = true,
            },
            [4] = {
                name = "OnFxStopOnAllPlayers",
                delayed = true,
            },
            [5] = {
                name = "OnFxStopOnPlayer",
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
                name = "Players",
                type = "group",
            },
            [2] = {
                name = "PostFxNameFilter",
                type = "string",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "outInteractor",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/VehicleModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlternativeSuspensionDisabled",
            },
            [1] = {
                name = "SetAlternativeSuspensionEnabled",
            },
            [2] = {
                name = "SetAsAnimated",
            },
            [3] = {
                name = "SetAsDestructable",
            },
            [4] = {
                name = "SetAsIndestructable",
            },
            [5] = {
                name = "SetAsNotAnimated",
            },
            [6] = {
                name = "SetAsUnusable",
            },
            [7] = {
                name = "SetAsUsable",
            },
            [8] = {
                name = "SetBrakesReleased",
            },
            [9] = {
                name = "SetCommandeerDisabled",
            },
            [10] = {
                name = "SetCommandeerEnabled",
            },
            [11] = {
                name = "SetEngineBroken",
            },
            [12] = {
                name = "SetEngineDisabled",
            },
            [13] = {
                name = "SetEngineMajorDamage",
            },
            [14] = {
                name = "SetEngineMinorDamage",
            },
            [15] = {
                name = "SetExitDisabled",
            },
            [16] = {
                name = "SetExitEnabled",
            },
            [17] = {
                name = "SetExplosion",
            },
            [18] = {
                name = "SetInputDisabled",
            },
            [19] = {
                name = "SetInputEnabled",
            },
        },
        controlInCount = 20,
        controlOut = {
            [0] = {
                name = "OnSetAlternativeSuspensionDisabled",
                delayed = false,
            },
            [1] = {
                name = "OnSetAlternativeSuspensionEnabled",
                delayed = false,
            },
            [2] = {
                name = "OnSetAsAnimated",
                delayed = false,
            },
            [3] = {
                name = "OnSetAsDestructible",
                delayed = false,
            },
            [4] = {
                name = "OnSetAsIndestructible",
                delayed = false,
            },
            [5] = {
                name = "OnSetAsNotAnimated",
                delayed = false,
            },
            [6] = {
                name = "OnSetAsUnusable",
                delayed = false,
            },
            [7] = {
                name = "OnSetAsUsable",
                delayed = false,
            },
            [8] = {
                name = "OnSetBrakesReleased",
                delayed = false,
            },
            [9] = {
                name = "OnSetCommandeerDisabled",
                delayed = false,
            },
            [10] = {
                name = "OnSetCommandeerEnabled",
                delayed = false,
            },
            [11] = {
                name = "OnSetEngineBroken",
                delayed = false,
            },
            [12] = {
                name = "OnSetEngineDisabled",
                delayed = false,
            },
            [13] = {
                name = "OnSetEngineMajorDamage",
                delayed = false,
            },
            [14] = {
                name = "OnSetEngineMinorDamage",
                delayed = false,
            },
            [15] = {
                name = "OnSetExitDisabled",
                delayed = false,
            },
            [16] = {
                name = "OnSetExitEnabled",
                delayed = false,
            },
            [17] = {
                name = "OnSetExplosion",
                delayed = false,
            },
            [18] = {
                name = "OnSetInputDisabled",
                delayed = false,
            },
            [19] = {
                name = "OnSetInputEnabled",
                delayed = false,
            },
        },
        controlOutCount = 20,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
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
    self._name = "KEY01_010_B30_VehicleTracker";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker";
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|146934058");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|886298217");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1050124505");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_5_Unloaded,
    });
    self.box_VehicleListener_v3_8 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1124609208");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_8_OnSit,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1127005561");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_MessageListener_v3_11 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1317105945");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_11_Received,
    });
    self.box_VehicleDamageListener_v2_2 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1459996443");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_2_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_2_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_2_Disabled,
        -- Enabled,
        [4] = self.f_box_VehicleDamageListener_v2_2_Enabled,
    });
    self.box_PostFxListener_v2_10 = cbox:CreateBox("Domino/System/Player/PostFxListener_v2.lua");
    l0 = self.box_PostFxListener_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFxListener_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1896056564");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFxListener_v2_10_Enabled,
        -- OnFxStartOnPlayer,
        [3] = self.f_box_PostFxListener_v2_10_OnFxStartOnPlayer,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1950127744");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1515600068", "1515600068", "KEY01_010_B30_VehicleTracker", "In", "box_ActivityAcknowledgeGate_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1772976045", "1772976045", "KEY01_010_B30_VehicleTracker", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|2026587363", "2026587363", "KEY01_010_B30_VehicleTracker", "box_ActivityAcknowledgeGate_3.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleModifier_v2_12_OnSetAsIndestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_11();
    l0 = self.box_MessageListener_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1376906115", "1376906115", "KEY01_010_B30_VehicleTracker", "box_VehicleModifier_v2_12.OnSetAsIndestructible", "box_MessageListener_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|688270256", "688270256", "KEY01_010_B30_VehicleTracker", "box_OutputOrder_v2_9.Out", "box_EntityStatusListener_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|361296406", "361296406", "KEY01_010_B30_VehicleTracker", "box_OutputOrder_v2_9.Out", "box_ActivityEnd_7.EndNoSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndNoSave
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_15();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|62525674", "62525674", "KEY01_010_B30_VehicleTracker", "box_MultipleOR_17.Out", "box_GetInventoryItemQuantity_15.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_2();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_VehicleDamageListener_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1590476243", "1590476243", "KEY01_010_B30_VehicleTracker", "box_EntityStatusListener_5.Loaded", "box_VehicleDamageListener_v2_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_5_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_2();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_VehicleDamageListener_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|474457353", "474457353", "KEY01_010_B30_VehicleTracker", "box_EntityStatusListener_5.Unloaded", "box_VehicleDamageListener_v2_2.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_8_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_VehicleListener_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|195103174", "195103174", "KEY01_010_B30_VehicleTracker", "box_VehicleListener_v3_8.OnSit", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostFxListener_v2_10();
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_PostFxListener_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1253103860", "1253103860", "KEY01_010_B30_VehicleTracker", "box_ActivityInitialized_1.Out", "box_PostFxListener_v2_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetInventoryItemQuantity_15_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_15_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_14();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|736867145", "736867145", "KEY01_010_B30_VehicleTracker", "box_GetInventoryItemQuantity_15.Out", "box_Compare_Integers_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_11_Received()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_13();
    l0 = self.box_MessageListener_v3_11;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|2086277177", "2086277177", "KEY01_010_B30_VehicleTracker", "box_MessageListener_v3_11.Received", "box_VehicleModifier_v2_13.SetAsDestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsDestructable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_2_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_2;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1598898768", "1598898768", "KEY01_010_B30_VehicleTracker", "box_VehicleDamageListener_v2_2.Broken", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_2_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_6();
    l0 = self.box_VehicleDamageListener_v2_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|15823895", "15823895", "KEY01_010_B30_VehicleTracker", "box_VehicleDamageListener_v2_2.Destroyed", "box_ActivityRetry_6.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_2_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_2;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1889241220", "1889241220", "KEY01_010_B30_VehicleTracker", "box_VehicleDamageListener_v2_2.Disabled", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_8();
    l0 = self.box_VehicleDamageListener_v2_2;
    l1 = self.box_VehicleListener_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1090667540", "1090667540", "KEY01_010_B30_VehicleTracker", "box_VehicleDamageListener_v2_2.Enabled", "box_VehicleListener_v3_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PostFxListener_v2_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_PostFxListener_v2_10;
    l1 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|131540267", "131540267", "KEY01_010_B30_VehicleTracker", "box_PostFxListener_v2_10.Enabled", "box_EntityStatusListener_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PostFxListener_v2_10_OnFxStartOnPlayer()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_12();
    l0 = self.box_PostFxListener_v2_10;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|861466280", "861466280", "KEY01_010_B30_VehicleTracker", "box_PostFxListener_v2_10.OnFxStartOnPlayer", "box_VehicleModifier_v2_12.SetAsIndestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsIndestructable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|98922618", "98922618", "KEY01_010_B30_VehicleTracker", "box_MultipleOR_4.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Integers_14_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1862256023", "1862256023", "KEY01_010_B30_VehicleTracker", "box_Compare_Integers_14.A_eq_B", "box_ActivityRetry_16.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    DrawTextToScreen("BOX DEBUGINFO  (Name: 'Anonymous', Class: 'ActivityEnd') -- Connected control anchors: 'EndNoSave'", 5, "white");
    LogConsole("BOX DEBUGINFO  (Name: 'Anonymous', Class: 'ActivityEnd') -- Connected control anchors: 'EndNoSave'");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|579571973");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|592440292");
    l0:SetConnections({
        -- OnSetAsIndestructible,
        [4] = self.f_box_VehicleModifier_v2_12_OnSetAsIndestructible,
    });
    params = {
        -- targets,
        [0] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|655944673");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|777491186");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_8()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1164082373");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_15_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015247148748112",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1171486828");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "KEY02_E3_FAIL_Truck_Lost",
            id = "683088",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|1251087862");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "outpost_cinematic_end",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_2()
    local params;
    params = {
        -- Vehicle,
        [0] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_PostFxListener_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Players,
        [1] = "#ED455357",
        -- PostFxNameFilter,
        [2] = "outpostliberation",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B30.domino|@KEY01_010_B30_VehicleTracker|2053969615");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_14_A_eq_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_15,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnExit_box_GetInventoryItemQuantity_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_15 = l0:GetDataOutValue(0);
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
