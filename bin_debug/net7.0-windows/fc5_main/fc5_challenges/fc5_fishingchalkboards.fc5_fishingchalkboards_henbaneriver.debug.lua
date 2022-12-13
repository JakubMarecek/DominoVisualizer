LUAC�| -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_challenges/fc5_fishingchalkboards.domino
-- User graph: FC5_FishingChalkboards_HenbaneRiver
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Challenges/FC5_FishingChalkboards.FC5_FishingChalkboards_HenbaneRiver.debug.lua")] = {
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
    self._name = "FC5_FishingChalkboards_HenbaneRiver";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver";
    self.box_VisibilityModifier_2 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|51179352");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_2_Disabled,
    });
    self.box_MultipleOR_64 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|52524911");
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
        [0] = self.f_box_MultipleOR_64_Out,
    });
    self.box_VisibilityModifier_96 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|198094628");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_96_Enabled,
    });
    self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|220768230");
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
        [0] = self.f_box_MultipleOR_93_Out,
    });
    self.box_VisibilityModifier_15 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|280451352");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_15_Enabled,
    });
    self.box_VisibilityModifier_44 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|299727643");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_44_Enabled,
    });
    self.box_VisibilityModifier_41 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|428069397");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_41_Enabled,
    });
    self.box_EntityStatusListener_27 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|531644422");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_27_Loaded,
    });
    self.box_VisibilityModifier_46 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|549737302");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_46_Enabled,
    });
    self.box_VisibilityModifier_54 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|714895632");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_54_Disabled,
    });
    self.box_VisibilityModifier_99 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|746237675");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_99_Enabled,
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|793071914");
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
    self.box_VisibilityModifier_95 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|863080846");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_95_Enabled,
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|893160380");
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
        [0] = self.f_box_MultipleOR_68_Out,
    });
    self.box_VisibilityModifier_47 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|917911533");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_47_Enabled,
    });
    self.box_MultipleAND_v2_82 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1054274590");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 7,
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
        [0] = self.f_box_MultipleAND_v2_82_Out,
    });
    self.box_VisibilityModifier_97 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1108736181");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_97_Enabled,
    });
    self.box_VisibilityModifier_101 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1125658489");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_101_Enabled,
    });
    self.box_EntityStatusListener_42 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1196443761");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_42_Loaded,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1196548893");
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
    self.box_VisibilityModifier_35 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1250026942");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_35_Disabled,
    });
    self.box_VisibilityModifier_21 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1250214045");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_21_Enabled,
    });
    self.box_VisibilityModifier_50 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1269536767");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_50_Disabled,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1297143502");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 7,
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
    self.box_VisibilityModifier_98 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1370434365");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_98_Enabled,
    });
    self.box_EntityStatusListener_29 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1413053971");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_29_Loaded,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1473199268");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_VisibilityModifier_4 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1551045521");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_4_Disabled,
    });
    self.box_EntityStatusListener_34 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1726456739");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_34_Loaded,
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1727823543");
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
        [0] = self.f_box_MultipleOR_66_Out,
    });
    self.box_EntityStatusListener_43 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1814716930");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_43_Loaded,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1835780317");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1851287699");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_VisibilityModifier_12 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1859466995");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_12_Disabled,
    });
    self.box_EntityStatusListener_92 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1897413976");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_92_Unloaded,
    });
    self.box_EntityStatusListener_39 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1899225450");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_39_Loaded,
    });
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1955309254");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1955998541");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_VisibilityModifier_9 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2012233621");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_9_Disabled,
    });
    self.box_VisibilityModifier_100 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2052830138");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_100_Enabled,
    });
    self.box_OnceOnly_v3_86 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2062320866");
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
                [0] = self.f_box_OnceOnly_v3_86_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_45 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2129191328");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_45_Enabled,
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2139424615");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
    self.box_MultipleAND_v2_11 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2141085467");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 7,
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
        [0] = self.f_box_MultipleAND_v2_11_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetActivityFact_72();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1773418304", "1773418304", "FC5_FishingChalkboards_HenbaneRiver", "In", "box_GetActivityFact_72.GetFact", self, l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_94_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|456716461", "456716461", "FC5_FishingChalkboards_HenbaneRiver", "box_Simple_Node_94.Out", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|315884860", "315884860", "FC5_FishingChalkboards_HenbaneRiver", "box_Simple_Node_91.Out", "box_MultipleOR_71.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_59_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_34();
    l0 = self.box_EntityStatusListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1978924493", "1978924493", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_59.False", "box_EntityStatusListener_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_59_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|122960089", "122960089", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_59.True", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_55_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1761824086", "1761824086", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_55.False", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_55_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|441700023", "441700023", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_55.True", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_2_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_14();
    l0 = self.box_VisibilityModifier_2;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|750237580", "750237580", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_2.Disabled", "box_Print_v2_14.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_6();
    l0 = self.box_MultipleOR_64;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|438561617", "438561617", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_64.Out", "box_GetStatistic_6.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_26_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1312964609", "1312964609", "FC5_FishingChalkboards_HenbaneRiver", "box_Print_v2_26.PrintedToScreen", "box_MultipleAND_v2_11.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 5);
end;

function export:f_box_GetStatistic_87_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_87_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_74();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1897682983", "1897682983", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_87.ValueGot", "box_Compare_Integers_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Print_v2_19_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|705013272", "705013272", "FC5_FishingChalkboards_HenbaneRiver", "box_Print_v2_19.PrintedToScreen", "box_MultipleAND_v2_11.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_VisibilityModifier_96_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_82();
    l0 = self.box_VisibilityModifier_96;
    l1 = self.box_MultipleAND_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1296205230", "1296205230", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_96.Enabled", "box_MultipleAND_v2_82.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 5);
end;

function export:f_box_GetStatistic_80_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_80_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_81();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|979634488", "979634488", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_80.ValueGot", "box_Compare_Integers_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_MultipleOR_93;
    l1 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|320819519", "320819519", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_93.Out", "box_EntityStatusListener_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Print_v2_32_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|742935574", "742935574", "FC5_FishingChalkboards_HenbaneRiver", "box_Print_v2_32.PrintedToScreen", "box_MultipleAND_v2_11.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 4);
end;

function export:f_box_VisibilityModifier_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_8();
    l0 = self.box_VisibilityModifier_15;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|507700128", "507700128", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_15.Enabled", "box_Print_v2_8.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_76_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_76_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_88();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1410473106", "1410473106", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_76.ValueGot", "box_Compare_Integers_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_44_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_26();
    l0 = self.box_VisibilityModifier_44;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1635871321", "1635871321", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_44.Enabled", "box_Print_v2_26.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_74_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_95();
    l0 = self.box_VisibilityModifier_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1363476448", "1363476448", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_74.A_ge_B", "box_VisibilityModifier_95.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_74_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1098707870", "1098707870", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_74.A_lt_B", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetStatistic_73_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_73_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_79();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1386782266", "1386782266", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_73.ValueGot", "box_Compare_Integers_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_7_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_15();
    l0 = self.box_VisibilityModifier_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|52827029", "52827029", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_7.A_ge_B", "box_VisibilityModifier_15.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_7_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_4();
    l0 = self.box_VisibilityModifier_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1684484829", "1684484829", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_7.A_lt_B", "box_VisibilityModifier_4.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_41_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_31();
    l0 = self.box_VisibilityModifier_41;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1548162261", "1548162261", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_41.Enabled", "box_Print_v2_31.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_79_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_98();
    l0 = self.box_VisibilityModifier_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|114948513", "114948513", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_79.A_ge_B", "box_VisibilityModifier_98.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_79_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1139246323", "1139246323", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_79.A_lt_B", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_33_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_21();
    l0 = self.box_VisibilityModifier_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2038886994", "2038886994", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_33.A_ge_B", "box_VisibilityModifier_21.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_33_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_12();
    l0 = self.box_VisibilityModifier_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|240784112", "240784112", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_33.A_lt_B", "box_VisibilityModifier_12.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_27_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_27;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1049865329", "1049865329", "FC5_FishingChalkboards_HenbaneRiver", "box_EntityStatusListener_27.Loaded", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_46_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_22();
    l0 = self.box_VisibilityModifier_46;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|730556547", "730556547", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_46.Enabled", "box_Print_v2_22.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_83_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_83_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_75();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1119547981", "1119547981", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_83.ValueGot", "box_Compare_Integers_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_57();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1561093972", "1561093972", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_20.Out", "box_IsEntityLoaded_v3_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_59();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2049833823", "2049833823", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_20.Out", "box_IsEntityLoaded_v3_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_61();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2104177518", "2104177518", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_20.Out", "box_IsEntityLoaded_v3_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_63();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1465993548", "1465993548", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_20.Out", "box_IsEntityLoaded_v3_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_65();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|837758432", "837758432", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_20.Out", "box_IsEntityLoaded_v3_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_67();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1511920794", "1511920794", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_20.Out", "box_IsEntityLoaded_v3_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_69();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1189654050", "1189654050", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_20.Out", "box_IsEntityLoaded_v3_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_92();
    l0 = self.box_EntityStatusListener_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1485277699", "1485277699", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_20.Out", "box_EntityStatusListener_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_69_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_43();
    l0 = self.box_EntityStatusListener_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1552082623", "1552082623", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_69.False", "box_EntityStatusListener_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_69_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|227670931", "227670931", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_69.True", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_54_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_25();
    l0 = self.box_VisibilityModifier_54;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1379360413", "1379360413", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_54.Disabled", "box_Print_v2_25.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_99_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_82();
    l0 = self.box_VisibilityModifier_99;
    l1 = self.box_MultipleAND_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1435907384", "1435907384", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_99.Enabled", "box_MultipleAND_v2_82.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 6);
end;

function export:f_box_GetStatistic_23_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_23_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_7();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1977444496", "1977444496", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_23.ValueGot", "box_Compare_Integers_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_MultipleOR_56;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1023444882", "1023444882", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_56.Out", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_95_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_82();
    l0 = self.box_VisibilityModifier_95;
    l1 = self.box_MultipleAND_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1620538905", "1620538905", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_95.Enabled", "box_MultipleAND_v2_82.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_GetStatistic_5_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_5_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_18();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|61505281", "61505281", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_5.ValueGot", "box_Compare_Integers_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_5();
    l0 = self.box_MultipleOR_68;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|412315935", "412315935", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_68.Out", "box_GetStatistic_5.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_16_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|571919733", "571919733", "FC5_FishingChalkboards_HenbaneRiver", "box_Print_v2_16.PrintedToScreen", "box_MultipleAND_v2_11.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Compare_Integers_36_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_47();
    l0 = self.box_VisibilityModifier_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|176630485", "176630485", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_36.A_ge_B", "box_VisibilityModifier_47.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_36_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_9();
    l0 = self.box_VisibilityModifier_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|858022417", "858022417", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_36.A_lt_B", "box_VisibilityModifier_9.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_19();
    l0 = self.box_VisibilityModifier_47;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|773755682", "773755682", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_47.Enabled", "box_Print_v2_19.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_24_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_24_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_3();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1749394115", "1749394115", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_24.ValueGot", "box_Compare_Integers_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = self.box_MultipleAND_v2_82;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1435414155", "1435414155", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleAND_v2_82.Out", "box_Simple_Node_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_51_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_51_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_1();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1286639693", "1286639693", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_51.ValueGot", "box_Compare_Integers_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Print_v2_8_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1621552093", "1621552093", "FC5_FishingChalkboards_HenbaneRiver", "box_Print_v2_8.PrintedToScreen", "box_MultipleAND_v2_11.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 6);
end;

function export:f_box_VisibilityModifier_97_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_82();
    l0 = self.box_VisibilityModifier_97;
    l1 = self.box_MultipleAND_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1819876019", "1819876019", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_97.Enabled", "box_MultipleAND_v2_82.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_VisibilityModifier_101_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_82();
    l0 = self.box_VisibilityModifier_101;
    l1 = self.box_MultipleAND_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|322374439", "322374439", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_101.Enabled", "box_MultipleAND_v2_82.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 3);
end;

function export:f_box_GetStatistic_6_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_6_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_36();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1286760881", "1286760881", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_6.ValueGot", "box_Compare_Integers_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_17_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_17_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_49();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1640882907", "1640882907", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_17.ValueGot", "box_Compare_Integers_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_42_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_42;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|787366386", "787366386", "FC5_FishingChalkboards_HenbaneRiver", "box_EntityStatusListener_42.Loaded", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_51();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1625463326", "1625463326", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_58.Out", "box_GetStatistic_51.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_72_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_89();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|209655076", "209655076", "FC5_FishingChalkboards_HenbaneRiver", "box_GetActivityFact_72.FactNotSet", "box_OutputOrder_v2_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_72_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1843602024", "1843602024", "FC5_FishingChalkboards_HenbaneRiver", "box_GetActivityFact_72.FactSet", "box_Simple_Node_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_35_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_40();
    l0 = self.box_VisibilityModifier_35;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|910729147", "910729147", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_35.Disabled", "box_Print_v2_40.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_32();
    l0 = self.box_VisibilityModifier_21;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1913276806", "1913276806", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_21.Enabled", "box_Print_v2_32.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_50_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_37();
    l0 = self.box_VisibilityModifier_50;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|625868234", "625868234", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_50.Disabled", "box_Print_v2_37.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_77_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_99();
    l0 = self.box_VisibilityModifier_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|586331739", "586331739", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_77.A_ge_B", "box_VisibilityModifier_99.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_77_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|512764635", "512764635", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_77.A_lt_B", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_Compare_Integers_18_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_44();
    l0 = self.box_VisibilityModifier_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|458771997", "458771997", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_18.A_ge_B", "box_VisibilityModifier_44.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_18_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_54();
    l0 = self.box_VisibilityModifier_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1910028278", "1910028278", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_18.A_lt_B", "box_VisibilityModifier_54.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_78_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_78;
    l1 = self.box_OnceOnly_v3_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1331979034", "1331979034", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_78.Out", "box_OnceOnly_v3_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_98_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_82();
    l0 = self.box_VisibilityModifier_98;
    l1 = self.box_MultipleAND_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1401778235", "1401778235", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_98.Enabled", "box_MultipleAND_v2_82.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_IsEntityLoaded_v3_63_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_42();
    l0 = self.box_EntityStatusListener_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1011382846", "1011382846", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_63.False", "box_EntityStatusListener_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_63_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|471680948", "471680948", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_63.True", "box_MultipleOR_64.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_29_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_29;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1207060649", "1207060649", "FC5_FishingChalkboards_HenbaneRiver", "box_EntityStatusListener_29.Loaded", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_1_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_46();
    l0 = self.box_VisibilityModifier_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1303067228", "1303067228", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_1.A_ge_B", "box_VisibilityModifier_46.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_1_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_35();
    l0 = self.box_VisibilityModifier_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1558871346", "1558871346", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_1.A_lt_B", "box_VisibilityModifier_35.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|19971056", "19971056", "FC5_FishingChalkboards_HenbaneRiver", "box_EntityStatusListener_13.Loaded", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Print_v2_22_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1085778122", "1085778122", "FC5_FishingChalkboards_HenbaneRiver", "box_Print_v2_22.PrintedToScreen", "box_MultipleAND_v2_11.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_Compare_Integers_88_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_97();
    l0 = self.box_VisibilityModifier_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|754714463", "754714463", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_88.A_ge_B", "box_VisibilityModifier_97.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_88_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1190557089", "1190557089", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_88.A_lt_B", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_VisibilityModifier_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_28();
    l0 = self.box_VisibilityModifier_4;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|457903347", "457903347", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_4.Disabled", "box_Print_v2_28.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_30_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_30_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_33();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|253198660", "253198660", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_30.ValueGot", "box_Compare_Integers_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_67_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_29();
    l0 = self.box_EntityStatusListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1573622685", "1573622685", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_67.False", "box_EntityStatusListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_67_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1312316417", "1312316417", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_67.True", "box_MultipleOR_68.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetActivityFact_52_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|964015615", "964015615", "FC5_FishingChalkboards_HenbaneRiver", "box_SetActivityFact_52.Out", "box_ActivityEnd_10.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_3_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_41();
    l0 = self.box_VisibilityModifier_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|487624846", "487624846", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_3.A_ge_B", "box_VisibilityModifier_41.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_3_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_2();
    l0 = self.box_VisibilityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1098506160", "1098506160", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_3.A_lt_B", "box_VisibilityModifier_2.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_34_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_34;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1798028575", "1798028575", "FC5_FishingChalkboards_HenbaneRiver", "box_EntityStatusListener_34.Loaded", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_30();
    l0 = self.box_MultipleOR_66;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1508601803", "1508601803", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_66.Out", "box_GetStatistic_30.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_81_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_100();
    l0 = self.box_VisibilityModifier_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|785936116", "785936116", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_81.A_ge_B", "box_VisibilityModifier_100.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_81_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1806745664", "1806745664", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_81.A_lt_B", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetStatistic_85_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_85_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_77();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2139977531", "2139977531", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_85.ValueGot", "box_Compare_Integers_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_87();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|856872181", "856872181", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_89.Out", "box_GetStatistic_87.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_73();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|846174928", "846174928", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_89.Out", "box_GetStatistic_73.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_76();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|516181605", "516181605", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_89.Out", "box_GetStatistic_76.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_83();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1989343347", "1989343347", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_89.Out", "box_GetStatistic_83.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_80();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|467628379", "467628379", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_89.Out", "box_GetStatistic_80.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_84();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|578966801", "578966801", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_89.Out", "box_GetStatistic_84.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_89_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_85();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1409129689", "1409129689", "FC5_FishingChalkboards_HenbaneRiver", "box_OutputOrder_v2_89.Out", "box_GetStatistic_85.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_43_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_43;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1154492731", "1154492731", "FC5_FishingChalkboards_HenbaneRiver", "box_EntityStatusListener_43.Loaded", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_90_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_96();
    l0 = self.box_VisibilityModifier_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1303039699", "1303039699", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_90.A_ge_B", "box_VisibilityModifier_96.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_90_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|464186357", "464186357", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_90.A_lt_B", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_Compare_Integers_75_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_101();
    l0 = self.box_VisibilityModifier_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1073539185", "1073539185", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_75.A_ge_B", "box_VisibilityModifier_101.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_75_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2140047706", "2140047706", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_75.A_lt_B", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_17();
    l0 = self.box_MultipleOR_62;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1573610748", "1573610748", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_62.Out", "box_GetStatistic_17.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_24();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|943789144", "943789144", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_60.Out", "box_GetStatistic_24.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_61_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_39();
    l0 = self.box_EntityStatusListener_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|745369414", "745369414", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_61.False", "box_EntityStatusListener_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_61_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|107452707", "107452707", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_61.True", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_12_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_48();
    l0 = self.box_VisibilityModifier_12;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1153587910", "1153587910", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_12.Disabled", "box_Print_v2_48.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_84_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_84_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_90();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|197407112", "197407112", "FC5_FishingChalkboards_HenbaneRiver", "box_GetStatistic_84.ValueGot", "box_Compare_Integers_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_92_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = self.box_EntityStatusListener_92;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|453710766", "453710766", "FC5_FishingChalkboards_HenbaneRiver", "box_EntityStatusListener_92.Unloaded", "box_Simple_Node_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_39_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_39;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1923750600", "1923750600", "FC5_FishingChalkboards_HenbaneRiver", "box_EntityStatusListener_39.Loaded", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityLoaded_v3_65_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1407940568", "1407940568", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_65.False", "box_EntityStatusListener_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_65_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1121395752", "1121395752", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_65.True", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_57_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_27();
    l0 = self.box_EntityStatusListener_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1944795344", "1944795344", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_57.False", "box_EntityStatusListener_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_57_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1264333039", "1264333039", "FC5_FishingChalkboards_HenbaneRiver", "box_IsEntityLoaded_v3_57.True", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_38;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1362743316", "1362743316", "FC5_FishingChalkboards_HenbaneRiver", "box_EntityStatusListener_38.Loaded", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_23();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|430669384", "430669384", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_70.Out", "box_GetStatistic_23.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_49_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_45();
    l0 = self.box_VisibilityModifier_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|825269677", "825269677", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_49.A_ge_B", "box_VisibilityModifier_45.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_49_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_50();
    l0 = self.box_VisibilityModifier_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|720200945", "720200945", "FC5_FishingChalkboards_HenbaneRiver", "box_Compare_Integers_49.A_lt_B", "box_VisibilityModifier_50.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_9_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_53();
    l0 = self.box_VisibilityModifier_9;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|511043918", "511043918", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_9.Disabled", "box_Print_v2_53.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_100_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_82();
    l0 = self.box_VisibilityModifier_100;
    l1 = self.box_MultipleAND_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|282736337", "282736337", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_100.Enabled", "box_MultipleAND_v2_82.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 4);
end;

function export:f_box_OnceOnly_v3_86_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_55();
    l0 = self.box_OnceOnly_v3_86;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1635505019", "1635505019", "FC5_FishingChalkboards_HenbaneRiver", "box_OnceOnly_v3_86.Out", "box_IsEntityLoaded_v3_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_31_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1462086129", "1462086129", "FC5_FishingChalkboards_HenbaneRiver", "box_Print_v2_31.PrintedToScreen", "box_MultipleAND_v2_11.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_VisibilityModifier_45_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_16();
    l0 = self.box_VisibilityModifier_45;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2065711554", "2065711554", "FC5_FishingChalkboards_HenbaneRiver", "box_VisibilityModifier_45.Enabled", "box_Print_v2_16.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_52();
    l0 = self.box_MultipleOR_71;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|469690230", "469690230", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleOR_71.Out", "box_SetActivityFact_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_11_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_11;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1181624933", "1181624933", "FC5_FishingChalkboards_HenbaneRiver", "box_MultipleAND_v2_11.Out", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_Simple_Node_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|@recheckLoaded");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|@SkipBeat");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|26502646");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_59_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_59_True,
    });
    params = {
        -- entityId,
        [0] = "2103995703113049573",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|46200554");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_55_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_55_True,
    });
    params = {
        -- entityId,
        [0] = "2103995703113049571",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_2()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049573",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|96473231");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_24,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Golden Trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|107509083");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_26_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Largemouth Bass ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|149111024");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_87_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestBullTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|154446719");
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
        [8] = "RainbowTrout ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_96()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049574",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|213033999");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_80_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestSmallmouthCaught",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|240864257");
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
        [8] = "Smallmouth Bass ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_15()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049570",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|298113717");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_76_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestLakeTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_44()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049574",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|302949251");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_6,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Rainbow Trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|371056135");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_74_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_74_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_87,
        -- B,
        [1] = 21,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|372624922");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_73_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestGoldenTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|399553110");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_7_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_7_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_23,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_41()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049573",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|453543393");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_79_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_79_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_73,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|455309065");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_33_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_33_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_30,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103995703113049571",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_46()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049571",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|641960625");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_51,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught bull trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|657301071");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_83_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestRainbowTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|659550985");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
                [3] = self.f_box_OutputOrder_v2_20_Out_3,
                [4] = self.f_box_OutputOrder_v2_20_Out_4,
                [5] = self.f_box_OutputOrder_v2_20_Out_5,
                [6] = self.f_box_OutputOrder_v2_20_Out_6,
                [7] = self.f_box_OutputOrder_v2_20_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|678263127");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_69_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_69_True,
    });
    params = {
        -- entityId,
        [0] = "2103995703113049570",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_54()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049574",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|722704275");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_23,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Rock Bass is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_99()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049570",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|787174590");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_23_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestRockBassCaught",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_95()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049571",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|876505839");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_5_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestLargemouthCaught",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|905479196");
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
        [8] = "Fishing Chalkboard... Largest caught Lake Trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|907123831");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_16_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Lake Trout ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|912108793");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_36_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_36_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_6,
        -- B,
        [1] = 28,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_47()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049576",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|989213292");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1047776095");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_24_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestGoldenTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_82()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1056338042");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_51_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestBullTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1087490410");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_8_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Rock Bass ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_97()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049575",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_101()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049576",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1149887370");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_6_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestRainbowTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1176327929");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_17_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestLakeTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103995703113049576",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1228835954");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_72_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_72_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015280164736328",
        -- Fact,
        [1] = "HenbaneFishingComplete",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_35()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049571",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_21()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049572",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_50()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049575",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1275355051");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_77_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_77_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_85,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1283063050");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_18_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_18_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_5,
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1349458306");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_30,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Smallmouth Bass is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_98()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049573",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1406358588");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_63_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_63_True,
    });
    params = {
        -- entityId,
        [0] = "2103995703113049576",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103995703113049574",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1445207250");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_1_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_1_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_51,
        -- B,
        [1] = 21,
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
        [2] = "2103995703113049572",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1494426377");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_22_PrintedToScreen,
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

function export:OnEnter_box_Compare_Integers_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1496545338");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_88_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_88_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_76,
        -- B,
        [1] = 37,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_4()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049570",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1557975113");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_30_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestSmallmouthCaught",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1655880978");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_67_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_67_True,
    });
    params = {
        -- entityId,
        [0] = "2103995703113049574",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1660812013");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_52_Out,
    });
    params = {
        -- Fact,
        [0] = "HenbaneFishingComplete",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1678685103");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_3_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_3_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_24,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103995703113049573",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1752266173");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_81_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_81_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_80,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1764730037");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Largemouth Bass is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1809047377");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_85_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestRockBassCaught",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1809109498");
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
                [0] = self.f_box_OutputOrder_v2_89_Out_0,
                [1] = self.f_box_OutputOrder_v2_89_Out_1,
                [2] = self.f_box_OutputOrder_v2_89_Out_2,
                [3] = self.f_box_OutputOrder_v2_89_Out_3,
                [4] = self.f_box_OutputOrder_v2_89_Out_4,
                [5] = self.f_box_OutputOrder_v2_89_Out_5,
                [6] = self.f_box_OutputOrder_v2_89_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103995703113049570",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1820581397");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_90_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_90_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_84,
        -- B,
        [1] = 8,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1832681332");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_75_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_75_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_83,
        -- B,
        [1] = 28,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1855203873");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_61_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_61_True,
    });
    params = {
        -- entityId,
        [0] = "2103995703113049575",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_12()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049572",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1861668528");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_84_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestLargemouthCaught",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_92()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103995703113049571",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103995703113049575",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1918671417");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_65_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_65_True,
    });
    params = {
        -- entityId,
        [0] = "2103995703113049572",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1942946101");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_57_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_57_True,
    });
    params = {
        -- entityId,
        [0] = "2103995703113049571",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103995703113049571",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|1980919796");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_49_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_49_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_17,
        -- B,
        [1] = 37,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_9()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049576",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_100()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049572",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_HenbaneRiver|2078636887");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_31_PrintedToScreen,
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

function export:OnEnter_box_VisibilityModifier_45()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103995703113049575",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_11()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnExit_box_GetStatistic_87_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_87 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_80_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_80 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_76_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_76 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_73_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_73 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_83_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_83 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_23_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_23 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_23 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_5_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_5 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_5 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_24_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_24 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_24 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_51_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_51 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_51 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_6_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_6 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_6 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_17_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_17 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_17 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_30_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_30 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_30 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_85_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_85 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_84_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_84 = l0:GetDataOutValue(0);
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
