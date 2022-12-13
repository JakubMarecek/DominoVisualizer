LUACX�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b10.domino
-- User graph: LT01_030_Siloflap_Breakable
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="PrefabID" Type="Nomad|entity{}" />
    <DataIn Name="ShimmerLatchBracket" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/GetEntityInPrefab_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ShimmerModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B10.LT01_030_Siloflap_Breakable.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FlapDown",
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "PrefabID",
                type = "entity",
            },
            [1] = {
                name = "ShimmerLatchBracket",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetEntityInPrefab_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NoEntity",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ObjectName",
                type = "string",
            },
            [1] = {
                name = "PrefabEntity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "ObjectEntity",
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
    metadataTable[GetPathID("Domino/System/Narrative/PlaySequence_v8.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Play",
            },
            [2] = {
                name = "PlayFromStart",
            },
            [3] = {
                name = "Skip",
            },
            [4] = {
                name = "SPIn",
                dynamicType = 2,
            },
            [5] = {
                name = "Stop",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = true,
            },
            [2] = {
                name = "Skipped",
                delayed = true,
            },
            [3] = {
                name = "SPOut",
                dynamicType = 2,
                delayed = false,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "cleanupArrows",
                type = "bool",
            },
            [1] = {
                name = "IsSkippable",
                type = "bool",
            },
            [2] = {
                name = "MetaSequenceID",
                type = "int",
            },
            [3] = {
                name = "SceneEntity",
                type = "entity",
            },
            [4] = {
                name = "SequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "ShouldRemovePostFx",
                type = "bool",
            },
            [6] = {
                name = "SkipPostFx",
                type = "string",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ShimmerModifier_v2.lua")] = {
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
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "B",
                type = "float",
            },
            [1] = {
                name = "G",
                type = "float",
            },
            [2] = {
                name = "R",
                type = "float",
            },
            [3] = {
                name = "Speed",
                type = "float",
            },
            [4] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT01_030_Siloflap_Breakable";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable";
    self.FlapDown = DummyFunction;
    self.sparks = nil;
    self.eFlap = nil;
    self.eLatchBracket = nil;
    self.eFlapLock = nil;
    self.eLatch = nil;
    self.hacklock = nil;
    self.eCenterscene = nil;
    self.ePivot_Point = nil;
    self.box_GetEntityInPrefab_v2_1 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|276308585");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_1_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_1_Out,
    });
    self.box_GetEntityInPrefab_v2_10 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|506822129");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_10_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_10_Out,
    });
    self.box_GetEntityInPrefab_v2_14 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|886898364");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_14_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_14_Out,
    });
    self.box_StaticBreakableListener_13 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1213460729");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_13_OnBreak,
    });
    self.box_GetEntityInPrefab_v2_17 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1427407969");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_17_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_17_Out,
    });
    self.box_GetEntityInPrefab_v2_8 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1457027270");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_8_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_8_Out,
    });
    self.box_GetEntityInPrefab_v2_11 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1458830011");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_11_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_11_Out,
    });
    self.box_PositionModifier_v2_19 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1662444644");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_19_StartOut,
    });
    self.box_GetEntityInPrefab_v2_9 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1715476421");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_9_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_9_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1912186638");
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
    self.box_PlaySequence_v8_3 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1950108257");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_3_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_3_Skipped,
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_9();
    l0 = self.box_GetEntityInPrefab_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1225186667", "1225186667", "LT01_030_Siloflap_Breakable", "Enable", "box_GetEntityInPrefab_v2_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_18();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|61755133", "61755133", "LT01_030_Siloflap_Breakable", "box_Simple_Node_22.Out", "box_ShimmerModifier_v2_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_4_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_6();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|540716188", "540716188", "LT01_030_Siloflap_Breakable", "box_ParticleSystem_v3_4.Stopped", "box_ShimmerModifier_v2_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_1_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_1_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_8();
    l0 = self.box_GetEntityInPrefab_v2_1;
    l1 = self.box_GetEntityInPrefab_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1609248142", "1609248142", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_1.Out", "box_GetEntityInPrefab_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_13();
    l0 = self.box_StaticBreakableListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1701198218", "1701198218", "LT01_030_Siloflap_Breakable", "box_ShimmerModifier_v2_15.Enabled", "box_StaticBreakableListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|865830560", "865830560", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_20.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1706645328", "1706645328", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_20.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_10_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_10_Out();
    params = self:OnEnter_box_Simple_Node_12();
    l0 = self.box_GetEntityInPrefab_v2_10;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|693363988", "693363988", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_10.Out", "box_Simple_Node_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1894490652", "1894490652", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_16.Out", "box_ParticleSystem_v3_4.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_3();
    l0 = self.box_PlaySequence_v8_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|141929256", "141929256", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_16.Out", "box_PlaySequence_v8_3.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_GetEntityInPrefab_v2_14_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_14_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_17();
    l0 = self.box_GetEntityInPrefab_v2_14;
    l1 = self.box_GetEntityInPrefab_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1238644814", "1238644814", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_14.Out", "box_GetEntityInPrefab_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_13_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_StaticBreakableListener_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|80057054", "80057054", "LT01_030_Siloflap_Breakable", "box_StaticBreakableListener_13.OnBreak", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|265864590", "265864590", "LT01_030_Siloflap_Breakable", "box_Simple_Node_12.Out", "box_OutputOrder_v2_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_17_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_17_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_1();
    l0 = self.box_GetEntityInPrefab_v2_17;
    l1 = self.box_GetEntityInPrefab_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1611575601", "1611575601", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_17.Out", "box_GetEntityInPrefab_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_15();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|784550664", "784550664", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_5.Out", "box_ShimmerModifier_v2_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_18();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|573385401", "573385401", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_5.Out", "box_ShimmerModifier_v2_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_8_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_8_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_10();
    l0 = self.box_GetEntityInPrefab_v2_8;
    l1 = self.box_GetEntityInPrefab_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1079159114", "1079159114", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_8.Out", "box_GetEntityInPrefab_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_11_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_11_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_14();
    l0 = self.box_GetEntityInPrefab_v2_11;
    l1 = self.box_GetEntityInPrefab_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|767531920", "767531920", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_11.Out", "box_GetEntityInPrefab_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_19_StartOut()
    local l0;
    l0 = self.box_PositionModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|450786822", "450786822", "LT01_030_Siloflap_Breakable", "box_PositionModifier_v2_19.StartOut", "FlapDown", l0:GetLuaBox(), self);
    self:FlapDown();
end;

function export:f_box_GetEntityInPrefab_v2_9_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_9_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_11();
    l0 = self.box_GetEntityInPrefab_v2_9;
    l1 = self.box_GetEntityInPrefab_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1299153902", "1299153902", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_9.Out", "box_GetEntityInPrefab_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_19();
    l0 = self.box_MultipleOR_2;
    l1 = self.box_PositionModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|78878284", "78878284", "LT01_030_Siloflap_Breakable", "box_MultipleOR_2.Out", "box_PositionModifier_v2_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_3_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|794166407", "794166407", "LT01_030_Siloflap_Breakable", "box_PlaySequence_v8_3.Finished", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_3_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_3;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1924242501", "1924242501", "LT01_030_Siloflap_Breakable", "box_PlaySequence_v8_3.Skipped", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ShimmerModifier_v2_6_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_7();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1120823489", "1120823489", "LT01_030_Siloflap_Breakable", "box_ShimmerModifier_v2_6.Disabled", "box_ShimmerModifier_v2_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|@StopShimmer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|202050749");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_4_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.sparks,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_1()
    local params;
    params = {
        -- ObjectName,
        [0] = "latch",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|431044781");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_15_Enabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = self.eLatch,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|438926727");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_10()
    local params;
    params = {
        -- ObjectName,
        [0] = "sparks",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|779033695");
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

function export:OnEnter_box_ShimmerModifier_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|834318747");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = self.eLatchBracket,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_14()
    local params;
    params = {
        -- ObjectName,
        [0] = "siloflap_flap",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = self.hacklock,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1220017209");
    l0:SetConnections({
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = self.ShimmerLatchBracket,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1284400142");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_17()
    local params;
    params = {
        -- ObjectName,
        [0] = "siloflap_flaplock",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|1443258355");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_8()
    local params;
    params = {
        -- ObjectName,
        [0] = "latch",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_11()
    local params;
    params = {
        -- ObjectName,
        [0] = "siloflap_centerscene",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_19()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = self.ePivot_Point,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.eFlap,
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_9()
    local params;
    params = {
        -- ObjectName,
        [0] = "pivot_point",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_3()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = self.eCenterscene,
        -- SequenceFile,
        [4] = "sequences/fcz_proto/fcz_siloflapdestructible.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B10.domino|@LT01_030_Siloflap_Breakable|2113836576");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_6_Disabled,
    });
    params = {
        -- B,
        [0] = -1,
        -- G,
        [1] = -1,
        -- R,
        [2] = -1,
        -- Speed,
        [3] = -1,
        -- targets,
        [4] = self.eLatch,
    };
    return params;
end;

function export:OnExit_box_GetEntityInPrefab_v2_1_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_1;
    self.eLatch = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_10_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_10;
    self.sparks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_14_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_14;
    self.eFlap = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_17_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_17;
    self.eFlapLock = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_8_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_8;
    self.hacklock = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_11_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_11;
    self.eCenterscene = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_9_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_9;
    self.ePivot_Point = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:FlapDown()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="FlapDown" AnchorDynType="0" IsDelayed="1" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="PrefabID" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="ShimmerLatchBracket" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
