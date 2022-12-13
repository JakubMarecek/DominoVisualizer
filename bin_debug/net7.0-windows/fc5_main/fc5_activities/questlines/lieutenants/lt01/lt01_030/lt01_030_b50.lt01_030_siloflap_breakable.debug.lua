LUACa�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b50.domino
-- User graph: LT01_030_SiloFlap_Breakable
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="ShimmerLatchBracket" Type="Nomad|entity{}" />
    <DataIn Name="PrefabID" Type="Nomad|entity{}" />
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B50.LT01_030_SiloFlap_Breakable.debug.lua")] = {
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
    self._name = "LT01_030_SiloFlap_Breakable";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable";
    self.FlapDown = DummyFunction;
    self.eCenterscene = nil;
    self.eLatchBracket = nil;
    self.eFlapLock = nil;
    self.hacklock = nil;
    self.eFlap = nil;
    self.eLatch = nil;
    self.sparks = nil;
    self.ePivot_Point = nil;
    self.box_PositionModifier_v2_20 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|109390507");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_20_StartOut,
    });
    self.box_GetEntityInPrefab_v2_9 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|128943681");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_9_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_9_Out,
    });
    self.box_GetEntityInPrefab_v2_15 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|402538479");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_15_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_15_Out,
    });
    self.box_GetEntityInPrefab_v2_16 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|443905112");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_16_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_16_Out,
    });
    self.box_StaticBreakableListener_8 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|742371640");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_8_OnBreak,
    });
    self.box_GetEntityInPrefab_v2_4 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|835100982");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_4_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_4_Out,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|998182277");
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
    self.box_PlaySequence_v8_14 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1381345563");
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
        [0] = self.f_box_PlaySequence_v8_14_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_14_Skipped,
    });
    self.box_GetEntityInPrefab_v2_21 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1381675868");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_21_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_21_Out,
    });
    self.box_GetEntityInPrefab_v2_11 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1554127166");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_11_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_11_Out,
    });
    self.box_GetEntityInPrefab_v2_3 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1806366565");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_3_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_3_Out,
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_21();
    l0 = self.box_GetEntityInPrefab_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|710776616", "710776616", "LT01_030_SiloFlap_Breakable", "Enable", "box_GetEntityInPrefab_v2_21.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_18();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|489930748", "489930748", "LT01_030_SiloFlap_Breakable", "box_Simple_Node_22.Out", "box_ShimmerModifier_v2_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_20_StartOut()
    local l0;
    l0 = self.box_PositionModifier_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|553651335", "553651335", "LT01_030_SiloFlap_Breakable", "box_PositionModifier_v2_20.StartOut", "FlapDown", l0:GetLuaBox(), self);
    self:FlapDown();
end;

function export:f_box_GetEntityInPrefab_v2_9_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_9_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_11();
    l0 = self.box_GetEntityInPrefab_v2_9;
    l1 = self.box_GetEntityInPrefab_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|103981014", "103981014", "LT01_030_SiloFlap_Breakable", "box_GetEntityInPrefab_v2_9.Out", "box_GetEntityInPrefab_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ShimmerModifier_v2_2_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_8();
    l0 = self.box_StaticBreakableListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1617423730", "1617423730", "LT01_030_SiloFlap_Breakable", "box_ShimmerModifier_v2_2.Enabled", "box_StaticBreakableListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_15_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_15_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_9();
    l0 = self.box_GetEntityInPrefab_v2_15;
    l1 = self.box_GetEntityInPrefab_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|186126509", "186126509", "LT01_030_SiloFlap_Breakable", "box_GetEntityInPrefab_v2_15.Out", "box_GetEntityInPrefab_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_16_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_16_Out();
    params = self:OnEnter_box_Simple_Node_5();
    l0 = self.box_GetEntityInPrefab_v2_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1546898300", "1546898300", "LT01_030_SiloFlap_Breakable", "box_GetEntityInPrefab_v2_16.Out", "box_Simple_Node_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_8_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_StaticBreakableListener_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1369306288", "1369306288", "LT01_030_SiloFlap_Breakable", "box_StaticBreakableListener_8.OnBreak", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_4_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_4_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_3();
    l0 = self.box_GetEntityInPrefab_v2_4;
    l1 = self.box_GetEntityInPrefab_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|694813178", "694813178", "LT01_030_SiloFlap_Breakable", "box_GetEntityInPrefab_v2_4.Out", "box_GetEntityInPrefab_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_2();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1774888422", "1774888422", "LT01_030_SiloFlap_Breakable", "box_OutputOrder_v2_12.Out", "box_ShimmerModifier_v2_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_18();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|695510012", "695510012", "LT01_030_SiloFlap_Breakable", "box_OutputOrder_v2_12.Out", "box_ShimmerModifier_v2_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_13_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_1();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|175143311", "175143311", "LT01_030_SiloFlap_Breakable", "box_ShimmerModifier_v2_13.Disabled", "box_ShimmerModifier_v2_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_20();
    l0 = self.box_MultipleOR_10;
    l1 = self.box_PositionModifier_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|274751366", "274751366", "LT01_030_SiloFlap_Breakable", "box_MultipleOR_10.Out", "box_PositionModifier_v2_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|217149396", "217149396", "LT01_030_SiloFlap_Breakable", "box_OutputOrder_v2_19.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1494123297", "1494123297", "LT01_030_SiloFlap_Breakable", "box_OutputOrder_v2_19.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_14_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_14;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|2137152096", "2137152096", "LT01_030_SiloFlap_Breakable", "box_PlaySequence_v8_14.Finished", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_14_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_14;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1476403394", "1476403394", "LT01_030_SiloFlap_Breakable", "box_PlaySequence_v8_14.Skipped", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetEntityInPrefab_v2_21_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_21_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_4();
    l0 = self.box_GetEntityInPrefab_v2_21;
    l1 = self.box_GetEntityInPrefab_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|261021803", "261021803", "LT01_030_SiloFlap_Breakable", "box_GetEntityInPrefab_v2_21.Out", "box_GetEntityInPrefab_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Simple_Node_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|2134351204", "2134351204", "LT01_030_SiloFlap_Breakable", "box_Simple_Node_5.Out", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_11_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_11_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_16();
    l0 = self.box_GetEntityInPrefab_v2_11;
    l1 = self.box_GetEntityInPrefab_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1644596416", "1644596416", "LT01_030_SiloFlap_Breakable", "box_GetEntityInPrefab_v2_11.Out", "box_GetEntityInPrefab_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_7_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_13();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|113582769", "113582769", "LT01_030_SiloFlap_Breakable", "box_ParticleSystem_v3_7.Stopped", "box_ShimmerModifier_v2_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_3_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_3_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_15();
    l0 = self.box_GetEntityInPrefab_v2_3;
    l1 = self.box_GetEntityInPrefab_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1109618623", "1109618623", "LT01_030_SiloFlap_Breakable", "box_GetEntityInPrefab_v2_3.Out", "box_GetEntityInPrefab_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|137226825", "137226825", "LT01_030_SiloFlap_Breakable", "box_OutputOrder_v2_6.Out", "box_ParticleSystem_v3_7.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_14();
    l0 = self.box_PlaySequence_v8_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|127710715", "127710715", "LT01_030_SiloFlap_Breakable", "box_OutputOrder_v2_6.Out", "box_PlaySequence_v8_14.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|@StopShimmer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_20()
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
        [0] = "latch",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|276431144");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_2_Enabled,
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

function export:OnEnter_box_GetEntityInPrefab_v2_15()
    local params;
    params = {
        -- ObjectName,
        [0] = "siloflap_flaplock",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_16()
    local params;
    params = {
        -- ObjectName,
        [0] = "sparks",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|712453997");
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

function export:OnEnter_box_StaticBreakableListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = self.hacklock,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_4()
    local params;
    params = {
        -- ObjectName,
        [0] = "siloflap_centerscene",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|863720117");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|959784343");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_13_Disabled,
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

function export:OnEnter_box_ShimmerModifier_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1125923937");
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

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1216921932");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_14()
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

function export:OnEnter_box_GetEntityInPrefab_v2_21()
    local params;
    params = {
        -- ObjectName,
        [0] = "pivot_point",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1476775513");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_11()
    local params;
    params = {
        -- ObjectName,
        [0] = "latch",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1783296514");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_7_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.sparks,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_3()
    local params;
    params = {
        -- ObjectName,
        [0] = "siloflap_flap",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B50.domino|@LT01_030_SiloFlap_Breakable|1883209316");
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

function export:OnExit_box_GetEntityInPrefab_v2_9_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_9;
    self.eLatch = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_15_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_15;
    self.eFlapLock = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_16_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_16;
    self.sparks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_4_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_4;
    self.eCenterscene = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_21_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_21;
    self.ePivot_Point = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_11_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_11;
    self.hacklock = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_3_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_3;
    self.eFlap = l0:GetDataOutValue(0);
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
