LUAC�x -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_challenges/fc5_fishingchalkboards.domino
-- User graph: FC5_FishingChalkboards_Whitetail
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Challenges/FC5_FishingChalkboards.FC5_FishingChalkboards_Whitetail.debug.lua")] = {
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
    self._name = "FC5_FishingChalkboards_Whitetail";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail";
    self.box_VisibilityModifier_37 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|68137453");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_37_Enabled,
    });
    self.box_VisibilityModifier_6 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|128278284");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_6_Disabled,
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|174673016");
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
        [0] = self.f_box_MultipleOR_90_Out,
    });
    self.box_MultipleOR_64 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|178635930");
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
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|288773944");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
    });
    self.box_VisibilityModifier_100 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|327250377");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_100_Enabled,
    });
    self.box_EntityStatusListener_33 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|356316376");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_33_Loaded,
    });
    self.box_VisibilityModifier_98 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|406314367");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_98_Enabled,
    });
    self.box_MultipleOR_66 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|411043940");
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
    self.box_VisibilityModifier_97 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|412892537");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_97_Enabled,
    });
    self.box_VisibilityModifier_2 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|552857323");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_2_Enabled,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|604359173");
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
    self.box_VisibilityModifier_20 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|605254605");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_20_Enabled,
    });
    self.box_EntityStatusListener_29 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|605793071");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_29_Loaded,
    });
    self.box_EntityStatusListener_48 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|624031664");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_48_Loaded,
    });
    self.box_VisibilityModifier_22 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|699302496");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_22_Disabled,
    });
    self.box_MultipleAND_v2_87 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|703936840");
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
        [0] = self.f_box_MultipleAND_v2_87_Out,
    });
    self.box_MultipleOR_93 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|708460627");
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
    self.box_VisibilityModifier_26 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|779222014");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_26_Enabled,
    });
    self.box_VisibilityModifier_52 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|847485688");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_52_Enabled,
    });
    self.box_VisibilityModifier_30 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|880013689");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_30_Enabled,
    });
    self.box_VisibilityModifier_41 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|930080483");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_41_Disabled,
    });
    self.box_VisibilityModifier_96 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1019477115");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_96_Enabled,
    });
    self.box_EntityStatusListener_40 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1067305669");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_40_Loaded,
    });
    self.box_VisibilityModifier_24 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1124339024");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_24_Disabled,
    });
    self.box_MultipleOR_68 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1216224744");
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
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1231907971");
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
    self.box_EntityStatusListener_21 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1264631173");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_21_Loaded,
    });
    self.box_MultipleAND_v2_46 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1314126783");
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
        [0] = self.f_box_MultipleAND_v2_46_Out,
    });
    self.box_VisibilityModifier_25 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1364223104");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_25_Disabled,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1417595897");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_VisibilityModifier_44 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1468703618");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_44_Disabled,
    });
    self.box_OnceOnly_v3_72 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1512792422");
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
                [0] = self.f_box_OnceOnly_v3_72_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1599206299");
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
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1740893412");
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
    self.box_EntityStatusListener_7 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1777604696");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_7_Loaded,
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1816969090");
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
    self.box_VisibilityModifier_49 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1822226817");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_49_Disabled,
    });
    self.box_EntityStatusListener_92 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1892172286");
    l0:SetConnections({
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_92_Unloaded,
    });
    self.box_VisibilityModifier_99 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1936164732");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_99_Enabled,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1977679615");
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
    self.box_VisibilityModifier_95 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1998550286");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_95_Enabled,
    });
    self.box_VisibilityModifier_17 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2103485477");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_17_Enabled,
    });
    self.box_VisibilityModifier_101 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2108511011");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_101_Enabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetActivityFact_71();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1335745876", "1335745876", "FC5_FishingChalkboards_Whitetail", "In", "box_GetActivityFact_71.GetFact", self, l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_94_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1754021073", "1754021073", "FC5_FishingChalkboards_Whitetail", "box_Simple_Node_94.Out", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_91_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|213845831", "213845831", "FC5_FishingChalkboards_Whitetail", "box_Simple_Node_91.Out", "box_MultipleOR_82.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_37_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_36();
    l0 = self.box_VisibilityModifier_37;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|501715801", "501715801", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_37.Enabled", "box_Print_v2_36.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_6_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_39();
    l0 = self.box_VisibilityModifier_6;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1655455924", "1655455924", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_6.Disabled", "box_Print_v2_39.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_71_FactNotSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|259874510", "259874510", "FC5_FishingChalkboards_Whitetail", "box_GetActivityFact_71.FactNotSet", "box_OutputOrder_v2_86.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityFact_71_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|391972454", "391972454", "FC5_FishingChalkboards_Whitetail", "box_GetActivityFact_71.FactSet", "box_Simple_Node_91.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_90_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_90;
    l1 = self.box_OnceOnly_v3_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|599039701", "599039701", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_90.Out", "box_OnceOnly_v3_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_64_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_35();
    l0 = self.box_MultipleOR_64;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|704458906", "704458906", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_64.Out", "box_GetStatistic_35.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_19_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_19_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_51();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2128399113", "2128399113", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_19.ValueGot", "box_Compare_Integers_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_61_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1347581622", "1347581622", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_61.False", "box_EntityStatusListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_61_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1023515210", "1023515210", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_61.True", "box_MultipleOR_62.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_81_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_96();
    l0 = self.box_VisibilityModifier_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1454103821", "1454103821", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_81.A_ge_B", "box_VisibilityModifier_96.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_81_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1249449725", "1249449725", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_81.A_lt_B", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_38;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|45807625", "45807625", "FC5_FishingChalkboards_Whitetail", "box_EntityStatusListener_38.Loaded", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetStatistic_76_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_76_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_84();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2002235239", "2002235239", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_76.ValueGot", "box_Compare_Integers_84.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_100_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_VisibilityModifier_100;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|884445412", "884445412", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_100.Enabled", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 3);
end;

function export:f_box_IsEntityLoaded_v3_57_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_48();
    l0 = self.box_EntityStatusListener_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|477584542", "477584542", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_57.False", "box_EntityStatusListener_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_57_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|88641480", "88641480", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_57.True", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Print_v2_16_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2054502272", "2054502272", "FC5_FishingChalkboards_Whitetail", "box_Print_v2_16.PrintedToScreen", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 6);
end;

function export:f_box_EntityStatusListener_33_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_33;
    l1 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|10911650", "10911650", "FC5_FishingChalkboards_Whitetail", "box_EntityStatusListener_33.Loaded", "box_MultipleOR_56.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_98_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_VisibilityModifier_98;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1687035558", "1687035558", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_98.Enabled", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 5);
end;

function export:f_box_MultipleOR_66_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_3();
    l0 = self.box_MultipleOR_66;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1191066827", "1191066827", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_66.Out", "box_GetStatistic_3.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_97_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_VisibilityModifier_97;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1170990228", "1170990228", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_97.Enabled", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_Print_v2_50_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|334245415", "334245415", "FC5_FishingChalkboards_Whitetail", "box_Print_v2_50.PrintedToScreen", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_GetStatistic_77_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_77_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_88();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1331770296", "1331770296", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_77.ValueGot", "box_Compare_Integers_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_12();
    l0 = self.box_VisibilityModifier_2;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|739501068", "739501068", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_2.Enabled", "box_Print_v2_12.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_75_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_75_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_89();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1364850720", "1364850720", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_75.ValueGot", "box_Compare_Integers_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_1();
    l0 = self.box_MultipleOR_62;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1485419943", "1485419943", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_62.Out", "box_GetStatistic_1.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_20_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_13();
    l0 = self.box_VisibilityModifier_20;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|333594904", "333594904", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_20.Enabled", "box_Print_v2_13.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_29_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_29;
    l1 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|751032551", "751032551", "FC5_FishingChalkboards_Whitetail", "box_EntityStatusListener_29.Loaded", "box_MultipleOR_66.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_48_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_48;
    l1 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|585660040", "585660040", "FC5_FishingChalkboards_Whitetail", "box_EntityStatusListener_48.Loaded", "box_MultipleOR_58.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetStatistic_35_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_35_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_28();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1514493613", "1514493613", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_35.ValueGot", "box_Compare_Integers_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_3_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_3_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_10();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2049579143", "2049579143", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_3.ValueGot", "box_Compare_Integers_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_65_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_29();
    l0 = self.box_EntityStatusListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|868779826", "868779826", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_65.False", "box_EntityStatusListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_65_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1952099796", "1952099796", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_65.True", "box_MultipleOR_66.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_22_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_45();
    l0 = self.box_VisibilityModifier_22;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|381532074", "381532074", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_22.Disabled", "box_Print_v2_45.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_87_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = self.box_MultipleAND_v2_87;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|325503025", "325503025", "FC5_FishingChalkboards_Whitetail", "box_MultipleAND_v2_87.Out", "box_Simple_Node_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_93_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_33();
    l0 = self.box_MultipleOR_93;
    l1 = self.box_EntityStatusListener_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|373717041", "373717041", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_93.Out", "box_EntityStatusListener_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_74();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1171173295", "1171173295", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_86.Out", "box_GetStatistic_74.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_79();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1604238262", "1604238262", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_86.Out", "box_GetStatistic_79.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_77();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1528577866", "1528577866", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_86.Out", "box_GetStatistic_77.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_76();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1539634548", "1539634548", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_86.Out", "box_GetStatistic_76.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_78();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|412710727", "412710727", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_86.Out", "box_GetStatistic_78.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_83();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|306346732", "306346732", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_86.Out", "box_GetStatistic_83.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetStatistic_75();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|181835122", "181835122", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_86.Out", "box_GetStatistic_75.GetValue", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetValue
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_78_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_78_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_85();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|393253265", "393253265", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_78.ValueGot", "box_Compare_Integers_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_59_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_21();
    l0 = self.box_EntityStatusListener_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1487867877", "1487867877", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_59.False", "box_EntityStatusListener_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_59_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2018362336", "2018362336", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_59.True", "box_MultipleOR_60.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_26_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_50();
    l0 = self.box_VisibilityModifier_26;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|300225513", "300225513", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_26.Enabled", "box_Print_v2_50.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_14_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_14_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_18();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|475388911", "475388911", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_14.ValueGot", "box_Compare_Integers_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_52_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_16();
    l0 = self.box_VisibilityModifier_52;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|91147745", "91147745", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_52.Enabled", "box_Print_v2_16.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_4_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1462262287", "1462262287", "FC5_FishingChalkboards_Whitetail", "box_Print_v2_4.PrintedToScreen", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_VisibilityModifier_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_4();
    l0 = self.box_VisibilityModifier_30;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1767764866", "1767764866", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_30.Enabled", "box_Print_v2_4.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityFact_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_43();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1780403698", "1780403698", "FC5_FishingChalkboards_Whitetail", "box_SetActivityFact_23.Out", "box_ActivityEnd_43.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_41_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_32();
    l0 = self.box_VisibilityModifier_41;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|818986544", "818986544", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_41.Disabled", "box_Print_v2_32.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_83_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_83_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_80();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|837315816", "837315816", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_83.ValueGot", "box_Compare_Integers_80.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_96_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_VisibilityModifier_96;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|851107253", "851107253", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_96.Enabled", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_GetStatistic_15_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_15_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_53();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2062478057", "2062478057", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_15.ValueGot", "box_Compare_Integers_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Print_v2_13_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1660120319", "1660120319", "FC5_FishingChalkboards_Whitetail", "box_Print_v2_13.PrintedToScreen", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_EntityStatusListener_40_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_40;
    l1 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|597441968", "597441968", "FC5_FishingChalkboards_Whitetail", "box_EntityStatusListener_40.Loaded", "box_MultipleOR_68.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_24_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_34();
    l0 = self.box_VisibilityModifier_24;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1846899937", "1846899937", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_24.Disabled", "box_Print_v2_34.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_14();
    l0 = self.box_MultipleOR_68;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2069481149", "2069481149", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_68.Out", "box_GetStatistic_14.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_MultipleOR_56;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1285010610", "1285010610", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_56.Out", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_21_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_21;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1882651117", "1882651117", "FC5_FishingChalkboards_Whitetail", "box_EntityStatusListener_21.Loaded", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetStatistic_1_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_1_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_54();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|304949009", "304949009", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_1.ValueGot", "box_Compare_Integers_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_85_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_101();
    l0 = self.box_VisibilityModifier_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1152101198", "1152101198", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_85.A_ge_B", "box_VisibilityModifier_101.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_85_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2043493770", "2043493770", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_85.A_lt_B", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Compare_Integers_88_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_97();
    l0 = self.box_VisibilityModifier_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1632168136", "1632168136", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_88.A_ge_B", "box_VisibilityModifier_97.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_88_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1367264477", "1367264477", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_88.A_lt_B", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleAND_v2_46_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_46;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1371251824", "1371251824", "FC5_FishingChalkboards_Whitetail", "box_MultipleAND_v2_46.Out", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_25_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_11();
    l0 = self.box_VisibilityModifier_25;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|594125919", "594125919", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_25.Disabled", "box_Print_v2_11.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_73_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_99();
    l0 = self.box_VisibilityModifier_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1178943324", "1178943324", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_73.A_ge_B", "box_VisibilityModifier_99.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_73_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1364356981", "1364356981", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_73.A_lt_B", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1646859821", "1646859821", "FC5_FishingChalkboards_Whitetail", "box_EntityStatusListener_9.Loaded", "box_MultipleOR_64.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_VisibilityModifier_44_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_42();
    l0 = self.box_VisibilityModifier_44;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|939648992", "939648992", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_44.Disabled", "box_Print_v2_42.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_89_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_95();
    l0 = self.box_VisibilityModifier_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2022693178", "2022693178", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_89.A_ge_B", "box_VisibilityModifier_95.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_89_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1570517765", "1570517765", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_89.A_lt_B", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_OnceOnly_v3_72_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityLoaded_v3_55();
    l0 = self.box_OnceOnly_v3_72;
    l1 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|261809545", "261809545", "FC5_FishingChalkboards_Whitetail", "box_OnceOnly_v3_72.Out", "box_IsEntityLoaded_v3_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_36_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|665517321", "665517321", "FC5_FishingChalkboards_Whitetail", "box_Print_v2_36.PrintedToScreen", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 4);
end;

function export:f_box_Print_v2_12_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|120014156", "120014156", "FC5_FishingChalkboards_Whitetail", "box_Print_v2_12.PrintedToScreen", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_Compare_Integers_18_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_17();
    l0 = self.box_VisibilityModifier_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1349912358", "1349912358", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_18.A_ge_B", "box_VisibilityModifier_17.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_18_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_22();
    l0 = self.box_VisibilityModifier_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1832196862", "1832196862", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_18.A_lt_B", "box_VisibilityModifier_22.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_8();
    l0 = self.box_MultipleOR_60;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|882739131", "882739131", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_60.Out", "box_GetStatistic_8.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_54_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_2();
    l0 = self.box_VisibilityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2041015328", "2041015328", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_54.A_ge_B", "box_VisibilityModifier_2.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_54_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_41();
    l0 = self.box_VisibilityModifier_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1551970886", "1551970886", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_54.A_lt_B", "box_VisibilityModifier_41.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_57();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|244909269", "244909269", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_59();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1583175190", "1583175190", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_61();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|521384483", "521384483", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_63();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|215148848", "215148848", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_65();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1770910297", "1770910297", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_67();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2016174657", "2016174657", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_69();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1323853881", "1323853881", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_5.Out", "box_IsEntityLoaded_v3_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_92();
    l0 = self.box_EntityStatusListener_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1679177033", "1679177033", "FC5_FishingChalkboards_Whitetail", "box_OutputOrder_v2_5.Out", "box_EntityStatusListener_92.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetStatistic_74_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_74_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_73();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|784971333", "784971333", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_74.ValueGot", "box_Compare_Integers_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_53_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_52();
    l0 = self.box_VisibilityModifier_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|282009342", "282009342", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_53.A_ge_B", "box_VisibilityModifier_52.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_53_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_49();
    l0 = self.box_VisibilityModifier_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1105470386", "1105470386", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_53.A_lt_B", "box_VisibilityModifier_49.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_15();
    l0 = self.box_MultipleOR_70;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|102813175", "102813175", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_70.Out", "box_GetStatistic_15.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_7_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_7;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1748631560", "1748631560", "FC5_FishingChalkboards_Whitetail", "box_EntityStatusListener_7.Loaded", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_47_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_30();
    l0 = self.box_VisibilityModifier_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1064099348", "1064099348", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_47.A_ge_B", "box_VisibilityModifier_30.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_47_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_25();
    l0 = self.box_VisibilityModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1449371413", "1449371413", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_47.A_lt_B", "box_VisibilityModifier_25.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_80_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_98();
    l0 = self.box_VisibilityModifier_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1304926965", "1304926965", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_80.A_ge_B", "box_VisibilityModifier_98.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_80_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|845660619", "845660619", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_80.A_lt_B", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetStatistic_19();
    l0 = self.box_MultipleOR_58;
    l1 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|572355082", "572355082", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_58.Out", "box_GetStatistic_19.GetValue", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetValue
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_27_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_46();
    l0 = self.box_MultipleAND_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1514181952", "1514181952", "FC5_FishingChalkboards_Whitetail", "box_Print_v2_27.PrintedToScreen", "box_MultipleAND_v2_46.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 5);
end;

function export:f_box_VisibilityModifier_49_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_31();
    l0 = self.box_VisibilityModifier_49;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|667732497", "667732497", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_49.Disabled", "box_Print_v2_31.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_92_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = self.box_EntityStatusListener_92;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1289917133", "1289917133", "FC5_FishingChalkboards_Whitetail", "box_EntityStatusListener_92.Unloaded", "box_Simple_Node_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetStatistic_8_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_8_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_47();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|249550779", "249550779", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_8.ValueGot", "box_Compare_Integers_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_67_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_40();
    l0 = self.box_EntityStatusListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1666869697", "1666869697", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_67.False", "box_EntityStatusListener_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_67_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|609796953", "609796953", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_67.True", "box_MultipleOR_68.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_55_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|357088736", "357088736", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_55.False", "box_MultipleOR_93.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityLoaded_v3_55_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2002435899", "2002435899", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_55.True", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_84_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_100();
    l0 = self.box_VisibilityModifier_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1035738774", "1035738774", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_84.A_ge_B", "box_VisibilityModifier_100.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_84_A_lt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1742816663", "1742816663", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_84.A_lt_B", "box_MultipleOR_90.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_VisibilityModifier_99_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_VisibilityModifier_99;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1055686057", "1055686057", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_99.Enabled", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_IsEntityLoaded_v3_69_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_7();
    l0 = self.box_EntityStatusListener_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|273872070", "273872070", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_69.False", "box_EntityStatusListener_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_69_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|12565802", "12565802", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_69.True", "box_MultipleOR_70.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_51_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_20();
    l0 = self.box_VisibilityModifier_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|913474411", "913474411", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_51.A_ge_B", "box_VisibilityModifier_20.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_51_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_6();
    l0 = self.box_VisibilityModifier_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1136547644", "1136547644", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_51.A_lt_B", "box_VisibilityModifier_6.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_23();
    l0 = self.box_MultipleOR_82;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1659779932", "1659779932", "FC5_FishingChalkboards_Whitetail", "box_MultipleOR_82.Out", "box_SetActivityFact_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityLoaded_v3_63_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1774352319", "1774352319", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_63.False", "box_EntityStatusListener_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_63_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1719691786", "1719691786", "FC5_FishingChalkboards_Whitetail", "box_IsEntityLoaded_v3_63.True", "box_MultipleOR_64.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VisibilityModifier_95_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_VisibilityModifier_95;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|119682901", "119682901", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_95.Enabled", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 6);
end;

function export:f_box_GetStatistic_79_ValueGot()
    local params, l0;
    self:OnExit_box_GetStatistic_79_ValueGot();
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_81();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2017911465", "2017911465", "FC5_FishingChalkboards_Whitetail", "box_GetStatistic_79.ValueGot", "box_Compare_Integers_81.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_28_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_26();
    l0 = self.box_VisibilityModifier_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|245385522", "245385522", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_28.A_ge_B", "box_VisibilityModifier_26.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_28_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_44();
    l0 = self.box_VisibilityModifier_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1760423018", "1760423018", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_28.A_lt_B", "box_VisibilityModifier_44.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_27();
    l0 = self.box_VisibilityModifier_17;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1266773203", "1266773203", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_17.Enabled", "box_Print_v2_27.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_101_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_87();
    l0 = self.box_VisibilityModifier_101;
    l1 = self.box_MultipleAND_v2_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|912541881", "912541881", "FC5_FishingChalkboards_Whitetail", "box_VisibilityModifier_101.Enabled", "box_MultipleAND_v2_87.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 4);
end;

function export:f_box_Compare_Integers_10_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_37();
    l0 = self.box_VisibilityModifier_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|195380681", "195380681", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_10.A_ge_B", "box_VisibilityModifier_37.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_10_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_24();
    l0 = self.box_VisibilityModifier_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1300229681", "1300229681", "FC5_FishingChalkboards_Whitetail", "box_Compare_Integers_10.A_lt_B", "box_VisibilityModifier_24.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|@recheckLoaded");
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|@SkipBeat");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|494972");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_35,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Rainbow Trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_37()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741287",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_6()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741286",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|137384829");
    l0:SetConnections({
        -- FactNotSet,
        [0] = self.f_box_GetActivityFact_71_FactNotSet,
        -- FactSet,
        [1] = self.f_box_GetActivityFact_71_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015276274465368",
        -- Fact,
        [1] = "WhitetailFishingComplete",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|211203695");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_19_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestBullTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|270738927");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_61_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_61_True,
    });
    params = {
        -- entityId,
        [0] = "2103969078933741290",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|286371741");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_81_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_81_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_79,
        -- B,
        [1] = 4,
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
        [2] = "2103969078933741290",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|293479156");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_76_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestRainbowTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_100()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741291",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|338149651");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_57_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_57_True,
    });
    params = {
        -- entityId,
        [0] = "2103969078933741286",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|348013376");
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
        [8] = "Whitetail Arctic Grayling ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969078933741286",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_98()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741289",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_97()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741290",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|470410818");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_50_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Whitetail RainbowTrout ribbon received!",
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|514722672");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_77_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestLakeTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_2()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741290",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|565578567");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_75_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestArcticGraylingCaught",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_20()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741286",
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
        [2] = "2103969078933741287",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969078933741286",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|629861423");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_35_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestRainbowTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|653153547");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_3_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestChinookSalmonCaught",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|692948206");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_65_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_65_True,
    });
    params = {
        -- entityId,
        [0] = "2103969078933741287",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_22()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741289",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_87()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|752017258");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
                [2] = self.f_box_OutputOrder_v2_86_Out_2,
                [3] = self.f_box_OutputOrder_v2_86_Out_3,
                [4] = self.f_box_OutputOrder_v2_86_Out_4,
                [5] = self.f_box_OutputOrder_v2_86_Out_5,
                [6] = self.f_box_OutputOrder_v2_86_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|757963690");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_78_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestChinookSalmonCaught",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|761385816");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_59_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_59_True,
    });
    params = {
        -- entityId,
        [0] = "2103969078933741288",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_26()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741291",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|831708411");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_14_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestKokaneeCaught",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_52()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741285",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|868131204");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_4_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Whitetail GoldenTrout ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_30()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741288",
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|895525751");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_23_Out,
    });
    params = {
        -- Fact,
        [0] = "WhitetailFishingComplete",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_41()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741290",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_83()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|938778144");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_83_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestKokaneeCaught",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|969314665");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_19,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught bull trout is",
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
        [1] = "2103969078933741288",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1032206926");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_15_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestArcticGraylingCaught",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1046501384");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_13_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Whitetail Bull Trout ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969078933741289",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1072087460");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_8,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Golden Trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_24()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741287",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1161254656");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Chinook Salmon is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969078933741288",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1268454808");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_1_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestLakeTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1277781295");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_85_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_85_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_78,
        -- B,
        [1] = 27,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1292399803");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_88_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_88_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_77,
        -- B,
        [1] = 37,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_46()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_25()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741288",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1393730822");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_73_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_73_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_74,
        -- B,
        [1] = 21,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969078933741291",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_44()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741291",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1474530042");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1477018704");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_89_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_89_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_75,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1513939948");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_36_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Whitetail Chinook Salmon ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1566401001");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_12_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "Cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Whitetail Lake Trout ribbon received!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1571135056");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_18_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_18_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_14,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1621774668");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_1,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Lake Trout is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1650443414");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_54_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_54_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_1,
        -- B,
        [1] = 37,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1680410965");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
                [3] = self.f_box_OutputOrder_v2_5_Out_3,
                [4] = self.f_box_OutputOrder_v2_5_Out_4,
                [5] = self.f_box_OutputOrder_v2_5_Out_5,
                [6] = self.f_box_OutputOrder_v2_5_Out_6,
                [7] = self.f_box_OutputOrder_v2_5_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1694232267");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_74_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestBullTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1729420366");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_53_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_53_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_15,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_7()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103969078933741285",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1800097086");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_47_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_47_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_8,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1803441597");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_80_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_80_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_83,
        -- B,
        [1] = 6,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1820918927");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_27_PrintedToScreen,
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

function export:OnEnter_box_VisibilityModifier_49()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741285",
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
        [2] = "2103969078933741286",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1893470979");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_8_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestGoldenTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1896149836");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_67_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_67_True,
    });
    params = {
        -- entityId,
        [0] = "2103969078933741289",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1897397420");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_55_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_55_True,
    });
    params = {
        -- entityId,
        [0] = "2103969078933741286",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1899683239");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_14,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Kokanee is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1915860855");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_84_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_84_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_76,
        -- B,
        [1] = 28,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_99()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741286",
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1938072993");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_69_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_69_True,
    });
    params = {
        -- entityId,
        [0] = "2103969078933741285",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1950518073");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_51_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_51_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_19,
        -- B,
        [1] = 21,
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1983214499");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_63_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_63_True,
    });
    params = {
        -- entityId,
        [0] = "2103969078933741291",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|1985669669");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- int,
        [6] = self._sld_value_box_GetStatistic_15,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Fishing Chalkboard... Largest caught Arctic Grayling is",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_95()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741285",
    };
    return params;
end;

function export:OnEnter_box_GetStatistic_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetStatistic_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2011476998");
    l0:SetConnections({
        -- ValueGot,
        [0] = self.f_box_GetStatistic_79_ValueGot,
    });
    params = {
        -- name,
        [0] = "BiggestGoldenTroutCaught",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2071755646");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_28_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_28_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_35,
        -- B,
        [1] = 28,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_17()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741289",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_101()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103969078933741287",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Challenges\\FC5_FishingChalkboards.domino|@FC5_FishingChalkboards_Whitetail|2125534580");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_10_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_10_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_value_box_GetStatistic_3,
        -- B,
        [1] = 27,
    };
    return params;
end;

function export:OnExit_box_GetStatistic_19_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_19 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_19 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_76_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_76 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_77_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_77 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_75_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_75 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_35_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_35 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_35 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_3_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_3 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_78_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_78 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_14_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_14 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_14 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_83_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_83 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_15_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_15 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_15 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_1_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_1 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_74_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_74 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_8_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_8 = l0:GetDataOutValue(0);
    self._sld_value_box_GetStatistic_8 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetStatistic_79_ValueGot()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetStatistic.lua")];
    self._sld_value_box_GetStatistic_79 = l0:GetDataOutValue(0);
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
