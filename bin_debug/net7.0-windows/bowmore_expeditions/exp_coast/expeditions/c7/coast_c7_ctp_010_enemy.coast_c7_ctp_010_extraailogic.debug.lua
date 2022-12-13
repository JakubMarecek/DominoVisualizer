LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c7/coast_c7_ctp_010_enemy.domino
-- User graph: Coast_C7_CTP_010_ExtraAILogic
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Enemy.Coast_C7_CTP_010_ExtraAILogic.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "EnemyHelicopterLoaded",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "EnemyHelicopter",
                type = "entity",
            },
            [1] = {
                name = "EnemyHelicopterGroup",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
            },
            [1] = {
                name = "Group",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "requiresPawnsActive",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
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
    self._name = "Coast_C7_CTP_010_ExtraAILogic";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic";
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|74097302");
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
    self.box_OnceOnly_v3_12 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|361245607");
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
                [0] = self.f_box_OnceOnly_v3_12_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_Exp_Common_EnemyHelicopterCleaner_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_EnemyHelicopterCleaner_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1255207773");
    l0:SetConnections({
        -- EnemyHelicopterLoaded,
        [0] = self.f_box_Brick_Exp_Common_EnemyHelicopterCleaner_9_EnemyHelicopterLoaded,
    });
    self.box_Brick_Exp_Common_EnemyHelicopterCleaner_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_EnemyHelicopterCleaner_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1561304291");
    l0:SetConnections({
        -- EnemyHelicopterLoaded,
        [0] = self.f_box_Brick_Exp_Common_EnemyHelicopterCleaner_10_EnemyHelicopterLoaded,
    });
    self.box_Brick_Exp_Common_EnemyHelicopterCleaner_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Common_EnemyHelicopterCleaner.debug.lua");
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Common_EnemyHelicopterCleaner_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1734198157");
    l0:SetConnections({
        -- EnemyHelicopterLoaded,
        [0] = self.f_box_Brick_Exp_Common_EnemyHelicopterCleaner_4_EnemyHelicopterLoaded,
    });
    self.box_ProximityTrigger_v3_8 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1782923113");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_8_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_8_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_8_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_8_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_8_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_8_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_8_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_8_Use,
    });
    self.box_ProximityTrigger_v3_1 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|2111823114");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_1_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_1_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_1_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_1_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_1_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_1_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_1_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_1_Use,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|894035099", "894035099", "Coast_C7_CTP_010_ExtraAILogic", "In", "box_OutputOrder_v2_11.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_13_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_13;
    l1 = self.box_OnceOnly_v3_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|575573560", "575573560", "Coast_C7_CTP_010_ExtraAILogic", "box_MultipleOR_13.Out", "box_OnceOnly_v3_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_12_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_1();
    l0 = self.box_OnceOnly_v3_12;
    l1 = self.box_ProximityTrigger_v3_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1162827075", "1162827075", "Coast_C7_CTP_010_ExtraAILogic", "box_OnceOnly_v3_12.Out", "box_ProximityTrigger_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1711169759", "1711169759", "Coast_C7_CTP_010_ExtraAILogic", "box_SetContextualStrategy_3.Out", "box_RemoveFromGroup_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveFromGroup_v2_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1883836355", "1883836355", "Coast_C7_CTP_010_ExtraAILogic", "box_RemoveFromGroup_v2_5.Out", "box_GroupAddToGroup_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_14_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|54830808", "54830808", "Coast_C7_CTP_010_ExtraAILogic", "box_GetActivityFact_14.FactNotSet", "box_Simple_Node_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_14_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_15();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1565035140", "1565035140", "Coast_C7_CTP_010_ExtraAILogic", "box_GetActivityFact_14.FactSet", "box_SetContextualStrategy_15.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1331413456", "1331413456", "Coast_C7_CTP_010_ExtraAILogic", "box_SetContextualStrategy_6.Out", "box_RemoveFromGroup_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Exp_Common_EnemyHelicopterCleaner_9_EnemyHelicopterLoaded()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_9;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1196777312", "1196777312", "Coast_C7_CTP_010_ExtraAILogic", "box_Brick_Exp_Common_EnemyHelicopterCleaner_9.EnemyHelicopterLoaded", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Exp_Common_EnemyHelicopterCleaner_10_EnemyHelicopterLoaded()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_10;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|224963877", "224963877", "Coast_C7_CTP_010_ExtraAILogic", "box_Brick_Exp_Common_EnemyHelicopterCleaner_10.EnemyHelicopterLoaded", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Exp_Common_EnemyHelicopterCleaner_4_EnemyHelicopterLoaded()
    local l0, l1;
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_4;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1203700132", "1203700132", "Coast_C7_CTP_010_ExtraAILogic", "box_Brick_Exp_Common_EnemyHelicopterCleaner_4.EnemyHelicopterLoaded", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_8_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_3();
    l0 = self.box_ProximityTrigger_v3_8;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1554851745", "1554851745", "Coast_C7_CTP_010_ExtraAILogic", "box_ProximityTrigger_v3_8.Enter", "box_SetContextualStrategy_3.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_4();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1479496515", "1479496515", "Coast_C7_CTP_010_ExtraAILogic", "box_OutputOrder_v2_11.Out", "box_Brick_Exp_Common_EnemyHelicopterCleaner_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_9();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|102540796", "102540796", "Coast_C7_CTP_010_ExtraAILogic", "box_OutputOrder_v2_11.Out", "box_Brick_Exp_Common_EnemyHelicopterCleaner_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_10();
    l0 = self.box_Brick_Exp_Common_EnemyHelicopterCleaner_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|81436110", "81436110", "Coast_C7_CTP_010_ExtraAILogic", "box_OutputOrder_v2_11.Out", "box_Brick_Exp_Common_EnemyHelicopterCleaner_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_8();
    l0 = self.box_ProximityTrigger_v3_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|693538757", "693538757", "Coast_C7_CTP_010_ExtraAILogic", "box_OutputOrder_v2_11.Out", "box_ProximityTrigger_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|491773973", "491773973", "Coast_C7_CTP_010_ExtraAILogic", "box_OutputOrder_v2_11.Out", "box_GetActivityFact_14.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_1_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_6();
    l0 = self.box_ProximityTrigger_v3_1;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1451992159", "1451992159", "Coast_C7_CTP_010_ExtraAILogic", "box_ProximityTrigger_v3_1.Enter", "box_SetContextualStrategy_6.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|61753628");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|365727403");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_3_Out,
    });
    l0 = self.box_ProximityTrigger_v3_8;
    params = {
        -- ContextualStrategy,
        [0] = "2108981216563702984",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|605056066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_5_Out,
    });
    l0 = self.box_ProximityTrigger_v3_1;
    params = {
        -- Entities,
        [0] = l0:GetDataOutValue(0),
        -- Group,
        [1] = "#6088FBBF",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|616067895");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108869462928134448",
        -- Group,
        [1] = "#43305DFA",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|686565657");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_14_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_14_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015339763398550",
        -- Fact,
        [1] = "package_pickedup",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|859636455");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v3_1;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(0),
        -- ToGroup,
        [1] = "#55261DE5",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1234800960");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_6_Out,
    });
    l0 = self.box_ProximityTrigger_v3_1;
    params = {
        -- ContextualStrategy,
        [0] = "2108773776058489438",
        -- Group,
        [1] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_9()
    local params;
    params = {
        -- EnemyHelicopter,
        [0] = "2109932898342689297",
        -- EnemyHelicopterGroup,
        [1] = "#6088FBBF",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_10()
    local params;
    params = {
        -- EnemyHelicopter,
        [0] = "2109878635725868500",
        -- EnemyHelicopterGroup,
        [1] = "#6088FBBF",
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Common_EnemyHelicopterCleaner_4()
    local params;
    params = {
        -- EnemyHelicopter,
        [0] = "2109932267041215863",
        -- EnemyHelicopterGroup,
        [1] = "#6088FBBF",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#210C7690",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109978846345343979",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1830868406");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
                [4] = self.f_box_OutputOrder_v2_11_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Enemy.domino|@Coast_C7_CTP_010_ExtraAILogic|1985933716");
    l0:SetConnections({
    });
    l0 = self.box_ProximityTrigger_v3_8;
    params = {
        -- Entities,
        [0] = l0:GetDataOutValue(0),
        -- Group,
        [1] = "#210C7690",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = "#6088FBBF",
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109880245363420037",
    };
    return params;
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
