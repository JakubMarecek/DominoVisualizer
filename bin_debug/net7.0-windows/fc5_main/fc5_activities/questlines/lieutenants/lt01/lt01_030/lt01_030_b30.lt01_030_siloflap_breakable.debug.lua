LUACL�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b30.domino
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B30.LT01_030_Siloflap_Breakable.debug.lua")] = {
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
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable";
    self.FlapDown = DummyFunction;
    self.sparks = nil;
    self.eFlapLock = nil;
    self.eFlap = nil;
    self.hacklock = nil;
    self.eLatch = nil;
    self.eLatchBracket = nil;
    self.eCenterscene = nil;
    self.ePivot_Point = nil;
    self.box_GetEntityInPrefab_v2_7 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|53039352");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_7_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_7_Out,
    });
    self.box_GetEntityInPrefab_v2_8 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|389521768");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_8_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_8_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|699605641");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_StaticBreakableListener_11 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|776513260");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_11_OnBreak,
    });
    self.box_GetEntityInPrefab_v2_1 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1218987462");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_1_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_1_Out,
    });
    self.box_GetEntityInPrefab_v2_18 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1242851094");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_18_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_18_Out,
    });
    self.box_GetEntityInPrefab_v2_15 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1638433092");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_15_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_15_Out,
    });
    self.box_GetEntityInPrefab_v2_13 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1680676854");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_13_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_13_Out,
    });
    self.box_GetEntityInPrefab_v2_19 = cbox:CreateBox("Domino/System/GetEntityInPrefab_v2.lua");
    l0 = self.box_GetEntityInPrefab_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetEntityInPrefab_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|2072120996");
    l0:SetConnections({
        -- NoEntity,
        [0] = self.f_box_GetEntityInPrefab_v2_19_NoEntity,
        -- Out,
        [1] = self.f_box_GetEntityInPrefab_v2_19_Out,
    });
    self.box_PositionModifier_v2_21 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|2106402599");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_21_StartOut,
    });
    self.box_PlaySequence_v8_9 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|2144689384");
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
        [0] = self.f_box_PlaySequence_v8_9_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_9_Skipped,
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_GetEntityInPrefab_v2_7();
    l0 = self.box_GetEntityInPrefab_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|922777284", "922777284", "LT01_030_Siloflap_Breakable", "Enable", "box_GetEntityInPrefab_v2_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_10();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1980603609", "1980603609", "LT01_030_Siloflap_Breakable", "box_Simple_Node_22.Out", "box_ShimmerModifier_v2_10.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_12();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|71951861", "71951861", "LT01_030_Siloflap_Breakable", "box_ShimmerModifier_v2_14.Disabled", "box_ShimmerModifier_v2_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_7_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_7_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_15();
    l0 = self.box_GetEntityInPrefab_v2_7;
    l1 = self.box_GetEntityInPrefab_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|216467777", "216467777", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_7.Out", "box_GetEntityInPrefab_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_2();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1139314513", "1139314513", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_16.Out", "box_ParticleSystem_v3_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_9();
    l0 = self.box_PlaySequence_v8_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1889319212", "1889319212", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_16.Out", "box_PlaySequence_v8_9.PlayFromStart", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayFromStart
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_17();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|934291729", "934291729", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_3.Out", "box_ShimmerModifier_v2_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_10();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1324469398", "1324469398", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_3.Out", "box_ShimmerModifier_v2_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|490132339", "490132339", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_6.Out", "box_Simple_Node_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1770020427", "1770020427", "LT01_030_Siloflap_Breakable", "box_OutputOrder_v2_6.Out", "box_OutputOrder_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_8_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_8_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_18();
    l0 = self.box_GetEntityInPrefab_v2_8;
    l1 = self.box_GetEntityInPrefab_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1957614846", "1957614846", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_8.Out", "box_GetEntityInPrefab_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_21();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_PositionModifier_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|325417965", "325417965", "LT01_030_Siloflap_Breakable", "box_MultipleOR_4.Out", "box_PositionModifier_v2_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_11_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = self.box_StaticBreakableListener_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|901955397", "901955397", "LT01_030_Siloflap_Breakable", "box_StaticBreakableListener_11.OnBreak", "box_OutputOrder_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetEntityInPrefab_v2_1_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_1_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_19();
    l0 = self.box_GetEntityInPrefab_v2_1;
    l1 = self.box_GetEntityInPrefab_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1388143783", "1388143783", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_1.Out", "box_GetEntityInPrefab_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_18_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_18_Out();
    params = self:OnEnter_box_Simple_Node_5();
    l0 = self.box_GetEntityInPrefab_v2_18;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|636854212", "636854212", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_18.Out", "box_Simple_Node_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_2_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ShimmerModifier_v2_14();
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|116169875", "116169875", "LT01_030_Siloflap_Breakable", "box_ParticleSystem_v3_2.Stopped", "box_ShimmerModifier_v2_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ShimmerModifier_v2_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_11();
    l0 = self.box_StaticBreakableListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|890307361", "890307361", "LT01_030_Siloflap_Breakable", "box_ShimmerModifier_v2_17.Enabled", "box_StaticBreakableListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetEntityInPrefab_v2_15_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_15_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_1();
    l0 = self.box_GetEntityInPrefab_v2_15;
    l1 = self.box_GetEntityInPrefab_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|834468520", "834468520", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_15.Out", "box_GetEntityInPrefab_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_13_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_13_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_8();
    l0 = self.box_GetEntityInPrefab_v2_13;
    l1 = self.box_GetEntityInPrefab_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|832287277", "832287277", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_13.Out", "box_GetEntityInPrefab_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetEntityInPrefab_v2_19_Out()
    local params, l0, l1;
    self:OnExit_box_GetEntityInPrefab_v2_19_Out();
    params = self:OnEnter_box_GetEntityInPrefab_v2_13();
    l0 = self.box_GetEntityInPrefab_v2_19;
    l1 = self.box_GetEntityInPrefab_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|474338853", "474338853", "LT01_030_Siloflap_Breakable", "box_GetEntityInPrefab_v2_19.Out", "box_GetEntityInPrefab_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_21_StartOut()
    local l0;
    l0 = self.box_PositionModifier_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|154251243", "154251243", "LT01_030_Siloflap_Breakable", "box_PositionModifier_v2_21.StartOut", "FlapDown", l0:GetLuaBox(), self);
    self:FlapDown();
end;

function export:f_box_Simple_Node_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|940365774", "940365774", "LT01_030_Siloflap_Breakable", "box_Simple_Node_5.Out", "box_OutputOrder_v2_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_9_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_9;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1492007810", "1492007810", "LT01_030_Siloflap_Breakable", "box_PlaySequence_v8_9.Finished", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_9_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_9;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|287341396", "287341396", "LT01_030_Siloflap_Breakable", "box_PlaySequence_v8_9.Skipped", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|@StopShimmer");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|47155093");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ShimmerModifier_v2_14_Disabled,
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

function export:OnEnter_box_GetEntityInPrefab_v2_7()
    local params;
    params = {
        -- ObjectName,
        [0] = "pivot_point",
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|135638583");
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

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|252080762");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|274383317");
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

function export:OnEnter_box_ShimmerModifier_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|539422158");
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

function export:OnEnter_box_ShimmerModifier_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|728560500");
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

function export:OnEnter_box_StaticBreakableListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = self.hacklock,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_1()
    local params;
    params = {
        -- ObjectName,
        [0] = "siloflap_flap",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_18()
    local params;
    params = {
        -- ObjectName,
        [0] = "sparks",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1250418361");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_2_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.sparks,
    };
    return params;
end;

function export:OnEnter_box_ShimmerModifier_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ShimmerModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ShimmerModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|1276409721");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ShimmerModifier_v2_17_Enabled,
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
        [0] = "siloflap_centerscene",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_13()
    local params;
    params = {
        -- ObjectName,
        [0] = "latch",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_GetEntityInPrefab_v2_19()
    local params;
    params = {
        -- ObjectName,
        [0] = "siloflap_flaplock",
        -- PrefabEntity,
        [1] = self.PrefabID,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_21()
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

function export:OnEnter_box_Simple_Node_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B30.domino|@LT01_030_Siloflap_Breakable|2141416701");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_9()
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

function export:OnExit_box_GetEntityInPrefab_v2_7_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_7;
    self.ePivot_Point = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_8_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_8;
    self.hacklock = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_1_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_1;
    self.eFlap = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_18_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_18;
    self.sparks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_15_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_15;
    self.eCenterscene = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_13_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_13;
    self.eLatch = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetEntityInPrefab_v2_19_Out()
    local l0;
    l0 = self.box_GetEntityInPrefab_v2_19;
    self.eFlapLock = l0:GetDataOutValue(0);
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
