LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_supplydrop/sd_easy_01.domino
-- User graph: SD_Easy_01
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityStoppableWhenAcknowledgedModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SupplyDropListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DiplayTextModifier_v6.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/LootEntityListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SpawnSupplyDrop.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_SupplyDrop/SD_Easy_01.SD_Easy_01.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityStoppableWhenAcknowledgedModifier.lua")] = {
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SupplyDropListener.lua")] = {
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
                name = "SupplyDropIdReceived",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/DiplayTextModifier_v6.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ClearText",
            },
            [1] = {
                name = "DisplayText",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "TextCleared",
                delayed = false,
            },
            [1] = {
                name = "TextDisplayed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "displayOverCinematic",
                type = "bool",
            },
            [1] = {
                name = "displayTimer",
                type = "float",
            },
            [2] = {
                name = "forceInstantDisplay",
                type = "bool",
            },
            [3] = {
                name = "isKarmaEvent",
                type = "bool",
            },
            [4] = {
                name = "textId",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/GetPosition.lua")] = {
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
                name = "id",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "pitch",
                type = "float",
            },
            [1] = {
                name = "roll",
                type = "float",
            },
            [2] = {
                name = "xPos",
                type = "float",
            },
            [3] = {
                name = "yaw",
                type = "float",
            },
            [4] = {
                name = "yPos",
                type = "float",
            },
            [5] = {
                name = "zPos",
                type = "float",
            },
        },
        dataOutCount = 6,
    };
    metadataTable[GetPathID("Domino/System/LootEntityListener.lua")] = {
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
                name = "OnLoot",
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
                name = "entityId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SpawnSupplyDrop.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "RequestSpawn",
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
                name = "AirDropDataId",
                type = "genericdb",
            },
            [1] = {
                name = "PositionEntity",
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
    self._name = "SD_Easy_01";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01";
    self.Out = DummyFunction;
    self.eSD_Container = nil;
    self.PlayerPos = nil;
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|121380156");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_LootEntityListener_10 = cbox:CreateBox("Domino/System/LootEntityListener.lua");
    l0 = self.box_LootEntityListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LootEntityListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|152441608");
    l0:SetConnections({
        -- OnLoot,
        [2] = self.f_box_LootEntityListener_10_OnLoot,
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|638463273");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1470422658");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_8_Unloaded,
    });
    self.box_OnceOnly_v3_18 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1493063288");
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
                [0] = self.f_box_OnceOnly_v3_18_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1766710801");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_SupplyDropListener_6 = cbox:CreateBox("Domino/System/AI/SupplyDropListener.lua");
    l0 = self.box_SupplyDropListener_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SupplyDropListener_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|2040624482");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_SupplyDropListener_6_Disabled,
        -- Enabled,
        [1] = self.f_box_SupplyDropListener_6_Enabled,
        -- SupplyDropIdReceived,
        [2] = self.f_box_SupplyDropListener_6_SupplyDropIdReceived,
    });
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|2117070742");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_RandomFloat_v2_17();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1765128996", "1765128996", "SD_Easy_01", "In", "box_RandomFloat_v2_17.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_4();
    l0 = self.box_Delay_v5_16;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|383485501", "383485501", "SD_Easy_01", "box_Delay_v5_16.TimeElapsed", "box_GetLocalPlayer_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LootEntityListener_10_OnLoot()
    local l0, l1;
    l0 = self.box_LootEntityListener_10;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1147549364", "1147549364", "SD_Easy_01", "box_LootEntityListener_10.OnLoot", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetLocalPlayer_v2_4_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPosition_14();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1634293474", "1634293474", "SD_Easy_01", "box_GetLocalPlayer_v2_4.Out", "box_GetPosition_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnSupplyDrop_2_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SpawnSupplyDrop.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|421759320", "421759320", "SD_Easy_01", "box_SpawnSupplyDrop_2.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1335657517", "1335657517", "SD_Easy_01", "box_OutputOrder_v2_11.Out", "box_EntityStatusListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LootEntityListener_10();
    l0 = self.box_LootEntityListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1116699810", "1116699810", "SD_Easy_01", "box_OutputOrder_v2_11.Out", "box_LootEntityListener_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayTextModifier_v6_9();
    l0 = self.box_Delay_v5_12;
    l1 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1448915954", "1448915954", "SD_Easy_01", "box_Delay_v5_12.TimeElapsed", "box_DisplayTextModifier_v6_9.DisplayText", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayText
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SupplyDropListener_6();
    l0 = self.box_SupplyDropListener_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1902681010", "1902681010", "SD_Easy_01", "box_OutputOrder_v2_1.Out", "box_SupplyDropListener_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1698284200", "1698284200", "SD_Easy_01", "box_OutputOrder_v2_1.Out", "box_Delay_v5_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetPosition_14_Out()
    local params, l0;
    self:OnExit_box_GetPosition_14_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_15();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|691001085", "691001085", "SD_Easy_01", "box_GetPosition_14.Out", "box_Compare_Floats_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_15_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1341767512", "1341767512", "SD_Easy_01", "box_Compare_Floats_15.A_gt_B", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Compare_Floats_15_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1225812691", "1225812691", "SD_Easy_01", "box_Compare_Floats_15.A_le_B", "box_OnceOnly_v3_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_8_Unloaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|389755082", "389755082", "SD_Easy_01", "box_EntityStatusListener_8.Unloaded", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_18_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityStoppableWhenAcknowledgedModifier_19();
    l0 = self.box_OnceOnly_v3_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityStoppableWhenAcknowledgedModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|280082807", "280082807", "SD_Easy_01", "box_OnceOnly_v3_18.Out", "box_ActivityStoppableWhenAcknowledgedModifier_19.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayTextModifier_v6_9_TextDisplayed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1231153837", "1231153837", "SD_Easy_01", "box_DisplayTextModifier_v6_9.TextDisplayed", "box_Print_v2_3.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_MultipleOR_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|273023432", "273023432", "SD_Easy_01", "box_MultipleOR_13.Out", "box_ActivityEnd_5.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RandomFloat_v2_17_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1656449987", "1656449987", "SD_Easy_01", "box_RandomFloat_v2_17.Out", "box_Delay_v5_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ActivityStoppableWhenAcknowledgedModifier_19_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityStoppableWhenAcknowledgedModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnSupplyDrop_2();
    l0 = Boxes[GetPathID("Domino/System/SpawnSupplyDrop.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|71706367", "71706367", "SD_Easy_01", "box_ActivityStoppableWhenAcknowledgedModifier_19.Disabled", "box_SpawnSupplyDrop_2.RequestSpawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- RequestSpawn
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SupplyDropListener_6_SupplyDropIdReceived()
    local params, l0, l1;
    self:OnExit_box_SupplyDropListener_6_SupplyDropIdReceived();
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_SupplyDropListener_6;
    l1 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1912463661", "1912463661", "SD_Easy_01", "box_SupplyDropListener_6.SupplyDropIdReceived", "box_EntityStatusListener_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_EntityStatusListener_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1158624167", "1158624167", "SD_Easy_01", "box_EntityStatusListener_7.Loaded", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Delay_v5_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_LootEntityListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entityId,
        [1] = self.eSD_Container,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|177599148");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|309207979");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnSupplyDrop_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SpawnSupplyDrop.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnSupplyDrop_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|358752252");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SpawnSupplyDrop_2_Out,
    });
    params = {
        -- AirDropDataId,
        [0] = "9015339079605955",
        -- PositionEntity,
        [1] = self.PlayerPos,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|565129589");
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

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1132153082");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPosition_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1423059113");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_14_Out,
    });
    params = {
        -- id,
        [0] = self.PlayerPos,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1444943990");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_15_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Floats_15_A_le_B,
    });
    params = {
        -- A,
        [0] = self._sld_zPos_box_GetPosition_14,
        -- B,
        [1] = 360,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eSD_Container,
    };
    return params;
end;

function export:OnEnter_box_DisplayTextModifier_v6_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayTextModifier_v6_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1763745414");
    l0:SetConnections({
        -- TextDisplayed,
        [1] = self.f_box_DisplayTextModifier_v6_9_TextDisplayed,
    });
    params = {
        -- displayOverCinematic,
        [0] = false,
        -- displayTimer,
        [1] = 10,
        -- forceInstantDisplay,
        [2] = false,
        -- isKarmaEvent,
        [3] = false,
        -- textId,
        [4] = {
            section = "Supply Drop",
            item = "RDM_EVENT_DROP_HINT",
            id = "1021835",
        },
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1908620699");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_17_Out,
    });
    params = {
        -- Max,
        [0] = 60,
        -- Min,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_ActivityStoppableWhenAcknowledgedModifier_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityStoppableWhenAcknowledgedModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityStoppableWhenAcknowledgedModifier_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1934734480");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityStoppableWhenAcknowledgedModifier_19_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_SupplyDrop\\SD_Easy_01.domino|@SD_Easy_01|1986035109");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "SUPPLY DROP INCOMING!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SupplyDropListener_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.eSD_Container,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.PlayerPos = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPosition_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self._sld_zPos_box_GetPosition_14 = l0:GetDataOutValue(5);
end;

function export:OnExit_box_RandomFloat_v2_17_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_16;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SupplyDropListener_6_SupplyDropIdReceived()
    local l0;
    l0 = self.box_SupplyDropListener_6;
    self.eSD_Container = l0:GetDataOutValue(0);
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
