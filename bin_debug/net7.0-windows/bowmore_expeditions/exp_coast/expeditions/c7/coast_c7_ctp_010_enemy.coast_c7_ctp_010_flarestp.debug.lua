LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c7/coast_c7_ctp_010_enemy.domino
-- User graph: Coast_C7_CTP_010_FlareSTP
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/Library/Sp/Lib_Expeditions_Gameplay.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Coast_C7_CTP_010_Enemy = nil;
    Globals.Coast_C7_CTP_010_Enemy = {
        gTrackedPlayers = nil,
        iC7CurrentNumberOfEnemies = 0,
        bTrackerNotYetActive = true,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.Coast_C7_CTP_010_FlareSTP.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cleanup",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Flare_STP_Used_Once",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cleanup",
            },
            [1] = {
                name = "IndoorSTP_01",
            },
            [2] = {
                name = "IndoorSTP_02",
            },
            [3] = {
                name = "IndoorSTP_03",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "flarestp_used",
                delayed = false,
            },
            [1] = {
                name = "ToCleanupWhenEnoughSTPsAreUsed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FlareSTP_Indoor_01",
                type = "entity",
            },
            [1] = {
                name = "FlareSTP_Indoor_02",
                type = "entity",
            },
            [2] = {
                name = "FlareSTP_Indoor_03",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cleanup",
            },
            [1] = {
                name = "OutdoorSTP_01",
            },
            [2] = {
                name = "OutdoorSTP_02",
            },
            [3] = {
                name = "OutdoorSTP_03",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "flarestp_used",
                delayed = false,
            },
            [1] = {
                name = "ToValidateSTP_01_User",
                delayed = false,
            },
            [2] = {
                name = "ToValidateSTP_02_User",
                delayed = false,
            },
            [3] = {
                name = "ToValidateSTP_03_User",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "FlareSTP_Outdoor_01",
                type = "entity",
            },
            [1] = {
                name = "FlareSTP_Outdoor_02",
                type = "entity",
            },
            [2] = {
                name = "FlareSTP_Outdoor_03",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ToValidateUser_01",
            },
            [1] = {
                name = "ToValidateUser_02",
            },
            [2] = {
                name = "ToValidateUser_03",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Validated_User_01",
                delayed = false,
            },
            [1] = {
                name = "Validated_User_02",
                delayed = false,
            },
            [2] = {
                name = "Validated_User_03",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "BadPositionHelper",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
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
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C7_CTP_010_FlareSTP";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP";
    self.Flare_STP_Used_Once = DummyFunction;
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|26678615");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_OnceOnly_v3_14 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|189948986");
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
                [0] = self.f_box_OnceOnly_v3_14_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|519567305");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|522215137");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|761963665");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|804394051");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1246986541");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18_Validated_User_03,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1470586504");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1477686378");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1561249893");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10_flarestp_used,
        -- ToValidateSTP_01_User,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10_ToValidateSTP_01_User,
        -- ToValidateSTP_02_User,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10_ToValidateSTP_02_User,
        -- ToValidateSTP_03_User,
        [3] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10_ToValidateSTP_03_User,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1605963882");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4_Validated_User_03,
    });
    self.box_OnceOnly_v3_6 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1942378173");
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
                [0] = self.f_box_OnceOnly_v3_6_Out_0,
            },
            count = 2,
        },
    });
end;

function export:Cleanup()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1851057170", "1851057170", "Coast_C7_CTP_010_FlareSTP", "Cleanup", "box_OutputOrder_v2_13.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In()
    local l0;
    l0 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1254899735", "1254899735", "Coast_C7_CTP_010_FlareSTP", "In", "box_OnceOnly_v3_6.In", self, l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1975850007", "1975850007", "Coast_C7_CTP_010_FlareSTP", "box_Simple_Node_22.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1920385850", "1920385850", "Coast_C7_CTP_010_FlareSTP", "box_MultipleOR_16.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3.Cleanup", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cleanup
    l1:Exec(0, params);
end;

function export:f_box_GroupAddToGroup_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|270013700", "270013700", "Coast_C7_CTP_010_FlareSTP", "box_GroupAddToGroup_v2_11.Out", "box_GroupAddToGroup_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_9_Out()
    self:OnExit_box_SetInteger_v2_9_Out();
end;

function export:f_box_OnceOnly_v3_14_Out_0()
    local l0;
    l0 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|939372228", "939372228", "Coast_C7_CTP_010_FlareSTP", "box_OnceOnly_v3_14.Out", "Flare_STP_Used_Once", l0:GetLuaBox(), self);
    self:Flare_STP_Used_Once();
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|325308179", "325308179", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_17.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1582944403", "1582944403", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_17.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1351228233", "1351228233", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_17.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|502731686", "502731686", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|840089824", "840089824", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1790966686", "1790966686", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1498166329", "1498166329", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|645840502", "645840502", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|744223424", "744223424", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1246881424", "1246881424", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_12.Out", "box_SetInteger_v2_9.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|675352140", "675352140", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_12.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1631037730", "1631037730", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_12.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|338458173", "338458173", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_12.Out", "box_GroupAddToGroup_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|262296565", "262296565", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3.flarestp_used", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3_ToCleanupWhenEnoughSTPsAreUsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1269678209", "1269678209", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3.ToCleanupWhenEnoughSTPsAreUsed", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|2111230289", "2111230289", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1263878889", "1263878889", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|2020393064", "2020393064", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_15_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_15;
    l1 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1542609215", "1542609215", "Coast_C7_CTP_010_FlareSTP", "box_MultipleOR_15.Out", "box_OnceOnly_v3_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1069589080", "1069589080", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|2118545525", "2118545525", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|505304679", "505304679", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|93630785", "93630785", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_10.flarestp_used", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10_ToValidateSTP_01_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|49296988", "49296988", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_10.ToValidateSTP_01_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10_ToValidateSTP_02_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|658095477", "658095477", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_10.ToValidateSTP_02_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10_ToValidateSTP_03_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|345364457", "345364457", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_10.ToValidateSTP_03_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|188335993", "188335993", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|924510672", "924510672", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1052065232", "1052065232", "Coast_C7_CTP_010_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|425275291", "425275291", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_10.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1822790371", "1822790371", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_13.Out", "box_MultipleOR_16.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_6_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_OnceOnly_v3_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|810704160", "810704160", "Coast_C7_CTP_010_FlareSTP", "box_OnceOnly_v3_6.Out", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1636762328", "1636762328", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_8.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_10.OutdoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1480501429", "1480501429", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_8.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_10.OutdoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1022944923", "1022944923", "Coast_C7_CTP_010_FlareSTP", "box_OutputOrder_v2_8.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_10.OutdoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_03
    l0:Exec(3, params);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|@DisableFlareSTPIndoor");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|84232848");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_11_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#163E2C88",
        -- ToGroup,
        [1] = "#4B8F54C8",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|104240224");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_9_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|390402517");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_7()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109698604598834085",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_20()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109700426050845974",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|556205056");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
                [3] = self.f_box_OutputOrder_v2_12_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_3()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109699534943695661",
        -- FlareSTP_Indoor_02,
        [1] = "2109699580135224113",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_19()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109700453282366265",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1039561699");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#163E2C88",
        -- ToGroup,
        [1] = "#7AC96E58",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_18()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109699907555165889",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_5()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109698489616184161",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_10()
    local params;
    params = {
        -- FlareSTP_Outdoor_01,
        [0] = "2109698319170155216",
        -- FlareSTP_Outdoor_02,
        [1] = "2109698320652841684",
        -- FlareSTP_Outdoor_03,
        [2] = "2109698321980338904",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_4()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109698563865850787",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|1802231010");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_FlareSTP|2042206644");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Lib_Expeditions_Gameplay.iMaxUsedFlareSTP = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Flare_STP_Used_Once()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Cleanup" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Flare_STP_Used_Once" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
