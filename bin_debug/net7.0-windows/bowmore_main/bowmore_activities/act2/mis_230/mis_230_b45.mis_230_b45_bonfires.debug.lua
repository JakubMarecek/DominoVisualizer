LUAC � -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_230/mis_230_b45.domino
-- User graph: MIS_230_B45_Bonfires
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="BoneFire_GRP" Type="Nomad|group" />
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/BurnableObjectListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2041826427.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B45.MIS_230_B45_Bonfires.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "BoneFire_GRP",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BurnableObjectListener_v2.lua")] = {
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
                name = "AlmostBurnedOut",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "StartedBurning",
                delayed = true,
            },
            [4] = {
                name = "StoppedBurning",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "checkOnEnable",
                type = "bool",
            },
            [2] = {
                name = "objectId",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
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
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
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
    self._name = "MIS_230_B45_Bonfires";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires";
    self.Finished = DummyFunction;
    self.TotalFireLite = 0;
    self.OBJProgressID = 0;
    self.box_UniversalInteractionModifier_v2_47 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|30213293");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_47_Enabled,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|137886280");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_OnceOnly_v3_50 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|291747056");
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
                [0] = self.f_box_OnceOnly_v3_50_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|303772119");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|319709732");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_SoundModifier_v2_10 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|374484604");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_10_Started,
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|401691247");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|495272843");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_62 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|665176947");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_62_Enabled,
    });
    self.box_UniversalInteractionModifier_v2_18 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|711103455");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_18_Enabled,
    });
    self.box_OnceOnly_v3_49 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|751203127");
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
                [0] = self.f_box_OnceOnly_v3_49_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|775460623");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|780329413");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_UniversalInteractionModifier_v2_76 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|811501596");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_76_Enabled,
    });
    self.box_OnceOnly_v3_36 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|870136980");
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
                [0] = self.f_box_OnceOnly_v3_36_Out_0,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionModifier_v2_15 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|892079763");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_15_Enabled,
    });
    self.box_SoundModifier_v2_60 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|903974079");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_60_Started,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|959432858");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_Delay_v5_63 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1148964555");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_63_TimeElapsed,
    });
    self.box_BurnableObjectListener_v2_24 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1195951003");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_24_AlmostBurnedOut,
        -- StartedBurning,
        [3] = self.f_box_BurnableObjectListener_v2_24_StartedBurning,
        -- StoppedBurning,
        [4] = self.f_box_BurnableObjectListener_v2_24_StoppedBurning,
    });
    self.box_BurnableObjectListener_v2_38 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1411837413");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_38_AlmostBurnedOut,
        -- StartedBurning,
        [3] = self.f_box_BurnableObjectListener_v2_38_StartedBurning,
        -- StoppedBurning,
        [4] = self.f_box_BurnableObjectListener_v2_38_StoppedBurning,
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1485699719");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
    self.box_BurnableObjectListener_v2_51 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1567838946");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_51_AlmostBurnedOut,
        -- StartedBurning,
        [3] = self.f_box_BurnableObjectListener_v2_51_StartedBurning,
        -- StoppedBurning,
        [4] = self.f_box_BurnableObjectListener_v2_51_StoppedBurning,
    });
    self.box_UniversalInteractionModifier_v2_58 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1588408220");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_58_Enabled,
    });
    self.box_SoundModifier_v2_55 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1810755870");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_55_Started,
    });
    self.box_BurnableObjectListener_v2_75 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1839356876");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_75_AlmostBurnedOut,
        -- StartedBurning,
        [3] = self.f_box_BurnableObjectListener_v2_75_StartedBurning,
        -- StoppedBurning,
        [4] = self.f_box_BurnableObjectListener_v2_75_StoppedBurning,
    });
    self.box_UniversalInteractionModifier_v2_65 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1858301786");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_65_Enabled,
    });
    self.box_OnceOnly_v3_5 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1929293098");
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
                [0] = self.f_box_OnceOnly_v3_5_Out_0,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionModifier_v2_91 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_91");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1958700559");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_91_Enabled,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|2023176663");
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_SoundModifier_v2_4 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|2057496103");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_4_Started,
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_ParticleSystem_v3_77();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1607347622", "1607347622", "MIS_230_B45_Bonfires", "Start", "box_ParticleSystem_v3_77.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_80_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_27();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|329555660", "329555660", "MIS_230_B45_Bonfires", "box_Simple_Node_80.Out", "box_AddActivityObjective_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_81_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|2048037342", "2048037342", "MIS_230_B45_Bonfires", "box_Simple_Node_81.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ParticleSystem_v3_74_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_10();
    l0 = self.box_SoundModifier_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1970783161", "1970783161", "MIS_230_B45_Bonfires", "box_ParticleSystem_v3_74.Stopped", "box_SoundModifier_v2_10.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_UniversalInteractionModifier_v2_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17();
    l0 = self.box_UniversalInteractionModifier_v2_47;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|29551469", "29551469", "MIS_230_B45_Bonfires", "box_UniversalInteractionModifier_v2_47.Enabled", "box_ActivityObjectiveMarkerModifier_v3_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_26_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_BurnableObjectListener_v2_24();
    l0 = self.box_BurnableObjectListener_v2_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1499006870", "1499006870", "MIS_230_B45_Bonfires", "box_ParticleSystem_v3_26.Started", "box_BurnableObjectListener_v2_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_6();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1853709844", "1853709844", "MIS_230_B45_Bonfires", "box_MultipleOR_25.Out", "box_IntegerArithmetics_v2_6.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_34_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_65();
    l0 = self.box_UniversalInteractionModifier_v2_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|639212183", "639212183", "MIS_230_B45_Bonfires", "box_ActivityObjectiveMarkerModifier_v3_34.Disabled", "box_UniversalInteractionModifier_v2_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_50_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_OnceOnly_v3_50;
    l1 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|595453073", "595453073", "MIS_230_B45_Bonfires", "box_OnceOnly_v3_50.Out", "box_Delay_v5_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_34();
    l0 = self.box_Delay_v5_33;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|2012386646", "2012386646", "MIS_230_B45_Bonfires", "box_Delay_v5_33.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_34.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_58();
    l0 = self.box_UniversalInteractionModifier_v2_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|727607475", "727607475", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_48.Out", "box_UniversalInteractionModifier_v2_58.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_18();
    l0 = self.box_UniversalInteractionModifier_v2_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|622588384", "622588384", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_48.Out", "box_UniversalInteractionModifier_v2_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_15();
    l0 = self.box_UniversalInteractionModifier_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1069940040", "1069940040", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_48.Out", "box_UniversalInteractionModifier_v2_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_47();
    l0 = self.box_UniversalInteractionModifier_v2_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|811976644", "811976644", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_48.Out", "box_UniversalInteractionModifier_v2_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_9();
    l0 = self.box_MultipleOR_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|786523286", "786523286", "MIS_230_B45_Bonfires", "box_MultipleOR_3.Out", "box_SetActivityObjectiveProgress_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_40_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_55();
    l0 = self.box_SoundModifier_v2_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|445462738", "445462738", "MIS_230_B45_Bonfires", "box_ParticleSystem_v3_40.Stopped", "box_SoundModifier_v2_55.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundModifier_v2_10_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_10;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1063222045", "1063222045", "MIS_230_B45_Bonfires", "box_SoundModifier_v2_10.Started", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_68();
    l0 = self.box_Delay_v5_37;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1600774108", "1600774108", "MIS_230_B45_Bonfires", "box_Delay_v5_37.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_68.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_8();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|994663137", "994663137", "MIS_230_B45_Bonfires", "box_Delay_v5_11.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_8.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_81();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|728823476", "728823476", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_1.Out", "box_Simple_Node_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_12();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|619562332", "619562332", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_1.Out", "box_Compare_Integers_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_53_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|220274936", "220274936", "MIS_230_B45_Bonfires", "box_MissionBlockLayer_53.Activated", "box_OutputOrder_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_69_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_30();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1256079527", "1256079527", "MIS_230_B45_Bonfires", "box_ActivityObjectiveMarkerModifier_v3_69.Enabled", "box_ParticleSystem_v3_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_62_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_22();
    l0 = self.box_UniversalInteractionModifier_v2_62;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|814131926", "814131926", "MIS_230_B45_Bonfires", "box_UniversalInteractionModifier_v2_62.Enabled", "box_ParticleSystem_v3_22.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_42_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1163082224", "1163082224", "MIS_230_B45_Bonfires", "box_ActivityObjectiveMarkerModifier_v3_42.Enabled", "box_ParticleSystem_v3_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_44();
    l0 = self.box_UniversalInteractionModifier_v2_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1448548447", "1448548447", "MIS_230_B45_Bonfires", "box_UniversalInteractionModifier_v2_18.Enabled", "box_ActivityObjectiveMarkerModifier_v3_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_49_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_OnceOnly_v3_49;
    l1 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|664171533", "664171533", "MIS_230_B45_Bonfires", "box_OnceOnly_v3_49.Out", "box_Delay_v5_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_8_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_91();
    l0 = self.box_UniversalInteractionModifier_v2_91;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1130840142", "1130840142", "MIS_230_B45_Bonfires", "box_ActivityObjectiveMarkerModifier_v3_8.Disabled", "box_UniversalInteractionModifier_v2_91.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_22_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_60();
    l0 = self.box_SoundModifier_v2_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|333886457", "333886457", "MIS_230_B45_Bonfires", "box_ParticleSystem_v3_22.Stopped", "box_SoundModifier_v2_60.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_32_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_32;
    l1 = self.box_OnceOnly_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|404386287", "404386287", "MIS_230_B45_Bonfires", "box_MultipleOR_32.Out", "box_OnceOnly_v3_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_56_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_56;
    l1 = self.box_OnceOnly_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1611308744", "1611308744", "MIS_230_B45_Bonfires", "box_MultipleOR_56.Out", "box_OnceOnly_v3_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionModifier_v2_76_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_74();
    l0 = self.box_UniversalInteractionModifier_v2_76;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1022963130", "1022963130", "MIS_230_B45_Bonfires", "box_UniversalInteractionModifier_v2_76.Enabled", "box_ParticleSystem_v3_74.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_36_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_OnceOnly_v3_36;
    l1 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|709453261", "709453261", "MIS_230_B45_Bonfires", "box_OnceOnly_v3_36.Out", "box_Delay_v5_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_69();
    l0 = self.box_UniversalInteractionModifier_v2_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|275449505", "275449505", "MIS_230_B45_Bonfires", "box_UniversalInteractionModifier_v2_15.Enabled", "box_ActivityObjectiveMarkerModifier_v3_69.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_60_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_60;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1247421007", "1247421007", "MIS_230_B45_Bonfires", "box_SoundModifier_v2_60.Started", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_70_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_70;
    l1 = self.box_OnceOnly_v3_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1086778781", "1086778781", "MIS_230_B45_Bonfires", "box_MultipleOR_70.Out", "box_OnceOnly_v3_49.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EndActivityObjective_v2_78_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|147816023", "147816023", "MIS_230_B45_Bonfires", "box_EndActivityObjective_v2_78.Out", "Finished", clone:GetLuaBox(), self);
    self:Finished();
end;

function export:f_box_AddActivityObjective_v2_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|730572956", "730572956", "MIS_230_B45_Bonfires", "box_AddActivityObjective_v2_27.Out", "box_AddActivityObjectiveProgress_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_63_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_78();
    l0 = self.box_Delay_v5_63;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1266469144", "1266469144", "MIS_230_B45_Bonfires", "box_Delay_v5_63.TimeElapsed", "box_EndActivityObjective_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BurnableObjectListener_v2_24_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_24;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1066938261", "1066938261", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_24.AlmostBurnedOut", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_BurnableObjectListener_v2_24_StartedBurning()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_24;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|347275113", "347275113", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_24.StartedBurning", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BurnableObjectListener_v2_24_StoppedBurning()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_24;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1586708632", "1586708632", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_24.StoppedBurning", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_52_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1544306189", "1544306189", "MIS_230_B45_Bonfires", "box_ParticleSystem_v3_52.Stopped", "box_SoundModifier_v2_4.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_21_Out()
    local l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_21_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1954798255", "1954798255", "MIS_230_B45_Bonfires", "box_AddActivityObjectiveProgress_v2_21.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_46();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|647659956", "647659956", "MIS_230_B45_Bonfires", "box_ActivityObjectiveMarkerModifier_v3_17.Enabled", "box_ParticleSystem_v3_46.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_44_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1658108830", "1658108830", "MIS_230_B45_Bonfires", "box_ActivityObjectiveMarkerModifier_v3_44.Enabled", "box_ParticleSystem_v3_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_29_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_62();
    l0 = self.box_UniversalInteractionModifier_v2_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|800572937", "800572937", "MIS_230_B45_Bonfires", "box_ActivityObjectiveMarkerModifier_v3_29.Disabled", "box_UniversalInteractionModifier_v2_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_BurnableObjectListener_v2_38_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_38;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|380689318", "380689318", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_38.AlmostBurnedOut", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_BurnableObjectListener_v2_38_StartedBurning()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_38;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|593612068", "593612068", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_38.StartedBurning", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BurnableObjectListener_v2_38_StoppedBurning()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_38;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1934708572", "1934708572", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_38.StoppedBurning", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1994995355", "1994995355", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_72.Out", "box_OutputOrder_v2_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_72_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|2031271540", "2031271540", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_72.Out", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_19_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_BurnableObjectListener_v2_75();
    l0 = self.box_BurnableObjectListener_v2_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|2140857880", "2140857880", "MIS_230_B45_Bonfires", "box_ParticleSystem_v3_19.Started", "box_BurnableObjectListener_v2_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29();
    l0 = self.box_Delay_v5_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1228318249", "1228318249", "MIS_230_B45_Bonfires", "box_Delay_v5_2.TimeElapsed", "box_ActivityObjectiveMarkerModifier_v3_29.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BurnableObjectListener_v2_51_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_51;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|264541470", "264541470", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_51.AlmostBurnedOut", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_BurnableObjectListener_v2_51_StartedBurning()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_51;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|93082606", "93082606", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_51.StartedBurning", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BurnableObjectListener_v2_51_StoppedBurning()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_51;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1990749285", "1990749285", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_51.StoppedBurning", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionModifier_v2_58_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42();
    l0 = self.box_UniversalInteractionModifier_v2_58;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|235356639", "235356639", "MIS_230_B45_Bonfires", "box_UniversalInteractionModifier_v2_58.Enabled", "box_ActivityObjectiveMarkerModifier_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_77_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_53();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|461407829", "461407829", "MIS_230_B45_Bonfires", "box_ParticleSystem_v3_77.Stopped", "box_MissionBlockLayer_53.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_46_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_BurnableObjectListener_v2_38();
    l0 = self.box_BurnableObjectListener_v2_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1287000571", "1287000571", "MIS_230_B45_Bonfires", "box_ParticleSystem_v3_46.Started", "box_BurnableObjectListener_v2_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_55_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_55;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|444872571", "444872571", "MIS_230_B45_Bonfires", "box_SoundModifier_v2_55.Started", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_68_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_76();
    l0 = self.box_UniversalInteractionModifier_v2_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|615704340", "615704340", "MIS_230_B45_Bonfires", "box_ActivityObjectiveMarkerModifier_v3_68.Disabled", "box_UniversalInteractionModifier_v2_76.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_BurnableObjectListener_v2_75_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_75;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1908712996", "1908712996", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_75.AlmostBurnedOut", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_BurnableObjectListener_v2_75_StartedBurning()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_75;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1257214600", "1257214600", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_75.StartedBurning", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BurnableObjectListener_v2_75_StoppedBurning()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_75;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|4300278", "4300278", "MIS_230_B45_Bonfires", "box_BurnableObjectListener_v2_75.StoppedBurning", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionModifier_v2_65_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_40();
    l0 = self.box_UniversalInteractionModifier_v2_65;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|2079145734", "2079145734", "MIS_230_B45_Bonfires", "box_UniversalInteractionModifier_v2_65.Enabled", "box_ParticleSystem_v3_40.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_7();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|864095329", "864095329", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_54.Out", "box_MissionBlockLayer_7.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_63();
    l0 = self.box_Delay_v5_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|911993281", "911993281", "MIS_230_B45_Bonfires", "box_OutputOrder_v2_54.Out", "box_Delay_v5_63.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_IntegerArithmetics_v2_6_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1197467938", "1197467938", "MIS_230_B45_Bonfires", "box_IntegerArithmetics_v2_6.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_5_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_OnceOnly_v3_5;
    l1 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1076917426", "1076917426", "MIS_230_B45_Bonfires", "box_OnceOnly_v3_5.Out", "box_Delay_v5_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_UniversalInteractionModifier_v2_91_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_52();
    l0 = self.box_UniversalInteractionModifier_v2_91;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1418611324", "1418611324", "MIS_230_B45_Bonfires", "box_UniversalInteractionModifier_v2_91.Enabled", "box_ParticleSystem_v3_52.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_41_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_41;
    l1 = self.box_OnceOnly_v3_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1624230221", "1624230221", "MIS_230_B45_Bonfires", "box_MultipleOR_41.Out", "box_OnceOnly_v3_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_12_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1841311449", "1841311449", "MIS_230_B45_Bonfires", "box_Compare_Integers_12.A_ge_B", "box_OutputOrder_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_4_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_4;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1958525527", "1958525527", "MIS_230_B45_Bonfires", "box_SoundModifier_v2_4.Started", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_30_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_BurnableObjectListener_v2_51();
    l0 = self.box_BurnableObjectListener_v2_51;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1730535551", "1730535551", "MIS_230_B45_Bonfires", "box_ParticleSystem_v3_30.Started", "box_BurnableObjectListener_v2_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|@STARTFIREOBJ");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|@UpdateFireOBJ");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_81_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|23857566");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_74_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109012404730873965",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_47()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2109039223054011422",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|67523450");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_26_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109012401350264939",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|201499040");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_34_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109069439977692542",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|313639574");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
                [2] = self.f_box_OutputOrder_v2_48_Out_2,
                [3] = self.f_box_OutputOrder_v2_48_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|323252617");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_40_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109012409250236527",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_10()
    local params;
    params = {
        -- Pawns,
        [0] = "#FDF68E27",
        -- SoundId,
        [1] = "2041826427",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|500332647");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|534955516");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_53_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160311992749012",
        -- missionLayerId,
        [1] = "27160314133815859",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|653980783");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_69_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2109069422753783162",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_62()
    local params;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2109039223049817112",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|699632669");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_42_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2109069399204863341",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_18()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2109039223051914266",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|751622914");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_8_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109069413236907382",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|756488444");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_22_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109012367246379113",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_76()
    local params;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2109039223051914268",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_15()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2109039223051914268",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_60()
    local params;
    params = {
        -- Pawns,
        [0] = "#FDF68E27",
        -- SoundId,
        [1] = "2041826427",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|993128387");
    l0:SetConnections({
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
        -- Progress,
        [1] = self.TotalFireLite,
        -- ProgressId,
        [2] = self.OBJProgressID,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|993866905");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_78_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1076856788");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_27_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = false,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_63()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1154461806");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160311992749012",
        -- missionLayerId,
        [1] = "27160314133815859",
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2109039223051914266",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1253366823");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_52_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109012401350264939",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1279514429");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_21_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 4,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1281443553");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_17_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2109069439977692542",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1309587957");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_44_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2109069413236907382",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1352451922");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_29_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109069399204863341",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2109039223054011422",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1412120181");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
                [1] = self.f_box_OutputOrder_v2_72_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1432560590");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_19_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109012367246379113",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2109039223051914268",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_58()
    local params;
    params = {
        -- state,
        [3] = false,
        -- usableEntity,
        [4] = "2109039223049817112",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1624490053");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_77_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = self.BoneFire_GRP,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1697988006");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_46_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109012409250236527",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_55()
    local params;
    params = {
        -- Pawns,
        [0] = "#FDF68E27",
        -- SoundId,
        [1] = "2041826427",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1838640924");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_68_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2109069422753783162",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_220_Fire",
            id = "1010870",
        },
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_75()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2109039223049817112",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_65()
    local params;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2109039223054011422",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1882407979");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|1899458530");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_6_Out,
    });
    params = {
        -- A,
        [0] = self.TotalFireLite,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_91()
    local params;
    params = {
        -- state,
        [3] = true,
        -- usableEntity,
        [4] = "2109039223051914266",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|2023189668");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_12_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.TotalFireLite,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_4()
    local params;
    params = {
        -- Pawns,
        [0] = "#FDF68E27",
        -- SoundId,
        [1] = "2041826427",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B45.domino|@MIS_230_B45_Bonfires|2140327478");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_30_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109012404730873965",
    };
    return params;
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_21_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.OBJProgressID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.TotalFireLite = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Finished" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="BoneFire_GRP" AnchorDynType="0" DataTypeID="group" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
