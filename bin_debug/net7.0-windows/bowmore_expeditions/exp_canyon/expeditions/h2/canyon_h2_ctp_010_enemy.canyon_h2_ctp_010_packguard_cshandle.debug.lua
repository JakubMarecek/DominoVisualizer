LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_enemy.domino
-- User graph: Canyon_H2_CTP_010_PackGuard_CsHandle
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/StringConcatenate_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.globals.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Enemy.Canyon_H2_CTP_010_PackGuard_CsHandle.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "StartPackageGuardBehavior",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Started",
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "EnemyGroup_All",
                type = "group",
            },
            [1] = {
                name = "EnemyGroup_PackageGuard",
                type = "group",
            },
            [2] = {
                name = "EnemyGroup_Prio_01",
                type = "group",
            },
            [3] = {
                name = "EnemyGroup_Prio_02",
                type = "group",
            },
            [4] = {
                name = "EnemyGroup_Prio_03",
                type = "group",
            },
            [5] = {
                name = "PackageGuardCS",
                type = "entity",
            },
            [6] = {
                name = "PackageGuardNUM",
                type = "int",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/StringConcatenate_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "WithBoolean",
            },
            [1] = {
                name = "WithFloat",
            },
            [2] = {
                name = "WithInteger",
            },
            [3] = {
                name = "WithString",
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
                name = "Boolean",
                type = "bool",
            },
            [1] = {
                name = "Float",
                type = "float",
            },
            [2] = {
                name = "Input",
                type = "string",
            },
            [3] = {
                name = "Integer",
                type = "int",
            },
            [4] = {
                name = "String",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
            [0] = {
                name = "Target",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Canyon_H2_CTP_010_PackGuard_CsHandle";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle";
    self.Started = DummyFunction;
    self.WatchmenCS = nil;
    self.PawnDistanceToPack = 10000;
    self.ClosestEnemy = nil;
    self.WatchmentNum = 0;
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|548920507");
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
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|578964627");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|684374967");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_14_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_Brick_Exp_Enemy_PackageGuard_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Gameplay.Brick_Exp_Enemy_PackageGuard.debug.lua");
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_Enemy_PackageGuard_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|783125314");
    l0:SetConnections({
    });
    self.box_IndexList_v2_1 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|822591053");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_1_Output_0,
                [1] = self.f_box_IndexList_v2_1_Output_1,
                [2] = self.f_box_IndexList_v2_1_Output_2,
                [3] = self.f_box_IndexList_v2_1_Output_3,
                [4] = self.f_box_IndexList_v2_1_Output_4,
                [5] = self.f_box_IndexList_v2_1_Output_5,
            },
            count = 6,
        },
    });
    self.box_OnceOnly_v3_17 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|956634061");
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
                [0] = self.f_box_OnceOnly_v3_17_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1365701861");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_16_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1411263409");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_10_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
    });
    self.box_GroupSizeListener_v6_2 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1422968306");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_2_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_2_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_2_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_2_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_2_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_2_MemberSpawned,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|2121898611", "2121898611", "Canyon_H2_CTP_010_PackGuard_CsHandle", "Disable", "box_Delay_v5_14.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:StartPackageGuardBehavior()
    local params, l0;
    params = self:OnEnter_box_IndexList_v2_1();
    l0 = self.box_IndexList_v2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1305347799", "1305347799", "Canyon_H2_CTP_010_PackGuard_CsHandle", "StartPackageGuardBehavior", "box_IndexList_v2_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_15();
    l0 = self.box_MultipleOR_18;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|603244466", "603244466", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_MultipleOR_18.Out", "box_SetContextualStrategy_15.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|789048082", "789048082", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_MultipleOR_9.Out", "box_EntityStatusListener_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_14_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_20();
    l0 = self.box_Delay_v5_14;
    l1 = self.box_Brick_Exp_Enemy_PackageGuard_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1808216429", "1808216429", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_Delay_v5_14.Stopped", "box_Brick_Exp_Enemy_PackageGuard_20.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StringConcatenate_v2_13();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|214138345", "214138345", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_Delay_v5_14.TimeElapsed", "box_StringConcatenate_v2_13.WithInteger", l0:GetLuaBox(), l1:GetLuaBox());
    -- WithInteger
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_1_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_3();
    l0 = self.box_IndexList_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1934906221", "1934906221", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_IndexList_v2_1.Output", "box_SetEntity_v2_3.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_1_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_7();
    l0 = self.box_IndexList_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1769103356", "1769103356", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_IndexList_v2_1.Output", "box_SetEntity_v2_7.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_1_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_8();
    l0 = self.box_IndexList_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|752677392", "752677392", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_IndexList_v2_1.Output", "box_SetEntity_v2_8.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_1_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_6();
    l0 = self.box_IndexList_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1471669971", "1471669971", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_IndexList_v2_1.Output", "box_SetEntity_v2_6.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_1_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_4();
    l0 = self.box_IndexList_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1971388952", "1971388952", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_IndexList_v2_1.Output", "box_SetEntity_v2_4.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_1_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_5();
    l0 = self.box_IndexList_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|999575517", "999575517", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_IndexList_v2_1.Output", "box_SetEntity_v2_5.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_4_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1300360363", "1300360363", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_SetEntity_v2_4.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_SetContextualStrategy_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|666291609", "666291609", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_SetContextualStrategy_15.Out", "box_OnceOnly_v3_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_17_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_OnceOnly_v3_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1766918629", "1766918629", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_OnceOnly_v3_17.Out", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_6_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1621133478", "1621133478", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_SetEntity_v2_6.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_StringConcatenate_v2_13_Out()
    local params, l0;
    self:OnExit_box_StringConcatenate_v2_13_Out();
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_12();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1595887871", "1595887871", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_StringConcatenate_v2_13.Out", "box_Print_v2_12.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_LoopingEnded()
    local l0, l1;
    l0 = self.box_Delay_v5_16;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|567267178", "567267178", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_Delay_v5_16.LoopingEnded", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_16;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|197548616", "197548616", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_Delay_v5_16.TimeElapsed", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_10_Enabled()
    local l0;
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|449021616", "449021616", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_EntityStatusListener_10.Enabled", "Started", l0:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|117699110", "117699110", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_EntityStatusListener_10.Loaded", "box_Delay_v5_16.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_2_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_2_Enabled();
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_GroupSizeListener_v6_2;
    l1 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|782757889", "782757889", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_GroupSizeListener_v6_2.Enabled", "box_Delay_v5_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_2_MemberAdded()
    self:OnExit_box_GroupSizeListener_v6_2_MemberAdded();
end;

function export:f_box_GroupSizeListener_v6_2_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_2_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_2_MemberRemoved()
    self:OnExit_box_GroupSizeListener_v6_2_MemberRemoved();
end;

function export:f_box_GroupSizeListener_v6_2_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_2_MemberSpawned();
end;

function export:f_box_SetEntity_v2_8_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|482984862", "482984862", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_SetEntity_v2_8.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetEntity_v2_5_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|253671849", "253671849", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_SetEntity_v2_5.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_SetEntity_v2_7_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1954847006", "1954847006", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_SetEntity_v2_7.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Exp_Enemy_PackageGuard_20();
    l0 = self.box_Brick_Exp_Enemy_PackageGuard_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1505389082", "1505389082", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_OutputOrder_v2_11.Out", "box_Brick_Exp_Enemy_PackageGuard_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_2();
    l0 = self.box_GroupSizeListener_v6_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|83050509", "83050509", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_OutputOrder_v2_11.Out", "box_GroupSizeListener_v6_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetEntity_v2_3_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|998120664", "998120664", "Canyon_H2_CTP_010_PackGuard_CsHandle", "box_SetEntity_v2_3.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Print_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|447258085");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = self._sld_Target_box_StringConcatenate_v2_13,
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Brick_Exp_Enemy_PackageGuard_20()
    local params;
    params = {
        -- EnemyGroup_All,
        [0] = "#CAC04D14",
        -- EnemyGroup_PackageGuard,
        [1] = "#8915D383",
        -- EnemyGroup_Prio_01,
        [2] = "#CAC04D14",
        -- PackageGuardCS,
        [5] = self.WatchmenCS,
        -- PackageGuardNUM,
        [6] = 2,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_1()
    local params;
    params = {
        -- Index,
        [0] = Globals.Canyon_H2_CTP_010_Enemy.iPackagePositionIndex,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|864722836");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_4_Out,
    });
    params = {
        -- Entity,
        [0] = "2109009729048025017",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|940459982");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_15_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = self.WatchmenCS,
        -- Group,
        [1] = "#8915D383",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1016470720");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_6_Out,
    });
    params = {
        -- Entity,
        [0] = "2109451140599911219",
    };
    return params;
end;

function export:OnEnter_box_StringConcatenate_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StringConcatenate_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1089336631");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StringConcatenate_v2_13_Out,
    });
    params = {
        -- Input,
        [2] = "Watchmen Number:",
        -- Integer,
        [3] = self.WatchmentNum,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 5,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.WatchmenCS,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#8915D383",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1637513009");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_8_Out,
    });
    params = {
        -- Entity,
        [0] = "2108522605527960762",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1699669816");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_5_Out,
    });
    params = {
        -- Entity,
        [0] = "2109451361681675262",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1787429883");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_7_Out,
    });
    params = {
        -- Entity,
        [0] = "2109547639805584604",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1856760973");
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

function export:OnEnter_box_SetEntity_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Enemy.domino|@Canyon_H2_CTP_010_PackGuard_CsHandle|1952816760");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_3_Out,
    });
    params = {
        -- Entity,
        [0] = "2109451332636119917",
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.WatchmenCS = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.WatchmenCS = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StringConcatenate_v2_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StringConcatenate_v2.lua")];
    self._sld_Target_box_StringConcatenate_v2_13 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_2_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.WatchmentNum = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.WatchmentNum = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.WatchmentNum = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.WatchmentNum = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_2_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_2;
    self.WatchmentNum = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetEntity_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.WatchmenCS = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.WatchmenCS = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.WatchmenCS = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.WatchmenCS = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Started()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="StartPackageGuardBehavior" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
