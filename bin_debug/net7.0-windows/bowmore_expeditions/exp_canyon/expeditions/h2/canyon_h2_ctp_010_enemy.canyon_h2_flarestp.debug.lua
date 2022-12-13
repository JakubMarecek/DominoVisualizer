LUAC02 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_enemy.domino
-- User graph: Canyon_H2_FlareSTP
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="AutoDisableTimer" Type="Core|float" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
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
    Globals.Canyon_H2_CTP_010_Enemy = nil;
    Globals.Canyon_H2_CTP_010_Enemy = {
        iExtractionPOIIndex = 0,
        iPackagePositionIndex = 0,
        iDifficulty = 0,
        ePackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_FlareSTP.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cleanup",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "flarestp_used_once",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "AutoDisableTimer",
                type = "float",
            },
        },
        dataInCount = 1,
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
    self._name = "Canyon_H2_FlareSTP";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP";
    self.flarestp_used_once = DummyFunction;
    self.Started = DummyFunction;
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|101050849");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|265238483");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|270835787");
    l0:SetConnections({
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|356111998");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|674339635");
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
        [0] = self.f_box_MultipleOR_28_Out,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|937838253");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1085288013");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21_Validated_User_03,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1140525185");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11_flarestp_used,
        -- ToValidateSTP_01_User,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11_ToValidateSTP_01_User,
        -- ToValidateSTP_02_User,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11_ToValidateSTP_02_User,
        -- ToValidateSTP_03_User,
        [3] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11_ToValidateSTP_03_User,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1161363274");
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
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1169039393");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1353968256");
    l0:SetConnections({
        -- Validated_User_01,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22_Validated_User_01,
        -- Validated_User_02,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22_Validated_User_02,
        -- Validated_User_03,
        [2] = self.f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22_Validated_User_03,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1402530543");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1528677624");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
    self.box_OnceOnly_v3_8 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1568480192");
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
                [0] = self.f_box_OnceOnly_v3_8_Out_0,
            },
            count = 1,
        },
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1599210126");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1629375024");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1650056111");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_FlareSTP_Indoor_Unit.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1938536239");
    l0:SetConnections({
        -- flarestp_used,
        [0] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26_flarestp_used,
        -- ToCleanupWhenEnoughSTPsAreUsed,
        [1] = self.f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26_ToCleanupWhenEnoughSTPsAreUsed,
    });
    self.box_OnceOnly_v3_7 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|2034169340");
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
                [0] = self.f_box_OnceOnly_v3_7_Out_0,
            },
            count = 1,
        },
    });
end;

function export:Cleanup()
    local l0;
    l0 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1512651709", "1512651709", "Canyon_H2_FlareSTP", "Cleanup", "box_MultipleOR_28.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Start()
    local l0;
    l0 = self.box_OnceOnly_v3_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1436469965", "1436469965", "Canyon_H2_FlareSTP", "Start", "box_OnceOnly_v3_7.In", self, l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1202684669", "1202684669", "Canyon_H2_FlareSTP", "box_Simple_Node_23.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1517460397", "1517460397", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20.flarestp_used", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1627113889", "1627113889", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1017232995", "1017232995", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1893234778", "1893234778", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1385021796", "1385021796", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_10_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_10;
    l1 = self.box_OnceOnly_v3_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|874220621", "874220621", "Canyon_H2_FlareSTP", "box_MultipleOR_10.Out", "box_OnceOnly_v3_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupAddToGroup_v2_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_14();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|920915531", "920915531", "Canyon_H2_FlareSTP", "box_GroupAddToGroup_v2_9.Out", "box_GroupAddToGroup_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_15_Out()
    self:OnExit_box_SetInteger_v2_15_Out();
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_15();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|320502038", "320502038", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_1.Out", "box_SetInteger_v2_15.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|328478706", "328478706", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_1.Out", "box_Delay_v5_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|925710546", "925710546", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_1.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|2039344364", "2039344364", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_1.Out", "box_OutputOrder_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|560904095", "560904095", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_1.Out", "box_Delay_v5_27.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1248303427", "1248303427", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_6.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_11.OutdoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|2013453708", "2013453708", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_6.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_11.OutdoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|857228084", "857228084", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_6.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_11.OutdoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- OutdoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_MultipleOR_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1605423463", "1605423463", "Canyon_H2_FlareSTP", "box_MultipleOR_28.Out", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1858739216", "1858739216", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1470013842", "1470013842", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1718315035", "1718315035", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1024778692", "1024778692", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|441690631", "441690631", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|704005577", "704005577", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|199819519", "199819519", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_11.flarestp_used", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11_ToValidateSTP_01_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|562503755", "562503755", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_11.ToValidateSTP_01_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11_ToValidateSTP_02_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|518059339", "518059339", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_11.ToValidateSTP_02_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11_ToValidateSTP_03_User()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|286343169", "286343169", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_11.ToValidateSTP_03_User", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|677053881", "677053881", "Canyon_H2_FlareSTP", "box_MultipleOR_12.Out", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1356746164", "1356746164", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16.flarestp_used", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1677519279", "1677519279", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|490810222", "490810222", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_2.Out", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_11.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1946225201", "1946225201", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_2.Out", "box_MultipleOR_12.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22_Validated_User_01()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|946877579", "946877579", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22.Validated_User_01", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24.ToValidateUser_01", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_01
    l1:Exec(0, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22_Validated_User_02()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1209192525", "1209192525", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22.Validated_User_02", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24.ToValidateUser_02", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_02
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22_Validated_User_03()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22;
    l1 = self.box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1658779225", "1658779225", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22.Validated_User_03", "box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24.ToValidateUser_03", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToValidateUser_03
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_23();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1624243794", "1624243794", "Canyon_H2_FlareSTP", "box_MultipleOR_17.Out", "box_Simple_Node_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|730944391", "730944391", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_19.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1160341977", "1160341977", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_19.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1579436017", "1579436017", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_19.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|796711182", "796711182", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_19.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16.Cleanup", clone:GetLuaBox(), l0:GetLuaBox());
    -- Cleanup
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1783383936", "1783383936", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|977256457", "977256457", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|2113456680", "2113456680", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1411049124", "1411049124", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1404126304", "1404126304", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_13_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1195230306", "1195230306", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|462392087", "462392087", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1293781341", "1293781341", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_13_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1496715581", "1496715581", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16.IndoorSTP_01", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_01
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|630207888", "630207888", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16.IndoorSTP_02", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_02
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_13_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16();
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|2030671450", "2030671450", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_13.Out", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16.IndoorSTP_03", clone:GetLuaBox(), l0:GetLuaBox());
    -- IndoorSTP_03
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_9();
    l0 = self.box_Delay_v5_5;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|644534103", "644534103", "Canyon_H2_FlareSTP", "box_Delay_v5_5.TimeElapsed", "box_GroupAddToGroup_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_8_Out_0()
    local l0;
    l0 = self.box_OnceOnly_v3_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1630124611", "1630124611", "Canyon_H2_FlareSTP", "box_OnceOnly_v3_8.Out", "flarestp_used_once", l0:GetLuaBox(), self);
    self:flarestp_used_once();
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|713010035", "713010035", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4.flarestp_used", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|898674674", "898674674", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_18_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_18;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|368335647", "368335647", "Canyon_H2_FlareSTP", "box_MultipleOR_18.Out", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_27;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1905207141", "1905207141", "Canyon_H2_FlareSTP", "box_Delay_v5_27.TimeElapsed", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1544198789", "1544198789", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_29.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|553528001", "553528001", "Canyon_H2_FlareSTP", "box_OutputOrder_v2_29.Out", "Started", clone:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26_flarestp_used()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|572672256", "572672256", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.flarestp_used", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26_ToCleanupWhenEnoughSTPsAreUsed()
    local l0, l1;
    l0 = self.box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1022427069", "1022427069", "Canyon_H2_FlareSTP", "box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26.ToCleanupWhenEnoughSTPsAreUsed", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_7_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_OnceOnly_v3_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1601805612", "1601805612", "Canyon_H2_FlareSTP", "box_OnceOnly_v3_7.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|@DisableFlareSTPIndoor");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_20()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109700351050394344",
        -- FlareSTP_Indoor_02,
        [1] = "2109700573740673925",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_24()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109700462425942898",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_25()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109700547549342594",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|356780283");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_9_Out,
    });
    params = {
        -- FromGroup,
        [0] = "#CAC04D14",
        -- ToGroup,
        [1] = "#4B8F54C8",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|454462535");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_15_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|543374876");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
                [2] = self.f_box_OutputOrder_v2_1_Out_2,
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
                [4] = self.f_box_OutputOrder_v2_1_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|650478605");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_3()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109700499038022519",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_21()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109700506698918783",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_11()
    local params;
    params = {
        -- FlareSTP_Outdoor_01,
        [0] = "2109699791047897144",
        -- FlareSTP_Outdoor_02,
        [1] = "2109699810767417456",
        -- FlareSTP_Outdoor_03,
        [2] = "2109699807613300833",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_16()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109700751994399780",
        -- FlareSTP_Indoor_02,
        [1] = "2109700750083894301",
        -- FlareSTP_Indoor_03,
        [2] = "2109700746046876694",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1263986279");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Outdoor_TriggerValidator_22()
    local params;
    params = {
        -- BadPositionHelper,
        [0] = "2109700022816747668",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1477951892");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1504714001");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 11,
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
                [2] = self.f_box_OutputOrder_v2_13_Out_2,
                [3] = self.f_box_OutputOrder_v2_13_Out_3,
                [4] = self.f_box_OutputOrder_v2_13_Out_4,
                [5] = self.f_box_OutputOrder_v2_13_Out_5,
                [6] = self.f_box_OutputOrder_v2_13_Out_6,
                [7] = self.f_box_OutputOrder_v2_13_Out_7,
                [8] = self.f_box_OutputOrder_v2_13_Out_8,
                [9] = self.f_box_OutputOrder_v2_13_Out_9,
                [10] = self.f_box_OutputOrder_v2_13_Out_10,
            },
            count = 11,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_4()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109700619192249229",
        -- FlareSTP_Indoor_02,
        [1] = "2109700616568712073",
        -- FlareSTP_Indoor_03,
        [2] = "2109700623881481105",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = self.AutoDisableTimer,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1895570680");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_FlareSTP|1935632146");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "#CAC04D14",
        -- ToGroup,
        [1] = "#7AC96E58",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_FlareSTP_Indoor_Unit_26()
    local params;
    params = {
        -- FlareSTP_Indoor_01,
        [0] = "2109700674232003483",
        -- FlareSTP_Indoor_02,
        [1] = "2109700663771409303",
        -- FlareSTP_Indoor_03,
        [2] = "2109700657425427347",
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Lib_Expeditions_Gameplay.iMaxUsedFlareSTP = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:flarestp_used_once()
    
end;
function export:Started()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Cleanup" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="flarestp_used_once" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="AutoDisableTimer" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
