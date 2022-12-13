LUAC	S  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_010/key01_010_b20.domino
-- User graph: KEY01_010_B20_PlaneDestroyedListener
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetInventoryItemQuantity.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B20.KEY01_010_B20_PlaneDestroyedListener.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "KEY01_010_B20_PlaneDestroyedListener";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener";
    self.box_EntityStatusListener_4 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|471360756");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_4_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_4_Unloaded,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|1004652024");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|1204804594");
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
    self.box_VehicleDamageListener_v2_5 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|1791479503");
    l0:SetConnections({
        -- Broken,
        [1] = self.f_box_VehicleDamageListener_v2_5_Broken,
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_5_Destroyed,
        -- Disabled,
        [3] = self.f_box_VehicleDamageListener_v2_5_Disabled,
        -- OnFire,
        [8] = self.f_box_VehicleDamageListener_v2_5_OnFire,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_4();
    l0 = self.box_EntityStatusListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|568609044", "568609044", "KEY01_010_B20_PlaneDestroyedListener", "In", "box_EntityStatusListener_4.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_4_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_5();
    l0 = self.box_EntityStatusListener_4;
    l1 = self.box_VehicleDamageListener_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|534789060", "534789060", "KEY01_010_B20_PlaneDestroyedListener", "box_EntityStatusListener_4.Loaded", "box_VehicleDamageListener_v2_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_4_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_5();
    l0 = self.box_EntityStatusListener_4;
    l1 = self.box_VehicleDamageListener_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|1355190595", "1355190595", "KEY01_010_B20_PlaneDestroyedListener", "box_EntityStatusListener_4.Unloaded", "box_VehicleDamageListener_v2_5.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_8_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_7();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|1741919268", "1741919268", "KEY01_010_B20_PlaneDestroyedListener", "box_Compare_Integers_8.A_eq_B", "box_ActivityRetry_7.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_1();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|268846851", "268846851", "KEY01_010_B20_PlaneDestroyedListener", "box_MultipleOR_6.Out", "box_ActivityRetry_1.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetInventoryItemQuantity_2();
    l0 = self.box_MultipleOR_3;
    l1 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|326584609", "326584609", "KEY01_010_B20_PlaneDestroyedListener", "box_MultipleOR_3.Out", "box_GetInventoryItemQuantity_2.GetNumberOfItems", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetNumberOfItems
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleDamageListener_v2_5_Broken()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_5;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|592057455", "592057455", "KEY01_010_B20_PlaneDestroyedListener", "box_VehicleDamageListener_v2_5.Broken", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_5_Destroyed()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|1705389775", "1705389775", "KEY01_010_B20_PlaneDestroyedListener", "box_VehicleDamageListener_v2_5.Destroyed", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleDamageListener_v2_5_Disabled()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_5;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|179824238", "179824238", "KEY01_010_B20_PlaneDestroyedListener", "box_VehicleDamageListener_v2_5.Disabled", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VehicleDamageListener_v2_5_OnFire()
    local l0, l1;
    l0 = self.box_VehicleDamageListener_v2_5;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|1862122283", "1862122283", "KEY01_010_B20_PlaneDestroyedListener", "box_VehicleDamageListener_v2_5.OnFire", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetInventoryItemQuantity_2_Out()
    local params, l0;
    self:OnExit_box_GetInventoryItemQuantity_2_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_8();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|1484159980", "1484159980", "KEY01_010_B20_PlaneDestroyedListener", "box_GetInventoryItemQuantity_2.Out", "box_Compare_Integers_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ActivityRetry_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|351910809");
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

function export:OnEnter_box_EntityStatusListener_4()
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

function export:OnEnter_box_Compare_Integers_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|826348755");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_8_A_eq_B,
    });
    params = {
        -- A,
        [0] = self._sld_numItems_box_GetInventoryItemQuantity_2,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|1332341867");
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

function export:OnEnter_box_VehicleDamageListener_v2_5()
    local params;
    params = {
        -- Vehicle,
        [0] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_GetInventoryItemQuantity_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetInventoryItemQuantity_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20_PlaneDestroyedListener|2029460054");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetInventoryItemQuantity_2_Out,
    });
    params = {
        -- itemDescriptorID,
        [0] = "9015247148748112",
        -- players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_GetInventoryItemQuantity_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetInventoryItemQuantity.lua")];
    self._sld_numItems_box_GetInventoryItemQuantity_2 = l0:GetDataOutValue(0);
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
