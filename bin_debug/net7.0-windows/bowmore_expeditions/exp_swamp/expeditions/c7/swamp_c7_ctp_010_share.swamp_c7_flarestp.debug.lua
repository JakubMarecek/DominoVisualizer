LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_swamp/expeditions/c7/swamp_c7_ctp_010_share.domino
-- User graph: Swamp_C7_FlareSTP
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
    Globals.Swamp_C7_CTP_010_Share = nil;
    Globals.Swamp_C7_CTP_010_Share = {
        b_ReinforcementElitSpawned = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Swamp/Expeditions/C7/Swamp_C7_CTP_010_Share.Swamp_C7_FlareSTP.debug.lua")] = {
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
    self._name = "Swamp_C7_FlareSTP";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP";
    self.flarestp_used_once = DummyFunction;
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|120823841");
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
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|584677170");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|586616362");
    l0:SetConnections({
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|901511143");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|999201117");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_OnceOnly_v3_4 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1101223600");
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
                [0] = self.f_box_OnceOnly_v3_4_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1132228825");
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
    self.box_OnceOnly_v3_11 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1314596450");
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
                [0] = self.f_box_OnceOnly_v3_11_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1361097814");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1637514023");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5_flarestp_used,
        -- ToValidateSTP_01_User,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5_ToValidateSTP_01_User,
        -- ToValidateSTP_02_User,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5_ToValidateSTP_02_User,
        -- ToValidateSTP_03_User,
        [3] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5_ToValidateSTP_03_User,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|2133196945");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
end;

function export:Cleanup()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|917262769", "917262769", "Swamp_C7_FlareSTP", "Cleanup", "box_OutputOrder_v2_16.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In()
    local l0;
    l0 = self.box_OnceOnly_v3_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|284246229", "284246229", "Swamp_C7_FlareSTP", "In", "box_OnceOnly_v3_4.In", self, l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|203347936", "203347936", "Swamp_C7_FlareSTP", "box_Simple_Node_21.Out", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1358545330", "1358545330", "Swamp_C7_FlareSTP", "box_MultipleOR_6.Out", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|631459164", "631459164", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_17.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1657096351", "1657096351", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_17.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_SetInteger_v2_9_Out()
    self:OnExit_box_SetInteger_v2_9_Out();
end;

function export:f_box_MultipleOR_13_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_13;
    l1 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|322384624", "322384624", "Swamp_C7_FlareSTP", "box_MultipleOR_13.Out", "box_OnceOnly_v3_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1348110585", "1348110585", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1722822206", "1722822206", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|2097533827", "2097533827", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1829458171", "1829458171", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7.flarestp_used", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1470548719", "1470548719", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_4_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = self.box_OnceOnly_v3_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|932269872", "932269872", "Swamp_C7_FlareSTP", "box_OnceOnly_v3_4.Out", "box_OutputOrder_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_MultipleOR_14;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1257333654", "1257333654", "Swamp_C7_FlareSTP", "box_MultipleOR_14.Out", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_11_Out_0()
    local l0;
    l0 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1061695340", "1061695340", "Swamp_C7_FlareSTP", "box_OnceOnly_v3_11.Out", "flarestp_used_once", l0:GetLuaBox(), self);
    self:flarestp_used_once();
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1739765271", "1739765271", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12.flarestp_used", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1006114346", "1006114346", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|57846009", "57846009", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_16.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_5.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1945689299", "1945689299", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_16.Out", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1141249910", "1141249910", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_5.flarestp_used", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5_ToValidateSTP_01_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1534018047", "1534018047", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_5.ToValidateSTP_01_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5_ToValidateSTP_02_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|217923654", "217923654", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_5.ToValidateSTP_02_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5_ToValidateSTP_03_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1356072270", "1356072270", "Swamp_C7_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_5.ToValidateSTP_03_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|2151030", "2151030", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_15.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|2071644963", "2071644963", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_15.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1706259319", "1706259319", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_15.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_15_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|434777455", "434777455", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_15.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|959407347", "959407347", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_15.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1064881202", "1064881202", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_15.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1212205782", "1212205782", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_10.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_5.OutdoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1062350528", "1062350528", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_10.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_5.OutdoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1030126500", "1030126500", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_10.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_5.OutdoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1035300279", "1035300279", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_8.Out", "box_SetInteger_v2_9.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1605691382", "1605691382", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_8.Out", "box_GroupAddToGroup_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|760408099", "760408099", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_8.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|716432026", "716432026", "Swamp_C7_FlareSTP", "box_OutputOrder_v2_8.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupAddToGroup_v2_2_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1735412034", "1735412034", "Swamp_C7_FlareSTP", "box_GroupAddToGroup_v2_2.Out", "box_GroupAddToGroup_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_MultipleOR_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|320988164", "320988164", "Swamp_C7_FlareSTP", "box_MultipleOR_18.Out", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|@DisableFlareSTPIndoor");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|387074602");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|499780963");
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

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_1()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109699435987481117",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109699348613837217",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_7()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109740064046069561",
        -- FlareSTP_Indoor_02,
        [1] = "2109740103497692997",
        -- FlareSTP_Indoor_03,
        [2] = "2109740102900004673",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_12()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109739961231095355",
        -- FlareSTP_Indoor_02,
        [1] = "2109739947507332658",
        -- FlareSTP_Indoor_03,
        [2] = "2109740025930331834",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1490811417");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1625220021");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#ACE2D9DE",
        -- ToGroup,
        [1] = "#4B8F54C8",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_5()
    local params;
    params = {
        -- FlareSTP_Outdoor_01,
        [0] = "2109682105893007372",
        -- FlareSTP_Outdoor_02,
        [1] = "2109682109542051856",
        -- FlareSTP_Outdoor_03,
        [2] = "2109682109818875924",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1760617318");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
                [3] = self.f_box_OutputOrder_v2_15_Out_3,
                [4] = self.f_box_OutputOrder_v2_15_Out_4,
                [5] = self.f_box_OutputOrder_v2_15_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|1955624201");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|2033973311");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
                [3] = self.f_box_OutputOrder_v2_8_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Swamp\\Expeditions\\C7\\Swamp_C7_CTP_010_Share.domino|@Swamp_C7_FlareSTP|2055266421");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_2_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#A21E7AC0",
        -- ToGroup,
        [1] = "#4B8F54C8",
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_9_Out()
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
