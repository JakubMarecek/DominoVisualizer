LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b30.domino
-- User graph: Intro_010_B30_Crowds
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
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B30.Intro_010_B30_Crowds.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "MainStarted",
            },
            [1] = {
                name = "Stop",
            },
            [2] = {
                name = "vol02",
            },
            [3] = {
                name = "vol04",
            },
            [4] = {
                name = "vol05",
            },
            [5] = {
                name = "vol05far",
            },
            [6] = {
                name = "vol05far_init",
            },
            [7] = {
                name = "vol06",
            },
            [8] = {
                name = "vol06_init",
            },
            [9] = {
                name = "vol07",
            },
            [10] = {
                name = "vol07_init",
            },
            [11] = {
                name = "vol08",
            },
            [12] = {
                name = "vol08_init",
            },
            [13] = {
                name = "vol09",
            },
            [14] = {
                name = "vol09_init",
            },
            [15] = {
                name = "vol10",
            },
            [16] = {
                name = "vol10_init",
            },
        },
        controlInCount = 17,
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
    metadataTable[GetPathID("Domino/System/Narrative/StartMetaSequence.lua")] = {
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Interrupt",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Interrupted",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ContextFlags",
                type = "list",
            },
            [1] = {
                name = "ID",
                type = "int",
            },
        },
        dataInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Intro_010_B30_Crowds";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds";
    self.MetaIDVol02 = 0;
    self.MetaIDVol04 = 0;
    self.MetaIDVol05 = 0;
    self.MetaIDVol05far = 0;
    self.MetaIDVol06 = 0;
    self.MetaIDVol07 = 0;
    self.MetaIDVol08 = 0;
    self.MetaIDVol09 = 0;
    self.MetaIDVol10 = 0;
    self.MetaIDPrattLoop = 0;
    self.MetaIDVol04RunningMan = 0;
    self.box_PlaySequence_v8_7 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|99289535");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 1,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_7_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_7_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                },
            },
            count = 1,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_7_Stopped,
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|183822505");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_MultipleAND_v2_19 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|264802490");
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
        [0] = self.f_box_MultipleAND_v2_19_Out,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|270359965");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_MultipleAND_v2_23 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|433706549");
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
        [0] = self.f_box_MultipleAND_v2_23_Out,
    });
    self.box_StartMetaSequence_21 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|450650913");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_21_Out,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|547451726");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_ProximityTrigger_v2_53 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|569806035");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_53_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_53_Enter,
    });
    self.box_PlaySequence_v8_1 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|591462819");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "pause",
                    value = self.f_box_PlaySequence_v8_1_SPOut__pause_,
                },
            },
            count = 1,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_1_Stopped,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|610682055");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_StartMetaSequence_39 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|693996889");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_39_Out,
    });
    self.box_ProximityTrigger_v2_27 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|906074290");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_27_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_27_Enter,
    });
    self.box_PlaySequence_v8_13 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|922894369");
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
        [0] = self.f_box_PlaySequence_v8_13_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_13_Skipped,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_13_Stopped,
    });
    self.box_StartMetaSequence_50 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|953791478");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_50_Out,
    });
    self.box_StartMetaSequence_25 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|962531663");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_25_Out,
    });
    self.box_MultipleAND_v2_14 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1134551242");
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
        [0] = self.f_box_MultipleAND_v2_14_Out,
    });
    self.box_StartMetaSequence_16 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1155245795");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_16_Out,
    });
    self.box_PlaySequence_v8_12 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1170326330");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_12_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_12_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                    value = self.f_box_PlaySequence_v8_12_SPOut__Pause_,
                },
            },
            count = 1,
        },
    });
    self.box_PlaySequence_v8_6 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1185448038");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 1,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_6_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_6_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                },
            },
            count = 1,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_6_Stopped,
    });
    self.box_ProximityTrigger_v2_17 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1217920322");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_17_Enter,
    });
    self.box_MultipleAND_v2_22 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1285848473");
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
        [0] = self.f_box_MultipleAND_v2_22_Out,
    });
    self.box_StartMetaSequence_10 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1310693182");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_10_Out,
    });
    self.box_StartMetaSequence_37 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1314606546");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_37_Out,
    });
    self.box_PlaySequence_v8_8 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1359243894");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 2,
        },
        controlOut = {
            [3] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_8_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_8_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                },
                [1] = {
                    string = "loopend",
                },
            },
            count = 2,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_8_Stopped,
    });
    self.box_StartMetaSequence_34 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1444467268");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_34_Out,
    });
    self.box_PlaySequence_v8_29 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1491793628");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                    value = self.f_box_PlaySequence_v8_29_SPOut__Pause_,
                },
            },
            count = 1,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_29_Stopped,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1531347650");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_StartMetaSequence_38 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1539399896");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_38_Out,
    });
    self.box_PlaySequence_v8_11 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1560900013");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 1,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_11_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_11_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                },
            },
            count = 1,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_11_Stopped,
    });
    self.box_StartMetaSequence_47 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1608872020");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_47_Out,
    });
    self.box_StartMetaSequence_32 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1681321173");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_32_Out,
    });
    self.box_PlaySequence_v8_5 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1698180683");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 1,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_5_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_5_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                },
            },
            count = 1,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_5_Stopped,
    });
    self.box_ProximityTrigger_v2_2 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1709132475");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_2_Enter,
    });
    self.box_PlaySequence_v8_4 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1733131009");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 1,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_4_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_4_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                },
            },
            count = 1,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_4_Stopped,
    });
    self.box_ProximityTrigger_v2_26 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1797226649");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_26_Enter,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1834416864");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1859757023");
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
        [0] = self.f_box_MultipleOR_44_Out,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|2032560260");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_PlaySequence_v8_3 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|2079360360");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 1,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Pause",
                    value = self.f_box_PlaySequence_v8_3_SPOut__Pause_,
                },
            },
            count = 1,
        },
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_3_Stopped,
    });
end;

function export:MainStarted()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1309979268", "1309979268", "Intro_010_B30_Crowds", "MainStarted", "box_OutputOrder_v2_24.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|791218588", "791218588", "Intro_010_B30_Crowds", "MainStarted", "box_OutputOrder_v2_15.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|622642437", "622642437", "Intro_010_B30_Crowds", "MainStarted", "box_OutputOrder_v2_20.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_StartMetaSequence_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|261174173", "261174173", "Intro_010_B30_Crowds", "MainStarted", "box_StartMetaSequence_25.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:Stop()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_13();
    l0 = self.box_PlaySequence_v8_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1866832344", "1866832344", "Intro_010_B30_Crowds", "Stop", "box_PlaySequence_v8_13.Skip", self, l0:GetLuaBox());
    -- Skip
    l0:Exec(3, params);
    params = self:OnEnter_box_PlaySequence_v8_6();
    l0 = self.box_PlaySequence_v8_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|982521601", "982521601", "Intro_010_B30_Crowds", "Stop", "box_PlaySequence_v8_6.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
    params = self:OnEnter_box_PlaySequence_v8_5();
    l0 = self.box_PlaySequence_v8_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|930699601", "930699601", "Intro_010_B30_Crowds", "Stop", "box_PlaySequence_v8_5.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
    params = self:OnEnter_box_PlaySequence_v8_7();
    l0 = self.box_PlaySequence_v8_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|591847834", "591847834", "Intro_010_B30_Crowds", "Stop", "box_PlaySequence_v8_7.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
    params = self:OnEnter_box_PlaySequence_v8_8();
    l0 = self.box_PlaySequence_v8_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1119048996", "1119048996", "Intro_010_B30_Crowds", "Stop", "box_PlaySequence_v8_8.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:vol02()
    local params, l0;
    params = self:OnEnter_box_MultipleAND_v2_22();
    l0 = self.box_MultipleAND_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|204209633", "204209633", "Intro_010_B30_Crowds", "vol02", "box_MultipleAND_v2_22.Condition", self, l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1649725820", "1649725820", "Intro_010_B30_Crowds", "vol02", "box_MultipleAND_v2_14.Condition", self, l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:vol04()
    local params, l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1114257387", "1114257387", "Intro_010_B30_Crowds", "vol04", "box_MultipleAND_v2_23.Condition", self, l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:vol05()
    local params, l0;
    params = self:OnEnter_box_MultipleAND_v2_19();
    l0 = self.box_MultipleAND_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|887022104", "887022104", "Intro_010_B30_Crowds", "vol05", "box_MultipleAND_v2_19.Condition", self, l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:vol05far()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_53();
    l0 = self.box_ProximityTrigger_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|2019856553", "2019856553", "Intro_010_B30_Crowds", "vol05far", "box_ProximityTrigger_v2_53.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:vol05far_init()
    local l0;
    l0 = self.box_StartMetaSequence_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|2084666450", "2084666450", "Intro_010_B30_Crowds", "vol05far_init", "box_StartMetaSequence_50.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:vol06()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_27();
    l0 = self.box_ProximityTrigger_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1781752340", "1781752340", "Intro_010_B30_Crowds", "vol06", "box_ProximityTrigger_v2_27.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:vol06_init()
    local l0;
    l0 = self.box_StartMetaSequence_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|938310735", "938310735", "Intro_010_B30_Crowds", "vol06_init", "box_StartMetaSequence_32.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:vol07()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_5();
    l0 = self.box_PlaySequence_v8_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1862395548", "1862395548", "Intro_010_B30_Crowds", "vol07", "box_PlaySequence_v8_5.SPIn", self, l0:GetLuaBox());
    -- SPIn
    l0:ExecDynString(4, params, "Start07");
end;

function export:vol07_init()
    local l0;
    l0 = self.box_StartMetaSequence_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1846926942", "1846926942", "Intro_010_B30_Crowds", "vol07_init", "box_StartMetaSequence_34.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:vol08()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_6();
    l0 = self.box_PlaySequence_v8_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|646539448", "646539448", "Intro_010_B30_Crowds", "vol08", "box_PlaySequence_v8_6.SPIn", self, l0:GetLuaBox());
    -- SPIn
    l0:ExecDynString(4, params, "Start08");
end;

function export:vol08_init()
    local l0;
    l0 = self.box_StartMetaSequence_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|36943277", "36943277", "Intro_010_B30_Crowds", "vol08_init", "box_StartMetaSequence_37.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:vol09()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_7();
    l0 = self.box_PlaySequence_v8_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|2059523134", "2059523134", "Intro_010_B30_Crowds", "vol09", "box_PlaySequence_v8_7.SPIn", self, l0:GetLuaBox());
    -- SPIn
    l0:ExecDynString(4, params, "Start09");
end;

function export:vol09_init()
    local l0;
    l0 = self.box_StartMetaSequence_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|562027933", "562027933", "Intro_010_B30_Crowds", "vol09_init", "box_StartMetaSequence_38.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:vol10()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_8();
    l0 = self.box_PlaySequence_v8_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1569869335", "1569869335", "Intro_010_B30_Crowds", "vol10", "box_PlaySequence_v8_8.SPIn", self, l0:GetLuaBox());
    -- SPIn
    l0:ExecDynString(4, params, "Start10");
end;

function export:vol10_init()
    local l0;
    l0 = self.box_StartMetaSequence_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1721735999", "1721735999", "Intro_010_B30_Crowds", "vol10_init", "box_StartMetaSequence_39.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
    l0 = self.box_StartMetaSequence_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1314138773", "1314138773", "Intro_010_B30_Crowds", "vol10_init", "box_StartMetaSequence_47.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_7_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_7;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|131429413", "131429413", "Intro_010_B30_Crowds", "box_PlaySequence_v8_7.Finished", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_7_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_7;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|424175022", "424175022", "Intro_010_B30_Crowds", "box_PlaySequence_v8_7.Skipped", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_7_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_7;
    l1 = self.box_MultipleOR_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|348114813", "348114813", "Intro_010_B30_Crowds", "box_PlaySequence_v8_7.Stopped", "box_MultipleOR_44.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_48();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|65451321", "65451321", "Intro_010_B30_Crowds", "box_MultipleOR_49.Out", "box_StopMetaSequence_v4_48.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_3();
    l0 = self.box_MultipleAND_v2_19;
    l1 = self.box_PlaySequence_v8_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|652073011", "652073011", "Intro_010_B30_Crowds", "box_MultipleAND_v2_19.Out", "box_PlaySequence_v8_3.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_42();
    l0 = self.box_MultipleOR_45;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|343284564", "343284564", "Intro_010_B30_Crowds", "box_MultipleOR_45.Out", "box_StopMetaSequence_v4_42.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_29();
    l0 = self.box_MultipleAND_v2_23;
    l1 = self.box_PlaySequence_v8_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1044120567", "1044120567", "Intro_010_B30_Crowds", "box_MultipleAND_v2_23.Out", "box_PlaySequence_v8_29.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_21_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_21_Out();
    params = self:OnEnter_box_PlaySequence_v8_29();
    l0 = self.box_StartMetaSequence_21;
    l1 = self.box_PlaySequence_v8_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|836169497", "836169497", "Intro_010_B30_Crowds", "box_StartMetaSequence_21.Out", "box_PlaySequence_v8_29.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_30();
    l0 = self.box_MultipleOR_31;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|464720129", "464720129", "Intro_010_B30_Crowds", "box_MultipleOR_31.Out", "box_StopMetaSequence_v4_30.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_53_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_11();
    l0 = self.box_ProximityTrigger_v2_53;
    l1 = self.box_PlaySequence_v8_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1640625269", "1640625269", "Intro_010_B30_Crowds", "box_ProximityTrigger_v2_53.Enabled", "box_PlaySequence_v8_11.SPIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- SPIn
    l1:ExecDynString(4, params, "Start05far");
end;

function export:f_box_ProximityTrigger_v2_53_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_11();
    l0 = self.box_ProximityTrigger_v2_53;
    l1 = self.box_PlaySequence_v8_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|430004731", "430004731", "Intro_010_B30_Crowds", "box_ProximityTrigger_v2_53.Enter", "box_PlaySequence_v8_11.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_1_SPOut__pause_()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_14();
    l0 = self.box_PlaySequence_v8_1;
    l1 = self.box_MultipleAND_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|450963753", "450963753", "Intro_010_B30_Crowds", "box_PlaySequence_v8_1.SPOut", "box_MultipleAND_v2_14.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PlaySequence_v8_1_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_9();
    l0 = self.box_PlaySequence_v8_1;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1824255091", "1824255091", "Intro_010_B30_Crowds", "box_PlaySequence_v8_1.Stopped", "box_StopMetaSequence_v4_9.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_35();
    l0 = self.box_MultipleOR_36;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|83489316", "83489316", "Intro_010_B30_Crowds", "box_MultipleOR_36.Out", "box_StopMetaSequence_v4_35.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_39_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_39_Out();
    params = self:OnEnter_box_PlaySequence_v8_8();
    l0 = self.box_StartMetaSequence_39;
    l1 = self.box_PlaySequence_v8_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1192586444", "1192586444", "Intro_010_B30_Crowds", "box_StartMetaSequence_39.Out", "box_PlaySequence_v8_8.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|440014810", "440014810", "Intro_010_B30_Crowds", "box_OutputOrder_v2_15.Out", "box_StartMetaSequence_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_17();
    l0 = self.box_ProximityTrigger_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1327205275", "1327205275", "Intro_010_B30_Crowds", "box_OutputOrder_v2_15.Out", "box_ProximityTrigger_v2_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_4();
    l0 = self.box_ProximityTrigger_v2_27;
    l1 = self.box_PlaySequence_v8_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|847460501", "847460501", "Intro_010_B30_Crowds", "box_ProximityTrigger_v2_27.Enabled", "box_PlaySequence_v8_4.SPIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- SPIn
    l1:ExecDynString(4, params, "Start06");
end;

function export:f_box_ProximityTrigger_v2_27_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_4();
    l0 = self.box_ProximityTrigger_v2_27;
    l1 = self.box_PlaySequence_v8_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1589328000", "1589328000", "Intro_010_B30_Crowds", "box_ProximityTrigger_v2_27.Enter", "box_PlaySequence_v8_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_13_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|954350433", "954350433", "Intro_010_B30_Crowds", "box_PlaySequence_v8_13.Finished", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_13_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|483659047", "483659047", "Intro_010_B30_Crowds", "box_PlaySequence_v8_13.Skipped", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_13_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|973472699", "973472699", "Intro_010_B30_Crowds", "box_PlaySequence_v8_13.Stopped", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1158877644", "1158877644", "Intro_010_B30_Crowds", "box_OutputOrder_v2_24.Out", "box_StartMetaSequence_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_26();
    l0 = self.box_ProximityTrigger_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1423045212", "1423045212", "Intro_010_B30_Crowds", "box_OutputOrder_v2_24.Out", "box_ProximityTrigger_v2_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StartMetaSequence_50_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_50_Out();
    params = self:OnEnter_box_PlaySequence_v8_11();
    l0 = self.box_StartMetaSequence_50;
    l1 = self.box_PlaySequence_v8_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1414767287", "1414767287", "Intro_010_B30_Crowds", "box_StartMetaSequence_50.Out", "box_PlaySequence_v8_11.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_25_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_25_Out();
    params = self:OnEnter_box_PlaySequence_v8_12();
    l0 = self.box_StartMetaSequence_25;
    l1 = self.box_PlaySequence_v8_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|397078691", "397078691", "Intro_010_B30_Crowds", "box_StartMetaSequence_25.Out", "box_PlaySequence_v8_12.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|201408670", "201408670", "Intro_010_B30_Crowds", "box_OutputOrder_v2_20.Out", "box_StartMetaSequence_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_2();
    l0 = self.box_ProximityTrigger_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1744244806", "1744244806", "Intro_010_B30_Crowds", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_1();
    l0 = self.box_MultipleAND_v2_14;
    l1 = self.box_PlaySequence_v8_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1171943501", "1171943501", "Intro_010_B30_Crowds", "box_MultipleAND_v2_14.Out", "box_PlaySequence_v8_1.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_16_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_16_Out();
    params = self:OnEnter_box_PlaySequence_v8_3();
    l0 = self.box_StartMetaSequence_16;
    l1 = self.box_PlaySequence_v8_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|688516966", "688516966", "Intro_010_B30_Crowds", "box_StartMetaSequence_16.Out", "box_PlaySequence_v8_3.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_12_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_12;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|966607763", "966607763", "Intro_010_B30_Crowds", "box_PlaySequence_v8_12.Finished", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_12_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_12;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1062942519", "1062942519", "Intro_010_B30_Crowds", "box_PlaySequence_v8_12.Skipped", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_12_SPOut__Pause_()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_22();
    l0 = self.box_PlaySequence_v8_12;
    l1 = self.box_MultipleAND_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1791944949", "1791944949", "Intro_010_B30_Crowds", "box_PlaySequence_v8_12.SPOut", "box_MultipleAND_v2_22.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PlaySequence_v8_6_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_6;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|304232650", "304232650", "Intro_010_B30_Crowds", "box_PlaySequence_v8_6.Finished", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_6_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_6;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1023225229", "1023225229", "Intro_010_B30_Crowds", "box_PlaySequence_v8_6.Skipped", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_6_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_6;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|541391477", "541391477", "Intro_010_B30_Crowds", "box_PlaySequence_v8_6.Stopped", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_17_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_1();
    l0 = self.box_ProximityTrigger_v2_17;
    l1 = self.box_PlaySequence_v8_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|2142625049", "2142625049", "Intro_010_B30_Crowds", "box_ProximityTrigger_v2_17.Enter", "box_PlaySequence_v8_1.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_MultipleAND_v2_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_12();
    l0 = self.box_MultipleAND_v2_22;
    l1 = self.box_PlaySequence_v8_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|12250103", "12250103", "Intro_010_B30_Crowds", "box_MultipleAND_v2_22.Out", "box_PlaySequence_v8_12.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_10_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_10_Out();
    params = self:OnEnter_box_PlaySequence_v8_1();
    l0 = self.box_StartMetaSequence_10;
    l1 = self.box_PlaySequence_v8_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1682520864", "1682520864", "Intro_010_B30_Crowds", "box_StartMetaSequence_10.Out", "box_PlaySequence_v8_1.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_37_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_37_Out();
    params = self:OnEnter_box_PlaySequence_v8_6();
    l0 = self.box_StartMetaSequence_37;
    l1 = self.box_PlaySequence_v8_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|561573169", "561573169", "Intro_010_B30_Crowds", "box_StartMetaSequence_37.Out", "box_PlaySequence_v8_6.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_8_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_8;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|2066471721", "2066471721", "Intro_010_B30_Crowds", "box_PlaySequence_v8_8.Finished", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_8_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_8;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1544413099", "1544413099", "Intro_010_B30_Crowds", "box_PlaySequence_v8_8.Skipped", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_8_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_8;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|167948775", "167948775", "Intro_010_B30_Crowds", "box_PlaySequence_v8_8.Stopped", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StartMetaSequence_34_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_34_Out();
    params = self:OnEnter_box_PlaySequence_v8_5();
    l0 = self.box_StartMetaSequence_34;
    l1 = self.box_PlaySequence_v8_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1640953659", "1640953659", "Intro_010_B30_Crowds", "box_StartMetaSequence_34.Out", "box_PlaySequence_v8_5.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_29_SPOut__Pause_()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_PlaySequence_v8_29;
    l1 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|418831212", "418831212", "Intro_010_B30_Crowds", "box_PlaySequence_v8_29.SPOut", "box_MultipleAND_v2_23.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PlaySequence_v8_29_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_28();
    l0 = self.box_PlaySequence_v8_29;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|619675393", "619675393", "Intro_010_B30_Crowds", "box_PlaySequence_v8_29.Stopped", "box_StopMetaSequence_v4_28.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_33();
    l0 = self.box_MultipleOR_46;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1174548529", "1174548529", "Intro_010_B30_Crowds", "box_MultipleOR_46.Out", "box_StopMetaSequence_v4_33.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_38_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_38_Out();
    params = self:OnEnter_box_PlaySequence_v8_7();
    l0 = self.box_StartMetaSequence_38;
    l1 = self.box_PlaySequence_v8_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|936907667", "936907667", "Intro_010_B30_Crowds", "box_StartMetaSequence_38.Out", "box_PlaySequence_v8_7.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_11_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_11;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|106089254", "106089254", "Intro_010_B30_Crowds", "box_PlaySequence_v8_11.Finished", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_11_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_11;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1206884387", "1206884387", "Intro_010_B30_Crowds", "box_PlaySequence_v8_11.Skipped", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_11_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_11;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1712362213", "1712362213", "Intro_010_B30_Crowds", "box_PlaySequence_v8_11.Stopped", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StartMetaSequence_47_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_47_Out();
    params = self:OnEnter_box_PlaySequence_v8_13();
    l0 = self.box_StartMetaSequence_47;
    l1 = self.box_PlaySequence_v8_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|873878050", "873878050", "Intro_010_B30_Crowds", "box_StartMetaSequence_47.Out", "box_PlaySequence_v8_13.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_32_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_32_Out();
    params = self:OnEnter_box_PlaySequence_v8_4();
    l0 = self.box_StartMetaSequence_32;
    l1 = self.box_PlaySequence_v8_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1598806369", "1598806369", "Intro_010_B30_Crowds", "box_StartMetaSequence_32.Out", "box_PlaySequence_v8_4.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_5_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1381209983", "1381209983", "Intro_010_B30_Crowds", "box_PlaySequence_v8_5.Finished", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_5_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|2009197224", "2009197224", "Intro_010_B30_Crowds", "box_PlaySequence_v8_5.Skipped", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_5_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1941244965", "1941244965", "Intro_010_B30_Crowds", "box_PlaySequence_v8_5.Stopped", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_2_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_3();
    l0 = self.box_ProximityTrigger_v2_2;
    l1 = self.box_PlaySequence_v8_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|298297963", "298297963", "Intro_010_B30_Crowds", "box_ProximityTrigger_v2_2.Enter", "box_PlaySequence_v8_3.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_PlaySequence_v8_4_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|924919859", "924919859", "Intro_010_B30_Crowds", "box_PlaySequence_v8_4.Finished", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_4_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|147469111", "147469111", "Intro_010_B30_Crowds", "box_PlaySequence_v8_4.Skipped", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_4_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_4;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|994921525", "994921525", "Intro_010_B30_Crowds", "box_PlaySequence_v8_4.Stopped", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_26_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_29();
    l0 = self.box_ProximityTrigger_v2_26;
    l1 = self.box_PlaySequence_v8_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1176149820", "1176149820", "Intro_010_B30_Crowds", "box_ProximityTrigger_v2_26.Enter", "box_PlaySequence_v8_29.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_51();
    l0 = self.box_MultipleOR_52;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|754434164", "754434164", "Intro_010_B30_Crowds", "box_MultipleOR_52.Out", "box_StopMetaSequence_v4_51.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_41();
    l0 = self.box_MultipleOR_44;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1583401220", "1583401220", "Intro_010_B30_Crowds", "box_MultipleOR_44.Out", "box_StopMetaSequence_v4_41.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_40();
    l0 = self.box_MultipleOR_43;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|2093058896", "2093058896", "Intro_010_B30_Crowds", "box_MultipleOR_43.Out", "box_StopMetaSequence_v4_40.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_3_SPOut__Pause_()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_19();
    l0 = self.box_PlaySequence_v8_3;
    l1 = self.box_MultipleAND_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1163182690", "1163182690", "Intro_010_B30_Crowds", "box_PlaySequence_v8_3.SPOut", "box_MultipleAND_v2_19.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_PlaySequence_v8_3_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_18();
    l0 = self.box_PlaySequence_v8_3;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|785574372", "785574372", "Intro_010_B30_Crowds", "box_PlaySequence_v8_3.Stopped", "box_StopMetaSequence_v4_18.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_StopMetaSequence_v4_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|76181465");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol04RunningMan,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_7()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDVol09,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume09.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|259341842");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol10,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_19()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_23()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|502054568");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol07,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|537637382");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol04,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104755084760990648",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_1()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDVol02,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume02.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|802829184");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104755084760990648",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_13()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDPrattLoop,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_pratt_in_chopper_loop.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|944236620");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1021851183");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDPrattLoop,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1041455416");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol02,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1063359555");
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

function export:OnEnter_box_StopMetaSequence_v4_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1089705801");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol08,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_14()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_12()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDVol04RunningMan,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume04_running_man.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_6()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDVol08,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume08.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104753527124402583",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_22()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_8()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDVol10,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume10.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_29()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDVol04,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume04.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_11()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDVol05far,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume05_far.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1645210970");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol09,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_5()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDVol07,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume07.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1703021963");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol06,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104754511940699031",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_4()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaIDVol06,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume06.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104754596770497433",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1810807617");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol05,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B30.domino|@Intro_010_B30_Crowds|1884142605");
    l0:SetConnections({
    });
    params = {
        -- ID,
        [1] = self.MetaIDVol05far,
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
        -- MetaSequenceID,
        [2] = self.MetaIDVol05,
        -- SceneEntity,
        [3] = "2102695925225896473",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/playgo_walk_volume/playgo_walk_volume05.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_21_Out()
    local l0;
    l0 = self.box_StartMetaSequence_21;
    self.MetaIDVol04 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_39_Out()
    local l0;
    l0 = self.box_StartMetaSequence_39;
    self.MetaIDVol10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_50_Out()
    local l0;
    l0 = self.box_StartMetaSequence_50;
    self.MetaIDVol05far = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_25_Out()
    local l0;
    l0 = self.box_StartMetaSequence_25;
    self.MetaIDVol04RunningMan = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_16_Out()
    local l0;
    l0 = self.box_StartMetaSequence_16;
    self.MetaIDVol05 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_10_Out()
    local l0;
    l0 = self.box_StartMetaSequence_10;
    self.MetaIDVol02 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_37_Out()
    local l0;
    l0 = self.box_StartMetaSequence_37;
    self.MetaIDVol08 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_34_Out()
    local l0;
    l0 = self.box_StartMetaSequence_34;
    self.MetaIDVol07 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_38_Out()
    local l0;
    l0 = self.box_StartMetaSequence_38;
    self.MetaIDVol09 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_47_Out()
    local l0;
    l0 = self.box_StartMetaSequence_47;
    self.MetaIDPrattLoop = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_32_Out()
    local l0;
    l0 = self.box_StartMetaSequence_32;
    self.MetaIDVol06 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="MainStarted" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol02" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol04" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol05" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol05far" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol05far_init" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol06" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol06_init" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol07" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol07_init" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol08" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol08_init" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol09" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol09_init" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol10" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="vol10_init" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
