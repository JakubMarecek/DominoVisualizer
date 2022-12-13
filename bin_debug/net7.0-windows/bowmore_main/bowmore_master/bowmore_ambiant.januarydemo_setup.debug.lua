LUACԒ  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_master/bowmore_ambiant.domino
-- User graph: JanuaryDemo_Setup
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/EquipWolfskinItem.lua");
        cboxRes:RegisterBox("Domino/System/GetDemoType.lua");
        cboxRes:RegisterBox("Domino/System/InventoryPackModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/SaveOpenWorld.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Bowmore_Ambiant = nil;
    Globals.Bowmore_Ambiant = {
        Church_Bell_sound_Hour_Check = 0,
        Church_Bell_Minute_Check = 0,
        gPlayerGroup = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Master/Bowmore_Ambiant.JanuaryDemo_Setup.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Female",
                delayed = false,
            },
            [1] = {
                name = "Male",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PlayerID",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/EquipWolfskinItem.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Equip",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equipped",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "itemDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetDemoType.lua")] = {
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
                name = "type",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/InventoryPackModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Load",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Failed",
                delayed = false,
            },
            [1] = {
                name = "Loaded",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "inventoryPackId",
                type = "genericdb",
            },
            [1] = {
                name = "players",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/SaveOpenWorld.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "JanuaryDemo_Setup";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup";
    self.eAddedPlayer = nil;
    self.eLocalPlayer = nil;
    self.box_InventoryPackModifier_2 = cbox:CreateBox("Domino/System/InventoryPackModifier.lua");
    l0 = self.box_InventoryPackModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryPackModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|82874059");
    l0:SetConnections({
        -- Loaded,
        [1] = self.f_box_InventoryPackModifier_2_Loaded,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|748434160");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_GetPlayerGender_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayerGender.debug.lua");
    l0 = self.box_GetPlayerGender_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGender_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|944486817");
    l0:SetConnections({
        -- Female,
        [0] = self.f_box_GetPlayerGender_10_Female,
        -- Male,
        [1] = self.f_box_GetPlayerGender_10_Male,
    });
    self.box_CoopActivePlayers_1 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1640038727");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_1_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_1_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_1_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_1_TwoPlayers,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetDemoType_3();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1636306457", "1636306457", "JanuaryDemo_Setup", "In", "box_GetDemoType_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_7_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1577071273", "1577071273", "JanuaryDemo_Setup", "box_GetActivityFact_7.FactNotSet", "box_GetLocalPlayer_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_11_Equipped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|419701845", "419701845", "JanuaryDemo_Setup", "box_EquipWolfskinItem_11.Equipped", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_InventoryPackModifier_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_5();
    l0 = self.box_InventoryPackModifier_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|506032643", "506032643", "JanuaryDemo_Setup", "box_InventoryPackModifier_2.Loaded", "box_SetActivityFact_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_18_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_12();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|289133723", "289133723", "JanuaryDemo_Setup", "box_EquipWolfskinItem_18.Equipped", "box_EquipWolfskinItem_12.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_23_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGender_10();
    l0 = self.box_GetPlayerGender_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|2140484390", "2140484390", "JanuaryDemo_Setup", "box_GetLocalPlayer_v2_23.Out", "box_GetPlayerGender_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_EquipWolfskinItem_20_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_15();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1346874978", "1346874978", "JanuaryDemo_Setup", "box_EquipWolfskinItem_20.Equipped", "box_EquipWolfskinItem_15.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_16_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_13();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|600014753", "600014753", "JanuaryDemo_Setup", "box_EquipWolfskinItem_16.Equipped", "box_EquipWolfskinItem_13.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryPackModifier_2();
    l0 = self.box_MultipleOR_14;
    l1 = self.box_InventoryPackModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1738679465", "1738679465", "JanuaryDemo_Setup", "box_MultipleOR_14.Out", "box_InventoryPackModifier_2.Load", l0:GetLuaBox(), l1:GetLuaBox());
    -- Load
    l1:Exec(0, params);
end;

function export:f_box_EquipWolfskinItem_15_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_16();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1341218695", "1341218695", "JanuaryDemo_Setup", "box_EquipWolfskinItem_15.Equipped", "box_EquipWolfskinItem_16.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_10_Female()
    local params, l0, l1;
    params = self:OnEnter_box_EquipWolfskinItem_18();
    l0 = self.box_GetPlayerGender_10;
    l1 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1038608499", "1038608499", "JanuaryDemo_Setup", "box_GetPlayerGender_10.Female", "box_EquipWolfskinItem_18.Equip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Equip
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGender_10_Male()
    local params, l0, l1;
    params = self:OnEnter_box_EquipWolfskinItem_9();
    l0 = self.box_GetPlayerGender_10;
    l1 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|530108866", "530108866", "JanuaryDemo_Setup", "box_GetPlayerGender_10.Male", "box_EquipWolfskinItem_9.Equip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Equip
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_12_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_19();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|887617896", "887617896", "JanuaryDemo_Setup", "box_EquipWolfskinItem_12.Equipped", "box_EquipWolfskinItem_19.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_8_A_contains_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|350642727", "350642727", "JanuaryDemo_Setup", "box_Compare_Strings_8.A_contains_B", "box_CoopActivePlayers_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_EquipWolfskinItem_13_Equipped()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|231174579", "231174579", "JanuaryDemo_Setup", "box_EquipWolfskinItem_13.Equipped", "box_MultipleOR_14.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityFact_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SaveOpenWorldBox_6();
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|2060327729", "2060327729", "JanuaryDemo_Setup", "box_SetActivityFact_5.Out", "box_SaveOpenWorldBox_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_1_PlayerAdded()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_1_PlayerAdded();
    params = self:OnEnter_box_GetActivityFact_7();
    l0 = self.box_CoopActivePlayers_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1543398638", "1543398638", "JanuaryDemo_Setup", "box_CoopActivePlayers_1.PlayerAdded", "box_GetActivityFact_7.GetFact", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetFact
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_1_PlayerRemoved()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_1_PlayerRemoved();
    params = self:OnEnter_box_Simple_Node_4();
    l0 = self.box_CoopActivePlayers_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|855081058", "855081058", "JanuaryDemo_Setup", "box_CoopActivePlayers_1.PlayerRemoved", "box_Simple_Node_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_19_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_22();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|2086114870", "2086114870", "JanuaryDemo_Setup", "box_EquipWolfskinItem_19.Equipped", "box_EquipWolfskinItem_22.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_22_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_11();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|434786639", "434786639", "JanuaryDemo_Setup", "box_EquipWolfskinItem_22.Equipped", "box_EquipWolfskinItem_11.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EquipWolfskinItem_9_Equipped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    local clone = l0;
    params = self:OnEnter_box_EquipWolfskinItem_20();
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|960487739", "960487739", "JanuaryDemo_Setup", "box_EquipWolfskinItem_9.Equipped", "box_EquipWolfskinItem_20.Equip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Equip
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetDemoType_3_Out()
    local params, l0;
    self:OnExit_box_GetDemoType_3_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_8();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|2045938491", "2045938491", "JanuaryDemo_Setup", "box_GetDemoType_3.Out", "box_Compare_Strings_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_GetActivityFact_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|2239204");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_7_FactNotSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015185783663068",
        -- Fact,
        [1] = "CoopInitDone",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|14521788");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_11_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015340963376307",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|23691804");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_InventoryPackModifier_2()
    local params;
    DrawTextToScreen("Comment: Modify Coop player inventory", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'InventoryPackModifier')-- Comment: Modify Coop player inventory");
    params = {
        -- inventoryPackId,
        [0] = "9015360166127009",
        -- players,
        [1] = self.eAddedPlayer,
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|430069854");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_18_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015188627111588",
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|430361454");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|616289043");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_20_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015340966938238",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|635379480");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_16_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015340967417913",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|836060735");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_15_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015340964185720",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGender_10()
    local params;
    params = {
        -- PlayerID,
        [0] = self.eLocalPlayer,
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|975214671");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_12_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015340964285457",
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1073012414");
    l0:SetConnections({
        -- A_contains_B,
        [0] = self.f_box_Compare_Strings_8_A_contains_B,
    });
    params = {
        -- A,
        [0] = self._sld_type_box_GetDemoType_3,
        -- B,
        [1] = "JanuaryDemo",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1114180071");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_13_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015340962899126",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1603195332");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_5_Out,
    });
    params = {
        -- Fact,
        [0] = "CoopInitDone",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1829885775");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_19_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015340967148987",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1939542022");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_22_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015340967484541",
    };
    return params;
end;

function export:OnEnter_box_EquipWolfskinItem_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EquipWolfskinItem.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquipWolfskinItem_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|1957114603");
    l0:SetConnections({
        -- Equipped,
        [0] = self.f_box_EquipWolfskinItem_9_Equipped,
    });
    params = {
        -- Entity,
        [0] = self.eAddedPlayer,
        -- itemDescriptorID,
        [1] = "9015188627116067",
    };
    return params;
end;

function export:OnEnter_box_SaveOpenWorldBox_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SaveOpenWorld.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SaveOpenWorldBox_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|2062444235");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetDemoType_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDemoType_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Master\\Bowmore_Ambiant.domino|@JanuaryDemo_Setup|2104815110");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDemoType_3_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_1_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_1;
    self.eAddedPlayer = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_1_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_1;
    self.eAddedPlayer = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetDemoType_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDemoType.lua")];
    self._sld_type_box_GetDemoType_3 = l0:GetDataOutValue(0);
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
