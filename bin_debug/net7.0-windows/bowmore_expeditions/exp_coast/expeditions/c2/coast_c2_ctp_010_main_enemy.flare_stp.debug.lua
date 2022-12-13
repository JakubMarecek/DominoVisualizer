LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c2/coast_c2_ctp_010_main_enemy.domino
-- User graph: Flare_STP
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
    Globals.Coast_C2_CTP_010_Main_Enemy = nil;
    Globals.Coast_C2_CTP_010_Main_Enemy = {
        i_CurrentSize = 0,
        i_Difficulty = 0,
        i_PackagePositionIndex = 0,
        i_ExtractionPOIIndex = 0,
        e_PackageSpawner = nil,
        i_PlayerSpawnPOIIndex = 0,
        b_NextWaveUntilCombat = true,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.Flare_STP.debug.lua")] = {
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
                name = "flarestp_used_once",
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
    self._name = "Flare_STP";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP";
    self.flarestp_used_once = DummyFunction;
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|765369");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|409023043");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|416519102");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27_Validated_User_03,
    });
    self.box_OnceOnly_v3_10 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|484111995");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_10_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|588550216");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|597812648");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|818471363");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_OnceOnly_v3_24 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|957512308");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_24_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|960218326");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1196373007");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1336148448");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4_flarestp_used,
        -- ToValidateSTP_01_User,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4_ToValidateSTP_01_User,
        -- ToValidateSTP_02_User,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4_ToValidateSTP_02_User,
        -- ToValidateSTP_03_User,
        [3] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4_ToValidateSTP_03_User,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1378433070");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1462220536");
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
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1796717299");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14_ToCleanupWhenEnoughSTPsAreUsed,
    });
end;

function export:Cleanup()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1924371159", "1924371159", "Flare_STP", "Cleanup", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In()
    local l0;
    l0 = self.box_OnceOnly_v3_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1132985605", "1132985605", "Flare_STP", "In", "box_OnceOnly_v3_10.In", self, l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|125457410", "125457410", "Flare_STP", "box_Simple_Node_29.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_2_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_2;
    l1 = self.box_OnceOnly_v3_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|717810620", "717810620", "Flare_STP", "box_MultipleOR_2.Out", "box_OnceOnly_v3_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_13();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|832851442", "832851442", "Flare_STP", "box_OutputOrder_v2_17.Out", "box_SetInteger_v2_13.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1400071968", "1400071968", "Flare_STP", "box_OutputOrder_v2_17.Out", "box_GroupAddToGroup_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1749983155", "1749983155", "Flare_STP", "box_OutputOrder_v2_17.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|197129833", "197129833", "Flare_STP", "box_OutputOrder_v2_17.Out", "box_OutputOrder_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1384332181", "1384332181", "Flare_STP", "box_OutputOrder_v2_23.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|845856649", "845856649", "Flare_STP", "box_OutputOrder_v2_23.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|562437017", "562437017", "Flare_STP", "box_OutputOrder_v2_23.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|165749958", "165749958", "Flare_STP", "box_OutputOrder_v2_25.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|121305542", "121305542", "Flare_STP", "box_OutputOrder_v2_25.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1027569875", "1027569875", "Flare_STP", "box_OutputOrder_v2_25.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1245440405", "1245440405", "Flare_STP", "box_OutputOrder_v2_9.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1964432984", "1964432984", "Flare_STP", "box_OutputOrder_v2_9.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1926495400", "1926495400", "Flare_STP", "box_OutputOrder_v2_9.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|396519612", "396519612", "Flare_STP", "box_OutputOrder_v2_8.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_4.OutdoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|860273160", "860273160", "Flare_STP", "box_OutputOrder_v2_8.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_4.OutdoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1903335763", "1903335763", "Flare_STP", "box_OutputOrder_v2_8.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_4.OutdoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_21_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_21;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1726884824", "1726884824", "Flare_STP", "box_MultipleOR_21.Out", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|76173706", "76173706", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1340900863", "1340900863", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|2090324105", "2090324105", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_OnceOnly_v3_10_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_OnceOnly_v3_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1197774994", "1197774994", "Flare_STP", "box_OnceOnly_v3_10.Out", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|662053285", "662053285", "Flare_STP", "box_MultipleOR_12.Out", "box_Simple_Node_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1967374525", "1967374525", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5.flarestp_used", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1698187039", "1698187039", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1407436771", "1407436771", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.flarestp_used", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|231880774", "231880774", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_24_Out_0()
    local l0;
    l0 = self.box_OnceOnly_v3_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1048788728", "1048788728", "Flare_STP", "box_OnceOnly_v3_24.Out", "flarestp_used_once", l0:GetLuaBox(), self);
    self:flarestp_used_once();
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1652660419", "1652660419", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19.flarestp_used", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|83290406", "83290406", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|2116299648", "2116299648", "Flare_STP", "box_OutputOrder_v2_1.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|844817784", "844817784", "Flare_STP", "box_OutputOrder_v2_1.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|912770043", "912770043", "Flare_STP", "box_OutputOrder_v2_1.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_GroupAddToGroup_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_16();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1685333024", "1685333024", "Flare_STP", "box_GroupAddToGroup_v2_11.Out", "box_GroupAddToGroup_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1036609201", "1036609201", "Flare_STP", "box_OutputOrder_v2_20.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|917289706", "917289706", "Flare_STP", "box_OutputOrder_v2_20.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|985241965", "985241965", "Flare_STP", "box_OutputOrder_v2_20.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|176282913", "176282913", "Flare_STP", "box_OutputOrder_v2_7.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|563059894", "563059894", "Flare_STP", "box_OutputOrder_v2_7.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1701208510", "1701208510", "Flare_STP", "box_OutputOrder_v2_7.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1492832070", "1492832070", "Flare_STP", "box_OutputOrder_v2_7.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1478818317", "1478818317", "Flare_STP", "box_OutputOrder_v2_7.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|693900436", "693900436", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_4.flarestp_used", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4_ToValidateSTP_01_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|656858610", "656858610", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_4.ToValidateSTP_01_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4_ToValidateSTP_02_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|305654832", "305654832", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_4.ToValidateSTP_02_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4_ToValidateSTP_03_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|134631875", "134631875", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_4.ToValidateSTP_03_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1973433534", "1973433534", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22.flarestp_used", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1982472860", "1982472860", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|703444295", "703444295", "Flare_STP", "box_MultipleOR_15.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|503297006", "503297006", "Flare_STP", "box_OutputOrder_v2_3.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1676191127", "1676191127", "Flare_STP", "box_OutputOrder_v2_3.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|247261206", "247261206", "Flare_STP", "box_OutputOrder_v2_3.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|884287773", "884287773", "Flare_STP", "box_OutputOrder_v2_3.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1132588966", "1132588966", "Flare_STP", "box_OutputOrder_v2_3.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|2031891703", "2031891703", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14.flarestp_used", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|303109329", "303109329", "Flare_STP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|669019744", "669019744", "Flare_STP", "box_OutputOrder_v2_6.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_4.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|2011928677", "2011928677", "Flare_STP", "box_OutputOrder_v2_6.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetInteger_v2_13_Out()
    self:OnExit_box_SetInteger_v2_13_Out();
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|@DisableFlareSTPIndoor");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1619714");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
                [3] = self.f_box_OutputOrder_v2_17_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|119480768");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|301682205");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|332989418");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 3,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|381083472");
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

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_27()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109698401646938863",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_5()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109698519087451014",
        -- FlareSTP_Indoor_02,
        [1] = "2109698523810237322",
        -- FlareSTP_Indoor_03,
        [2] = "2109698536799996814",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109698602776398738",
        -- FlareSTP_Indoor_02,
        [1] = "2109698606431734678",
        -- FlareSTP_Indoor_03,
        [2] = "2109698639883406330",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_19()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109698658162183190",
        -- FlareSTP_Indoor_02,
        [1] = "2109698659512749082",
        -- FlareSTP_Indoor_03,
        [2] = "2109698661393894430",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1000612813");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
            },
            count = 3,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1117030524");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_11_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#860A3B69",
        -- ToGroup,
        [1] = "#4B8F54C8",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_28()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109698493988735779",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1270155436");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#860A3B69",
        -- ToGroup,
        [1] = "#7AC96E58",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1318951192");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1332397903");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
                [4] = self.f_box_OutputOrder_v2_7_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_4()
    local params;
    params = {
        -- FlareSTP_Outdoor_01,
        [0] = "2109698341305584357",
        -- FlareSTP_Outdoor_02,
        [1] = "2109698346651224809",
        -- FlareSTP_Outdoor_03,
        [2] = "2109698346827385581",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_22()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109698653481339914",
        -- FlareSTP_Indoor_02,
        [1] = "2109698656039865358",
        -- FlareSTP_Indoor_03,
        [2] = "2109698656943737874",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|1795587642");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
                [3] = self.f_box_OutputOrder_v2_3_Out_3,
                [4] = self.f_box_OutputOrder_v2_3_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_14()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109698648341220350",
        -- FlareSTP_Indoor_02,
        [1] = "2109698650071370754",
        -- FlareSTP_Indoor_03,
        [2] = "2109698651847658502",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|2064291434");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@Flare_STP|2134114555");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_13_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Lib_Expeditions_Gameplay.iMaxUsedFlareSTP = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:flarestp_used_once()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Cleanup" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="flarestp_used_once" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
