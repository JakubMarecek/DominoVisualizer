LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d6/d6_cultlocation_01.domino
-- User graph: D6_CultLocation_01_QUEST_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/ExplosiveProximityTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.D6_CultLocation_01 = nil;
    Globals.D6_CultLocation_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/D6/D6_CultLocation_01.D6_CultLocation_01_QUEST_B10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "extraMarker",
                delayed = false,
            },
            [1] = {
                name = "Failed",
                delayed = false,
            },
            [2] = {
                name = "PlayerDetected",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bPlayerDetection",
                type = "bool",
            },
            [2] = {
                name = "eGuardsCS",
                type = "entity",
            },
            [3] = {
                name = "eTargetCS",
                type = "entity",
            },
            [4] = {
                name = "Objective",
                type = "oasis",
            },
            [5] = {
                name = "sDamageType",
                type = "string",
            },
            [6] = {
                name = "TargetGroup",
                type = "group",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "eNumberOfEscaped",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua")] = {
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
                name = "PlayerDetected",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
            [4] = {
                name = "TimerExpired",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [4] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [5] = {
                name = "eMarker",
                type = "entity",
            },
            [6] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [7] = {
                name = "eTrigger",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [10] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [11] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/ExplosiveProximityTriggerListener.lua")] = {
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
                name = "InsideExplosion",
                delayed = true,
            },
            [4] = {
                name = "Leave",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "nameFilter",
                type = "string",
            },
            [1] = {
                name = "Trigger",
                type = "entity",
            },
            [2] = {
                name = "typeFilter",
                type = "string",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "explosionEntity",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
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
                name = "listenToGroupSizeChange",
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
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
    self._name = "D6_CultLocation_01_QUEST_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10";
    self.Out = DummyFunction;
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|88818543");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_26_Spawned,
    });
    self.box_Brick_Kill_Target_CORE_v2_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Attack_Kill.Brick_Kill_Target_CORE_v2.debug.lua");
    l0 = self.box_Brick_Kill_Target_CORE_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Kill_Target_CORE_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|125620997");
    l0:SetConnections({
        -- Success,
        [4] = self.f_box_Brick_Kill_Target_CORE_v2_12_Success,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|193394422");
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
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|275772676");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_9_Spawned,
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|318062161");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_13_Spawned,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|335619523");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|500899669");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_21_Spawned,
    });
    self.box_ActivityAcknowledgeGate_19 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|545518566");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_19_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_19_Reloaded,
    });
    self.box_Reach_GoTo_v2_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|742711654");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_17_Success,
    });
    self.box_ExplosiveProximityTriggerListener_32 = cbox:CreateBox("Domino/System/ExplosiveProximityTriggerListener.lua");
    l0 = self.box_ExplosiveProximityTriggerListener_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExplosiveProximityTriggerListener_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|853691418");
    l0:SetConnections({
        -- InsideExplosion,
        [3] = self.f_box_ExplosiveProximityTriggerListener_32_InsideExplosion,
    });
    self.box_OnceOnly_v3_1 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|877663614");
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
                [0] = self.f_box_OnceOnly_v3_1_Out_0,
            },
            count = 1,
        },
    });
    self.box_ProximityTrigger_v2_34 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1105828560");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_34_Enter,
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1125333080");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_15_Spawned,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1235879692");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_28_Spawned,
    });
    self.box_StartCelebration_2 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1882852627");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_2_Ended,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1899794013");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_8_Spawned,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1306326474", "1306326474", "D6_CultLocation_01_QUEST_B10", "In", "box_ActivityAcknowledgeGate_19.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1323763402", "1323763402", "D6_CultLocation_01_QUEST_B10", "OnLeaveZone", "box_ActivityRetry_5.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_26_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_26;
    l1 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|474865674", "474865674", "D6_CultLocation_01_QUEST_B10", "box_SpawnAI_26.Spawned", "box_SpawnAI_28.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Kill_Target_CORE_v2_12_Success()
    local l0, l1;
    l0 = self.box_Brick_Kill_Target_CORE_v2_12;
    l1 = self.box_OnceOnly_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|878335441", "878335441", "D6_CultLocation_01_QUEST_B10", "box_Brick_Kill_Target_CORE_v2_12.Success", "box_OnceOnly_v3_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_14_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_14;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1287271919", "1287271919", "D6_CultLocation_01_QUEST_B10", "box_MultipleOR_14.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SpawnAI_9_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_SpawnAI_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1850010178", "1850010178", "D6_CultLocation_01_QUEST_B10", "box_SpawnAI_9.Spawned", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_13_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_13;
    l1 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|884527621", "884527621", "D6_CultLocation_01_QUEST_B10", "box_SpawnAI_13.Spawned", "box_SpawnAI_8.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Reach_GoTo_v2_17();
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_Reach_GoTo_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|339918609", "339918609", "D6_CultLocation_01_QUEST_B10", "box_ActivityInitialized_3.Out", "box_Reach_GoTo_v2_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_21_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_SpawnAI_21;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1704019628", "1704019628", "D6_CultLocation_01_QUEST_B10", "box_SpawnAI_21.Spawned", "box_SpawnAI_13.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_19_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_19;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|236219077", "236219077", "D6_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_19.Acknowledged", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_19_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_19;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|737621552", "737621552", "D6_CultLocation_01_QUEST_B10", "box_ActivityAcknowledgeGate_19.Reloaded", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Reach_GoTo_v2_17_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Reach_GoTo_v2_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1953851142", "1953851142", "D6_CultLocation_01_QUEST_B10", "box_Reach_GoTo_v2_17.Success", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Kill_Target_CORE_v2_12();
    l0 = self.box_Brick_Kill_Target_CORE_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1220965392", "1220965392", "D6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_4.Out", "box_Brick_Kill_Target_CORE_v2_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_34();
    l0 = self.box_ProximityTrigger_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|602886395", "602886395", "D6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_4.Out", "box_ProximityTrigger_v2_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ExplosiveProximityTriggerListener_32_InsideExplosion()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_ExplosiveProximityTriggerListener_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|137303387", "137303387", "D6_CultLocation_01_QUEST_B10", "box_ExplosiveProximityTriggerListener_32.InsideExplosion", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_1_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_2();
    l0 = self.box_OnceOnly_v3_1;
    l1 = self.box_StartCelebration_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1330437453", "1330437453", "D6_CultLocation_01_QUEST_B10", "box_OnceOnly_v3_1.Out", "box_StartCelebration_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1912396068", "1912396068", "D6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_36.Out", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_35();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1018911287", "1018911287", "D6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_36.Out", "box_Print_v2_35.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_34_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_6();
    l0 = self.box_ProximityTrigger_v2_34;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|629006118", "629006118", "D6_CultLocation_01_QUEST_B10", "box_ProximityTrigger_v2_34.Enter", "box_SetContextualStrategy_6.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_15_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_SpawnAI_15;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|133155986", "133155986", "D6_CultLocation_01_QUEST_B10", "box_SpawnAI_15.Spawned", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_28_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_SpawnAI_28;
    l1 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|79217480", "79217480", "D6_CultLocation_01_QUEST_B10", "box_SpawnAI_28.Spawned", "box_SpawnAI_15.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_2_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_25();
    l0 = self.box_StartCelebration_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|980096012", "980096012", "D6_CultLocation_01_QUEST_B10", "box_StartCelebration_2.Ended", "box_ActivityEnd_25.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|687425511", "687425511", "D6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_29.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExplosiveProximityTriggerListener_32();
    l0 = self.box_ExplosiveProximityTriggerListener_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1252859186", "1252859186", "D6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_29.Out", "box_ExplosiveProximityTriggerListener_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_8_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_SpawnAI_8;
    l1 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1865835146", "1865835146", "D6_CultLocation_01_QUEST_B10", "box_SpawnAI_8.Spawned", "box_SpawnAI_26.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_30();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|523463753", "523463753", "D6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_33.Out", "box_StaticBreakableBreaker_30.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_31();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|2030668212", "2030668212", "D6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_33.Out", "box_StaticBreakableBreaker_31.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_27();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1131630074", "1131630074", "D6_CultLocation_01_QUEST_B10", "box_OutputOrder_v2_33.Out", "box_StaticBreakableBreaker_27.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100775382193031402",
    };
    return params;
end;

function export:OnEnter_box_Brick_Kill_Target_CORE_v2_12()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bPlayerDetection,
        [1] = false,
        -- eGuardsCS,
        [2] = "2100775530864335623",
        -- Objective,
        [4] = {
            section = "Objectives",
            item = "D6_CultLocation_01_QUEST_B10_OBJ_01",
            id = "616029",
        },
        -- TargetGroup,
        [6] = "#E870BE22",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|160232627");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100650584110544360",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100871164862680461",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100775375075297072",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|407850106");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "7 blessed spawned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101384206794927964",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|524372517");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100647842203837464",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|625462772");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_17()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = false,
        -- bRequiresObjective,
        [2] = true,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2100775248658963981",
        -- eRadiusTarget,
        [6] = "2103937613399336794",
        -- fDistanceFromTarget,
        [8] = 4,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "Objectives",
            item = "D6_CultLocation_01_QUEST_B10_OBJ_01",
            id = "726181",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|801809355");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ExplosiveProximityTriggerListener_32()
    local params;
    params = {
        -- Trigger,
        [1] = "2103965189817766830",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1030862920");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104231040290667313",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100775399379192458",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101384220912955267",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1578017917");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1825612903");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100775530864335623",
        -- Group,
        [1] = "#E870BE22",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_2()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|1892893379");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100775385487657412",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|2014970665");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2103965746047499018",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D6\\D6_CultLocation_01.domino|@D6_CultLocation_01_QUEST_B10|2034868373");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
                [2] = self.f_box_OutputOrder_v2_33_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
