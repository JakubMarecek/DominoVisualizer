LUACr�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/playgo/mis_025/mis_025_b21.domino
-- User graph: MIS_025_B21
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/Bowmore_main/Bowmore_Activities/PLAYGO/MIS_025/MIS_025_B21.MIS_025_B21.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")] = {
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
                name = "ActivityAbortAndFastTravelEnabled",
                type = "bool",
            },
            [1] = {
                name = "SleepingCampEnabled",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener_v2.lua")] = {
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
                name = "PreconditionMet",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "PreconditionId",
                type = "database",
            },
            [2] = {
                name = "TestOnEnable",
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
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
    };
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
            },
        },
        controlInCount = 4,
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
            [3] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
            [0] = {
                name = "LocalPlayer",
                type = "entity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_025_B21";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21";
    self.Player = nil;
    self.rush = nil;
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|177418647");
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
    self.box_CharacterLoadedIdListener_v2_10 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|482400360");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_10_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_10_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_10_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_10_LoadedIdReceived,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|757617792");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|907699209");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_11_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_InventoryItemModifier_9 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|950182568");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_9_Out,
    });
    self.box_HealthListener_v6_14 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1352918903");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_14_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_14_Damaged,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_14_Downed,
    });
    self.box_PreconditionListener_v2_5 = cbox:CreateBox("Domino/System/AI/PreconditionListener_v2.lua");
    l0 = self.box_PreconditionListener_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1630169017");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_v2_5_PreconditionMet,
    });
    self.box_InventoryItemModifier_6 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1735209027");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_6_Out,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1958209288");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1968389224");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_ActivityInitialized_8 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|2135979997");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_8_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|942437317", "942437317", "MIS_025_B21", "In", "box_OutputOrder_v2_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_16_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_10();
    l0 = self.box_CharacterLoadedIdListener_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|469881176", "469881176", "MIS_025_B21", "box_GetLocalPlayer_v2_16.Out", "box_CharacterLoadedIdListener_v2_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|56442067", "56442067", "MIS_025_B21", "box_MultipleOR_4.Out", "box_ActivityInitialized_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_CharacterLoadedIdListener_v2_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_18();
    l0 = self.box_CharacterLoadedIdListener_v2_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|565919119", "565919119", "MIS_025_B21", "box_CharacterLoadedIdListener_v2_10.Enabled", "box_ActivityMiscInfoModifier_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_v2_10_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_10_LoadedIdReceived();
    params = self:OnEnter_box_InventoryItemModifier_6();
    l0 = self.box_CharacterLoadedIdListener_v2_10;
    l1 = self.box_InventoryItemModifier_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|817725285", "817725285", "MIS_025_B21", "box_CharacterLoadedIdListener_v2_10.LoadedIdReceived", "box_InventoryItemModifier_6.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(3, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1355609483", "1355609483", "MIS_025_B21", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1745538449", "1745538449", "MIS_025_B21", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_11_Started()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_9();
    l0 = self.box_Delay_v5_11;
    l1 = self.box_InventoryItemModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1066893060", "1066893060", "MIS_025_B21", "box_Delay_v5_11.Started", "box_InventoryItemModifier_9.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|323143857", "323143857", "MIS_025_B21", "box_Delay_v5_11.TimeElapsed", "box_UseContextualActionModifier_v3_12.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_14();
    l0 = self.box_InventoryItemModifier_9;
    l1 = self.box_HealthListener_v6_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1607120264", "1607120264", "MIS_025_B21", "box_InventoryItemModifier_9.Out", "box_HealthListener_v6_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_14_Critical()
    local l0, l1;
    l0 = self.box_HealthListener_v6_14;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|429875552", "429875552", "MIS_025_B21", "box_HealthListener_v6_14.Critical", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_14_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_14;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|591433505", "591433505", "MIS_025_B21", "box_HealthListener_v6_14.Damaged", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_14_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_14;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|2066927250", "2066927250", "MIS_025_B21", "box_HealthListener_v6_14.Downed", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1905068853", "1905068853", "MIS_025_B21", "box_OutputOrder_v2_7.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1502432272", "1502432272", "MIS_025_B21", "box_OutputOrder_v2_7.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_v2_5_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_3();
    l0 = self.box_PreconditionListener_v2_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|492307052", "492307052", "MIS_025_B21", "box_PreconditionListener_v2_5.PreconditionMet", "box_ActivityEnd_3.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InventoryItemModifier_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_InventoryItemModifier_6;
    l1 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|834142195", "834142195", "MIS_025_B21", "box_InventoryItemModifier_6.Out", "box_Delay_v5_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UseContextualActionModifier_v3_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PreconditionListener_v2_5();
    l0 = self.box_PreconditionListener_v2_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1843351771", "1843351771", "MIS_025_B21", "box_UseContextualActionModifier_v3_12.Disabled", "box_PreconditionListener_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_13_Healed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_13();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1925528747", "1925528747", "MIS_025_B21", "box_HealthModifier_v2_13.Healed", "box_HealthModifier_v2_13.RemoveCritical", clone:GetLuaBox(), l0:GetLuaBox());
    -- RemoveCritical
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_13_OnRemoveCritical()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_13();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1755164731", "1755164731", "MIS_025_B21", "box_HealthModifier_v2_13.OnRemoveCritical", "box_HealthModifier_v2_13.Set", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_13();
    l0 = self.box_Delay_v5_15;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1827145825", "1827145825", "MIS_025_B21", "box_Delay_v5_15.TimeElapsed", "box_HealthModifier_v2_13.Heal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Heal
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_MultipleOR_17;
    l1 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|232319576", "232319576", "MIS_025_B21", "box_MultipleOR_17.Out", "box_Delay_v5_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityInitialized_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_16();
    l0 = self.box_ActivityInitialized_8;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|446541446", "446541446", "MIS_025_B21", "box_ActivityInitialized_8.Out", "box_GetLocalPlayer_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_GetLocalPlayer_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|3709453");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328870620083",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|595589212");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_025_B21 Mission Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_9()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015213189219337",
        -- players,
        [2] = self.rush,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1170692669");
    l0:SetConnections({
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_14()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.rush,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1484669732");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1580301986");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_v2_5()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015351461357245",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_6()
    local params;
    params = {
        -- itemFilterID,
        [1] = "9015352507343832",
        -- players,
        [2] = self.rush,
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1867488681");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_12_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109233799238785459",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\PLAYGO\\MIS_025\\MIS_025_B21.domino|@MIS_025_B21|1911476469");
    l0:SetConnections({
        -- Healed,
        [1] = self.f_box_HealthModifier_v2_13_Healed,
        -- OnRemoveCritical,
        [2] = self.f_box_HealthModifier_v2_13_OnRemoveCritical,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.rush,
        -- value,
        [3] = 1000,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.Player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_10_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_10;
    self.rush = l0:GetDataOutValue(0);
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
