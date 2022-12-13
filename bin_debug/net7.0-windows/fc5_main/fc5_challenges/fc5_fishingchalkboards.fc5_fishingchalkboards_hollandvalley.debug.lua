LUAC�6 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_challenges/fc5_fishingchalkboards.domino
-- User graph: FC5_FishingChalkboards_HollandValley
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetStatistic.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Challenges/FC5_FishingChalkboards.FC5_FishingChalkboards_HollandValley.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/GetStatistic.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetValue",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "ValueGot",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "name",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "value",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
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
    self._name = "FC5_FishingChalkboards_HollandValley";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley";
    self.box_VisibilityModifier_25 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|204620520");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_25_Enabled,
    });
    self.box_VisibilityModifier_13 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|213013642");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_13_Enabled,
    });
    self.box_VisibilityModifier_2 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|226458977");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_2_Enabled,
    });
    self.box_EntityStatusListener_55 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|254706667");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_55_Loaded,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|294018921");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|305999521");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|360284987");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_VisibilityModifier_26 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|498798003");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_26_Enabled,
    });
    self.box_VisibilityModifier_40 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|524949447");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_40_Enabled,
    });
    self.box_VisibilityModifier_30 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|550414044");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_30_Disabled,
    });
    self.box_MultipleOR_51 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|558003612");
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
        [0] = self.f_box_MultipleOR_51_Out,
    });
    self.box_VisibilityModifier_9 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|586966922");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_9_Enabled,
    });
    self.box_EntityStatusListener_35 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|724566035");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_35_Loaded,
    });
    self.box_VisibilityModifier_6 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|726833521");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_6_Disabled,
    });
    self.box_VisibilityModifier_27 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|727280023");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_27_Enabled,
    });
    self.box_VisibilityModifier_31 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|729952904");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_31_Enabled,
    });
    self.box_MultipleAND_v2_64 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|802577747");
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
        [0] = self.f_box_MultipleAND_v2_64_Out,
    });
    self.box_VisibilityModifier_1 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|842338638");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_1_Enabled,
    });
    self.box_VisibilityModifier_8 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|875055186");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_8_Disabled,
    });
    self.box_VisibilityModifier_21 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|927368176");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_21_Disabled,
    });
    self.box_VisibilityModifier_5 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|935002844");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_5_Enabled,
    });
    self.box_VisibilityModifier_38 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|947387500");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_38_Enabled,
    });
    self.box_VisibilityModifier_39 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1126479210");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_39_Disabled,
    });
    self.box_EntityStatusListener_54 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1132749734");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_54_Loaded,
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1154824162");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1180113541");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_EntityStatusListener_61 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1205762619");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_61_Loaded,
    });
    self.box_EntityStatusListener_84 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1307632660");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_84_Loaded,
    });
    self.box_MultipleAND_v2_23 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1353950936");
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
        [0] = self.f_box_MultipleAND_v2_23_Out,
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1373787005");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1461752678");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_MultipleOR_86 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1492617051");
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
        [0] = self.f_box_MultipleOR_86_Out,
    });
    self.box_VisibilityModifier_29 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1565820941");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_29_Disabled,
    });
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1574195623");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_53_Loaded,
    });
    self.box_MultipleOR_88 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1583542347");
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
        [0] = self.f_box_MultipleOR_88_Out,
    });
    self.box_EntityStatusListener_81 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1756517853");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_81_Unloaded,
    });
    self.box_OnceOnly_v3_74 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1788793391");
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
                [0] = self.f_box_OnceOnly_v3_74_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_18 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1906378495");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_18_Enabled,
    });
    self.box_EntityStatusListener_87 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2092221186");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_87_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetActivityFact_70();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|729341140", "729341140", "FC5_FishingChalkboards_HollandValley", "In", "box_GetActivityFact_70.GetFact", self, l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_83_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|580286156", "580286156", "FC5_FishingChalkboards_HollandValley", "box_Simple_Node_83.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_80_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|636877037", "636877037", "FC5_FishingChalkboards_HollandValley", "box_Simple_Node_80.Out", "box_MultipleOR_65.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Print_v2_44_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|431903517", "431903517", "FC5_FishingChalkboards_HollandValley", "box_Print_v2_44.PrintedToScreen", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Compare_Integers_76_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_9();
    l0 = self.box_VisibilityModifier_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2134841776", "2134841776", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_76.A_ge_B", "box_VisibilityModifier_9.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_76_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1169709602", "1169709602", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_76.A_lt_B", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Compare_Integers_69_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_13();
    l0 = self.box_VisibilityModifier_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|774451692", "774451692", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_69.A_ge_B", "box_VisibilityModifier_13.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_69_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1908619734", "1908619734", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_69.A_lt_B", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_25_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_64();
    l0 = self.box_VisibilityModifier_25;
    l1 = self.box_MultipleAND_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1259482258", "1259482258", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_25.Enabled", "box_MultipleAND_v2_64.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 5);
end;

function export:f_box_Print_v2_32_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1284829062", "1284829062", "FC5_FishingChalkboards_HollandValley", "box_Print_v2_32.PrintedToScreen", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_VisibilityModifier_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_64();
    l0 = self.box_VisibilityModifier_13;
    l1 = self.box_MultipleAND_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|915468563", "915468563", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_13.Enabled", "box_MultipleAND_v2_64.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_VisibilityModifier_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_19();
    l0 = self.box_VisibilityModifier_2;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|480465212", "480465212", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_2.Enabled", "box_Print_v2_19.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_70_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|364589704", "364589704", "FC5_FishingChalkboards_HollandValley", "box_GetActivityFact_70.FactNotSet", "box_OutputOrder_v2_66.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_70_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1538898196", "1538898196", "FC5_FishingChalkboards_HollandValley", "box_GetActivityFact_70.FactSet", "box_Simple_Node_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_55_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_55;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|608743055", "608743055", "FC5_FishingChalkboards_HollandValley", "box_EntityStatusListener_55.Loaded", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_47();
    l0 = self.box_MultipleOR_56;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2042568584", "2042568584", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_56.Out", "box_GetStatistic_47.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_11();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1442953664", "1442953664", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_58.Out", "box_GetStatistic_11.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|692326189", "692326189", "FC5_FishingChalkboards_HollandValley", "box_SetActivityFact_28.Out", "box_ActivityEnd_16.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_28();
    l0 = self.box_MultipleOR_65;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1388525858", "1388525858", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_65.Out", "box_SetActivityFact_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_19_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|424249290", "424249290", "FC5_FishingChalkboards_HollandValley", "box_Print_v2_19.PrintedToScreen", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 4);
end;

function export:f_box_GetStatistic_77_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_77_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_69();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1754070312", "1754070312", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_77.ValueGot", "box_Compare_Integers_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_26_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_43();
    l0 = self.box_VisibilityModifier_26;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2143051993", "2143051993", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_26.Enabled", "box_Print_v2_43.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_24_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_2();
    l0 = self.box_VisibilityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1497917492", "1497917492", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_24.A_ge_B", "box_VisibilityModifier_2.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_24_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_8();
    l0 = self.box_VisibilityModifier_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1762283125", "1762283125", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_24.A_lt_B", "box_VisibilityModifier_8.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_40_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_64();
    l0 = self.box_VisibilityModifier_40;
    l1 = self.box_MultipleAND_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1666572935", "1666572935", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_40.Enabled", "box_MultipleAND_v2_64.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 3);
end;

function export:f_box_VisibilityModifier_30_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_12();
    l0 = self.box_VisibilityModifier_30;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|506355273", "506355273", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_30.Disabled", "box_Print_v2_12.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_37();
    l0 = self.box_MultipleOR_51;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1644821062", "1644821062", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_51.Out", "box_GetStatistic_37.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_64();
    l0 = self.box_VisibilityModifier_9;
    l1 = self.box_MultipleAND_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|28310948", "28310948", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_9.Enabled", "box_MultipleAND_v2_64.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 4);
end;

function export:f_box_Compare_Integers_68_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_5();
    l0 = self.box_VisibilityModifier_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1035490697", "1035490697", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_68.A_ge_B", "box_VisibilityModifier_5.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_68_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|241956892", "241956892", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_68.A_lt_B", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetStatistic_47_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_47_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_7();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1964326419", "1964326419", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_47.ValueGot", "box_Compare_Integers_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Print_v2_43_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1761011064", "1761011064", "FC5_FishingChalkboards_HollandValley", "box_Print_v2_43.PrintedToScreen", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_GetStatistic_11_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_11_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_46();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|14713762", "14713762", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_11.ValueGot", "box_Compare_Integers_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_41_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_18();
    l0 = self.box_VisibilityModifier_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|257369408", "257369408", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_41.A_ge_B", "box_VisibilityModifier_18.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_41_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_6();
    l0 = self.box_VisibilityModifier_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|248985865", "248985865", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_41.A_lt_B", "box_VisibilityModifier_6.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_89();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1762437829", "1762437829", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_15.Out", "box_IsEntityLoaded_v3_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_85();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|592968410", "592968410", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_15.Out", "box_IsEntityLoaded_v3_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_52();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1474834760", "1474834760", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_15.Out", "box_IsEntityLoaded_v3_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_50();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1270255956", "1270255956", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_15.Out", "box_IsEntityLoaded_v3_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_57();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1170982894", "1170982894", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_15.Out", "box_IsEntityLoaded_v3_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_60();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|561429919", "561429919", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_15.Out", "box_IsEntityLoaded_v3_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_81();
    l0 = self.box_EntityStatusListener_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1537964072", "1537964072", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_15.Out", "box_EntityStatusListener_81.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_60_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_55();
    l0 = self.box_EntityStatusListener_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1083568303", "1083568303", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_60.False", "box_EntityStatusListener_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_60_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|141008740", "141008740", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_60.True", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_35_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_35;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1705921080", "1705921080", "FC5_FishingChalkboards_HollandValley", "box_EntityStatusListener_35.Loaded", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_6_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_34();
    l0 = self.box_VisibilityModifier_6;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|299802525", "299802525", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_6.Disabled", "box_Print_v2_34.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_20();
    l0 = self.box_VisibilityModifier_27;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|761917303", "761917303", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_27.Enabled", "box_Print_v2_20.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_31_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_32();
    l0 = self.box_VisibilityModifier_31;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1694349148", "1694349148", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_31.Enabled", "box_Print_v2_32.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_63_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_25();
    l0 = self.box_VisibilityModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2126692590", "2126692590", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_63.A_ge_B", "box_VisibilityModifier_25.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_63_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|162273389", "162273389", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_63.A_lt_B", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_MultipleAND_v2_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_80();
    l0 = self.box_MultipleAND_v2_64;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1269321207", "1269321207", "FC5_FishingChalkboards_HollandValley", "box_MultipleAND_v2_64.Out", "box_Simple_Node_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_44();
    l0 = self.box_VisibilityModifier_1;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1468383857", "1468383857", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_1.Enabled", "box_Print_v2_44.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_8_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_45();
    l0 = self.box_VisibilityModifier_8;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1303158227", "1303158227", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_8.Disabled", "box_Print_v2_45.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_10_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_10_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_14();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1234993396", "1234993396", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_10.ValueGot", "box_Compare_Integers_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_21_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_36();
    l0 = self.box_VisibilityModifier_21;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1777029789", "1777029789", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_21.Disabled", "box_Print_v2_36.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_64();
    l0 = self.box_VisibilityModifier_5;
    l1 = self.box_MultipleAND_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|157005995", "157005995", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_5.Enabled", "box_MultipleAND_v2_64.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_VisibilityModifier_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_64();
    l0 = self.box_VisibilityModifier_38;
    l1 = self.box_MultipleAND_v2_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1797334913", "1797334913", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_38.Enabled", "box_MultipleAND_v2_64.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Compare_Integers_72_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_40();
    l0 = self.box_VisibilityModifier_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1991173873", "1991173873", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_72.A_ge_B", "box_VisibilityModifier_40.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_72_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1607000825", "1607000825", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_72.A_lt_B", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VisibilityModifier_39_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_4();
    l0 = self.box_VisibilityModifier_39;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|403712850", "403712850", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_39.Disabled", "box_Print_v2_4.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_54_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_54;
    l1 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1632167432", "1632167432", "FC5_FishingChalkboards_HollandValley", "box_EntityStatusListener_54.Loaded", "box_MultipleOR_86.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Print_v2_20_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|725074958", "725074958", "FC5_FishingChalkboards_HollandValley", "box_Print_v2_20.PrintedToScreen", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 5);
end;

function export:f_box_MultipleOR_79_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_79;
    l1 = self.box_OnceOnly_v3_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|314295272", "314295272", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_79.Out", "box_OnceOnly_v3_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetStatistic_17_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_17_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_41();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|237840052", "237840052", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_17.ValueGot", "box_Compare_Integers_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_7_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_1();
    l0 = self.box_VisibilityModifier_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|532414050", "532414050", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_7.A_ge_B", "box_VisibilityModifier_1.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_7_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_30();
    l0 = self.box_VisibilityModifier_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1761744551", "1761744551", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_7.A_lt_B", "box_VisibilityModifier_30.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_59_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_10();
    l0 = self.box_MultipleOR_59;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1155535886", "1155535886", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_59.Out", "box_GetStatistic_10.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_61_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_61;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|395099158", "395099158", "FC5_FishingChalkboards_HollandValley", "box_EntityStatusListener_61.Loaded", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetStatistic_62_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_62_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_76();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|14750735", "14750735", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_62.ValueGot", "box_Compare_Integers_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_22_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_22_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_33();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|279404594", "279404594", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_22.ValueGot", "box_Compare_Integers_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_14_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_27();
    l0 = self.box_VisibilityModifier_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1875861161", "1875861161", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_14.A_ge_B", "box_VisibilityModifier_27.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_14_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_29();
    l0 = self.box_VisibilityModifier_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|918663621", "918663621", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_14.A_lt_B", "box_VisibilityModifier_29.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_52_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_61();
    l0 = self.box_EntityStatusListener_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1529113912", "1529113912", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_52.False", "box_EntityStatusListener_61.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_52_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1176683768", "1176683768", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_52.True", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_46_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_26();
    l0 = self.box_VisibilityModifier_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|437330585", "437330585", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_46.A_ge_B", "box_VisibilityModifier_26.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_46_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_21();
    l0 = self.box_VisibilityModifier_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1203213811", "1203213811", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_46.A_lt_B", "box_VisibilityModifier_21.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_84_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_84;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|697614709", "697614709", "FC5_FishingChalkboards_HollandValley", "box_EntityStatusListener_84.Loaded", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_89_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_87();
    l0 = self.box_EntityStatusListener_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|315976099", "315976099", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_89.False", "box_EntityStatusListener_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_89_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|451762079", "451762079", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_89.True", "box_MultipleOR_88.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_75_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_38();
    l0 = self.box_VisibilityModifier_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|973788806", "973788806", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_75.A_ge_B", "box_VisibilityModifier_38.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_75_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|94066926", "94066926", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_75.A_lt_B", "box_MultipleOR_79.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleAND_v2_23_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_23;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1130812915", "1130812915", "FC5_FishingChalkboards_HollandValley", "box_MultipleAND_v2_23.Out", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1922874293", "1922874293", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_49.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_50_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_84();
    l0 = self.box_EntityStatusListener_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1614935724", "1614935724", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_50.False", "box_EntityStatusListener_84.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_50_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1081316081", "1081316081", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_50.True", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetStatistic_37_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_37_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_24();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|405526266", "405526266", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_37.ValueGot", "box_Compare_Integers_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_35();
    l0 = self.box_MultipleOR_82;
    l1 = self.box_EntityStatusListener_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1969966314", "1969966314", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_82.Out", "box_EntityStatusListener_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_86_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_22();
    l0 = self.box_MultipleOR_86;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|26502189", "26502189", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_86.Out", "box_GetStatistic_22.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_33_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_31();
    l0 = self.box_VisibilityModifier_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|37753650", "37753650", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_33.A_ge_B", "box_VisibilityModifier_31.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_33_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_39();
    l0 = self.box_VisibilityModifier_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2104047662", "2104047662", "FC5_FishingChalkboards_HollandValley", "box_Compare_Integers_33.A_lt_B", "box_VisibilityModifier_39.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_IsEntityLoaded_v3_48_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|84796959", "84796959", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_48.False", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_48_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2144314933", "2144314933", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_48.True", "box_MultipleOR_49.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_29_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_42();
    l0 = self.box_VisibilityModifier_29;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1945411007", "1945411007", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_29.Disabled", "box_Print_v2_42.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_53_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_53;
    l1 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|752689020", "752689020", "FC5_FishingChalkboards_HollandValley", "box_EntityStatusListener_53.Loaded", "box_MultipleOR_51.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_85_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_54();
    l0 = self.box_EntityStatusListener_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|295690380", "295690380", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_85.False", "box_EntityStatusListener_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_85_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|11262070", "11262070", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_85.True", "box_MultipleOR_86.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_88_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_17();
    l0 = self.box_MultipleOR_88;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1062106044", "1062106044", "FC5_FishingChalkboards_HollandValley", "box_MultipleOR_88.Out", "box_GetStatistic_17.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_3_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1286821743", "1286821743", "FC5_FishingChalkboards_HollandValley", "box_Print_v2_3.PrintedToScreen", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_EntityStatusListener_81_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_83();
    l0 = self.box_EntityStatusListener_81;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1236168338", "1236168338", "FC5_FishingChalkboards_HollandValley", "box_EntityStatusListener_81.Unloaded", "box_Simple_Node_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_78_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_78_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_75();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|781061683", "781061683", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_78.ValueGot", "box_Compare_Integers_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_74_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_48();
    l0 = self.box_OnceOnly_v3_74;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|681493478", "681493478", "FC5_FishingChalkboards_HollandValley", "box_OnceOnly_v3_74.Out", "box_IsEntityLoaded_v3_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_73_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_73_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_63();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|38028212", "38028212", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_73.ValueGot", "box_Compare_Integers_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_77();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|718192723", "718192723", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_66.Out", "box_GetStatistic_77.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_78();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|986412551", "986412551", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_66.Out", "box_GetStatistic_78.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_67();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|301060054", "301060054", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_66.Out", "box_GetStatistic_67.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_71();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|906144981", "906144981", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_66.Out", "box_GetStatistic_71.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_62();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1107216721", "1107216721", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_66.Out", "box_GetStatistic_62.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_73();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1603314768", "1603314768", "FC5_FishingChalkboards_HollandValley", "box_OutputOrder_v2_66.Out", "box_GetStatistic_73.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_3();
    l0 = self.box_VisibilityModifier_18;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|389445946", "389445946", "FC5_FishingChalkboards_HollandValley", "box_VisibilityModifier_18.Enabled", "box_Print_v2_3.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_57_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1723612315", "1723612315", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_57.False", "box_EntityStatusListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_57_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|851962082", "851962082", "FC5_FishingChalkboards_HollandValley", "box_IsEntityLoaded_v3_57.True", "box_MultipleOR_51.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetStatistic_67_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_67_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_68();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|50537021", "50537021", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_67.ValueGot", "box_Compare_Integers_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_71_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_71_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_72();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1114305973", "1114305973", "FC5_FishingChalkboards_HollandValley", "box_GetStatistic_71.ValueGot", "box_Compare_Integers_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_87_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_87;
    l1 = self.box_MultipleOR_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|940501930", "940501930", "FC5_FishingChalkboards_HollandValley", "box_EntityStatusListener_87.Loaded", "box_MultipleOR_88.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|@recheckLoaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_83_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|@SkipBeat");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_80_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2997618");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_44_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = " Lake Trout ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|13179040");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_76_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_76_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_62,
        -- B,
        [1] = 55,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|14241064");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|88089618");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_69_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_69_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_77,
        -- B,
        [1] = 21,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_25()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199474",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|208833909");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_32_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "GoldenTrout ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_13()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199471",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_2()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199472",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|246612421");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_70_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_70_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015280164632150",
        -- Fact,
        [1] = "HollandValleyFishingComplete",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103986001262199474",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|351489347");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_28_Out,
    });
    params = {
        -- Fact,
        [0] = "HollandValleyFishingComplete",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|397773692");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_19_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Pallid Sturgeon ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|409938333");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_77_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestBullTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_26()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199476",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|515378512");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_24_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_24_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_37,
        -- B,
        [1] = 55,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_40()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199476",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_30()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199475",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_9()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199472",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|615887414");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_68_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_68_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_67,
        -- B,
        [1] = 37,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|626188727");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_47_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestLakeTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|640407497");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_11,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Rainbow Trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|683257249");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_43_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = " RainbowTrout ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|683374171");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_11_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestRainbowTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|722787879");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_41_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_41_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_17,
        -- B,
        [1] = 21,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|724284384");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
                [3] = self.f_box_OutputOrder_v2_15_Out_3,
                [4] = self.f_box_OutputOrder_v2_15_Out_4,
                [5] = self.f_box_OutputOrder_v2_15_Out_5,
                [6] = self.f_box_OutputOrder_v2_15_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|724373513");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_60_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_60_True,
    });
    params = {
        -- entityId,
        [0] = "2103986001262199474",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_35()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103986001262199471",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|726777558");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_17,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught bull trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_6()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199471",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_27()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199474",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_31()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199473",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|778759188");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_63_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_63_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_73,
        -- B,
        [1] = 112,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_64()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_1()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199475",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_8()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199472",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|915242375");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_10_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestPaddlefishCaught",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_21()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199476",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_5()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199475",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_38()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199473",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1080749103");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_72_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_72_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_71,
        -- B,
        [1] = 28,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_39()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199473",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103986001262199473",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1136509880");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_20_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Whitetail Kokanee ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1165942067");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_17_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestBullTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1172746265");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_7_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_7_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_47,
        -- B,
        [1] = 37,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_61()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103986001262199475",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1216217204");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_62_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestPallidCaught",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1220223828");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_22_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestGoldenTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1232226408");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_14_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_14_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_10,
        -- B,
        [1] = 112,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1270339152");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_52_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_52_True,
    });
    params = {
        -- entityId,
        [0] = "2103986001262199475",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1298650263");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_46_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_46_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_11,
        -- B,
        [1] = 28,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_84()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103986001262199476",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1327091071");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_89_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_89_True,
    });
    params = {
        -- entityId,
        [0] = "2103986001262199471",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1332354522");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_75_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_75_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_78,
        -- B,
        [1] = 4,
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

function export:OnEnter_box_IsEntityLoaded_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1431760357");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_50_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_50_True,
    });
    params = {
        -- entityId,
        [0] = "2103986001262199476",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1443373546");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_37_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestPallidCaught",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1515141077");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_33_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_33_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_22,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1552385846");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_48_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_48_True,
    });
    params = {
        -- entityId,
        [0] = "2103986001262199471",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_29()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199474",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103986001262199472",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1576808941");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_85_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_85_True,
    });
    params = {
        -- entityId,
        [0] = "2103986001262199473",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1648482823");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_3_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Bull Trout ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1681732197");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_37,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Pallid Sturgeon is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1682232404");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_22,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Golden Trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_81()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103986001262199471",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1776958510");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_78_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestGoldenTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1823969398");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_73_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestPaddlefishCaught",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1898955459");
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
        -- Out,
        [0] = {
            connections = {
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
                [2] = self.f_box_OutputOrder_v2_66_Out_2,
                [3] = self.f_box_OutputOrder_v2_66_Out_3,
                [4] = self.f_box_OutputOrder_v2_66_Out_4,
                [5] = self.f_box_OutputOrder_v2_66_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_18()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103986001262199471",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1946892172");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Kokanee is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|1996832028");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_57_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_57_True,
    });
    params = {
        -- entityId,
        [0] = "2103986001262199472",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2009554851");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_67_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestLakeTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2067684278");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_71_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestRainbowTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_87()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103986001262199471",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HollandValley|2146556976");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_47,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Lake Trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnExit_box_GetStatistic_77_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_77 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_47_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_47 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_47 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_11_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_11 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_11 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_10_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_10 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_17_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_17 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_17 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_62_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_62 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_22_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_22 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_22 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_37_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_37 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_37 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_78_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_78 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_73_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_73 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_67_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_67 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_71_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_71 = l0:GetDataOutValue(0);
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
