LUACq�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_200/mis_200.domino
-- User graph: MIS_200_LightManager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="b_Fire" Type="Core|bool" />
    <DataIn Name="s_MessageListen" Type="Core|string" />
    <DataIn Name="g_LightGroup" Type="Nomad|group" />
    <DataIn Name="e_StartPos" Type="Nomad|entity{}" />
    <DataIn Name="e_EndPos" Type="Nomad|entity{}" />
    <DataIn Name="e_LastLight" Type="Nomad|entity{}" />
    <DataIn Name="e_FinalFire" Type="Nomad|entity{}" />
    <DataIn Name="MB_ID" Type="Nomad|missionblock" />
    <DataIn Name="MB_Layer_ID" Type="Nomad|missionblocklayer" />
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
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GroupIter.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_200 = nil;
    Globals.MIS_200 = {
        MIS_200_B10_FIRE = false,
        MIS_200_B20_FIRE = false,
        MIS_200_B30_FIRE = false,
        MIS_200_B30_WINDMILL = false,
        MIS_200_BRIEF_EDEN_SKIPPED = true,
        isB10Runing = false,
        isB20Runing = false,
        isB30Runing = false,
        isB10Reloaded = true,
        isB20Reloaded = true,
        isB30Reloaded = true,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_200/MIS_200.MIS_200_LightManager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PreconditionNotValid",
            },
            [1] = {
                name = "PreconditionValid",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "b_Fire",
                type = "bool",
            },
            [1] = {
                name = "e_EndPos",
                type = "entity",
            },
            [2] = {
                name = "e_FinalFire",
                type = "entity",
            },
            [3] = {
                name = "e_LastLight",
                type = "entity",
            },
            [4] = {
                name = "e_StartPos",
                type = "entity",
            },
            [5] = {
                name = "g_LightGroup",
                type = "group",
            },
            [6] = {
                name = "MB_ID",
                type = "missionblock",
            },
            [7] = {
                name = "MB_Layer_ID",
                type = "missionblocklayer",
            },
            [8] = {
                name = "s_MessageListen",
                type = "string",
            },
        },
        dataInCount = 9,
        dataOut = {
            [0] = {
                name = "b_Fire_Out",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "dynamicLightId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/GroupIter.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndIter",
                delayed = true,
            },
            [1] = {
                name = "PawnIter",
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
                name = "entities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "entity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
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
                name = "usePhysVelocity",
                type = "bool",
            },
            [8] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
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
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
            },
        },
        controlInCount = 3,
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_200_LightManager";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager";
    self.Done = DummyFunction;
    self.Out = DummyFunction;
    self.box_MultipleAND_v2_15 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|237951305");
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
        [0] = self.f_box_MultipleAND_v2_15_Out,
    });
    self.box_ProximityRadiusListener_v3_5 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|538652351");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_5_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_5_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_5_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_5_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_5_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_5_SomeoneNear,
    });
    self.box_UniversalInteractionModifier_v2_4 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|836313754");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_10 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|929119974");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_10_Done,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|935384434");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1209695426");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_UniversalInteractionModifier_v2_8 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1536643360");
    l0:SetConnections({
    });
    self.box_GroupIter_6 = cbox:CreateBox("Domino/System/GroupIter.lua");
    l0 = self.box_GroupIter_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupIter_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1591849516");
    l0:SetConnections({
        -- EndIter,
        [0] = self.f_box_GroupIter_6_EndIter,
        -- PawnIter,
        [1] = self.f_box_GroupIter_6_PawnIter,
        -- Started,
        [2] = self.f_box_GroupIter_6_Started,
        -- Stopped,
        [3] = self.f_box_GroupIter_6_Stopped,
    });
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|2140498229");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
    });
end;

function export:PreconditionNotValid()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1147748221", "1147748221", "MIS_200_LightManager", "PreconditionNotValid", "box_EntityStatusListener_2.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:PreconditionValid()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|396032387", "396032387", "MIS_200_LightManager", "PreconditionValid", "box_OutputOrder_v2_14.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|510051770", "510051770", "MIS_200_LightManager", "box_OutputOrder_v2_38.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_5();
    l0 = self.box_ProximityRadiusListener_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|46730595", "46730595", "MIS_200_LightManager", "box_OutputOrder_v2_38.Out", "box_ProximityRadiusListener_v3_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_11();
    l0 = self.box_MultipleAND_v2_15;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1327135842", "1327135842", "MIS_200_LightManager", "box_MultipleAND_v2_15.Out", "box_ParticleSystem_v3_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_5_AllFar()
    self:OnExit_box_ProximityRadiusListener_v3_5_AllFar();
end;

function export:f_box_ProximityRadiusListener_v3_5_AllNear()
    self:OnExit_box_ProximityRadiusListener_v3_5_AllNear();
end;

function export:f_box_ProximityRadiusListener_v3_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_10();
    l0 = self.box_ProximityRadiusListener_v3_5;
    l1 = self.box_PositionModifier_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1584527374", "1584527374", "MIS_200_LightManager", "box_ProximityRadiusListener_v3_5.Enabled", "box_PositionModifier_v2_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_5_SomeoneFar()
    self:OnExit_box_ProximityRadiusListener_v3_5_SomeoneFar();
end;

function export:f_box_ProximityRadiusListener_v3_5_SomeoneNear()
    local params, l0, l1;
    self:OnExit_box_ProximityRadiusListener_v3_5_SomeoneNear();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_4();
    l0 = self.box_ProximityRadiusListener_v3_5;
    l1 = self.box_UniversalInteractionModifier_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|389298324", "389298324", "MIS_200_LightManager", "box_ProximityRadiusListener_v3_5.SomeoneNear", "box_UniversalInteractionModifier_v2_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_3();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|875184376", "875184376", "MIS_200_LightManager", "box_OutputOrder_v2_1.Out", "box_DynamicLightModifier_3.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupIter_6();
    l0 = self.box_GroupIter_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|656682157", "656682157", "MIS_200_LightManager", "box_OutputOrder_v2_1.Out", "box_GroupIter_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1293708724", "1293708724", "MIS_200_LightManager", "box_OutputOrder_v2_1.Out", "Done", clone:GetLuaBox(), self);
    self:Done();
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1574982271", "1574982271", "MIS_200_LightManager", "box_OutputOrder_v2_14.Out", "box_EntityStatusListener_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|2098211832", "2098211832", "MIS_200_LightManager", "box_OutputOrder_v2_14.Out", "box_EntityStatusListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_10_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_PositionModifier_v2_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1380211975", "1380211975", "MIS_200_LightManager", "box_PositionModifier_v2_10.Done", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1917146723", "1917146723", "MIS_200_LightManager", "box_EntityStatusListener_13.Loaded", "box_MultipleAND_v2_15.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|786089040", "786089040", "MIS_200_LightManager", "box_EntityStatusListener_12.Loaded", "box_MultipleAND_v2_15.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_GroupIter_6_PawnIter()
    local params, l0, l1;
    self:OnExit_box_GroupIter_6_PawnIter();
    params = self:OnEnter_box_UniversalInteractionModifier_v2_8();
    l0 = self.box_GroupIter_6;
    l1 = self.box_UniversalInteractionModifier_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|147635275", "147635275", "MIS_200_LightManager", "box_GroupIter_6.PawnIter", "box_UniversalInteractionModifier_v2_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_3_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|146846475", "146846475", "MIS_200_LightManager", "box_DynamicLightModifier_3.Enabled", "box_ParticleSystem_v3_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_11_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_9();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1837751981", "1837751981", "MIS_200_LightManager", "box_ParticleSystem_v3_11.Started", "box_DynamicLightModifier_9.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_EntityStatusListener_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|203962292", "203962292", "MIS_200_LightManager", "box_EntityStatusListener_2.Loaded", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|107521478");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = self.e_FinalFire,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|155395363");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_15()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_5()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = self.g_LightGroup,
        -- id2,
        [3] = self.e_StartPos,
        -- nearZone,
        [4] = 30,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|683758167");
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

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|804454343");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_4()
    local params, l0;
    l0 = self.box_ProximityRadiusListener_v3_5;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_10()
    local params;
    params = {
        -- blendTime,
        [1] = 15,
        -- endTarget,
        [4] = self.e_EndPos,
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = self.e_StartPos,
        -- usePhysVelocity,
        [7] = false,
        -- useSmallestAngleDiff,
        [8] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_FinalFire,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_LastLight,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1352137314");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = self.e_LastLight,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_8()
    local params, l0;
    l0 = self.box_GroupIter_6;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GroupIter_6()
    local params;
    params = {
        -- entities,
        [0] = self.g_LightGroup,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|1623717552");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_3_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = self.e_LastLight,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_200\\MIS_200.domino|@MIS_200_LightManager|2047936919");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_11_Started,
    });
    params = {
        -- TargetEntities,
        [0] = self.e_FinalFire,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = self.e_StartPos,
    };
    return params;
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_AllFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_5;
    l1 = self.box_UniversalInteractionModifier_v2_4;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_AllNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_5;
    l1 = self.box_UniversalInteractionModifier_v2_4;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_SomeoneFar()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_5;
    l1 = self.box_UniversalInteractionModifier_v2_4;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityRadiusListener_v3_5_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_5;
    l1 = self.box_UniversalInteractionModifier_v2_4;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupIter_6_PawnIter()
    local l0, l1;
    l0 = self.box_GroupIter_6;
    l1 = self.box_UniversalInteractionModifier_v2_8;
    l1:GetLuaBox().usableEntity = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Done()
    
end;
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="PreconditionNotValid" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="PreconditionValid" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Done" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="b_Fire" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="e_EndPos" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="e_FinalFire" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="e_LastLight" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="e_StartPos" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="g_LightGroup" AnchorDynType="0" DataTypeID="group" />
		<DataIn Name="MB_ID" AnchorDynType="0" DataTypeID="missionblock" />
		<DataIn Name="MB_Layer_ID" AnchorDynType="0" DataTypeID="missionblocklayer" />
		<DataIn Name="s_MessageListen" AnchorDynType="0" DataTypeID="string" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="b_Fire_Out" AnchorDynType="0" DataTypeID="bool" />
	</DatasOut>
</DominoMetadata>
