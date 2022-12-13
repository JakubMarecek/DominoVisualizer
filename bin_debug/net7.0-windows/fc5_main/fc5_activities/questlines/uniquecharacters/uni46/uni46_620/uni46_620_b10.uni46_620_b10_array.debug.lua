LUAC,/ -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_620/uni46_620_b10.domino
-- User graph: UNI46_620_B10_Array
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/AddToGroupFromList_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/List/ListReset.lua");
        cboxRes:RegisterBox("Domino/System/CreateUniqueGroup.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetGroup.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_620/UNI46_620_B10.UNI46_620_B10_Array.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In_Fireworks",
            },
            [1] = {
                name = "In_Rings",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out_Fireworks",
                delayed = false,
            },
            [1] = {
                name = "Out_Rings",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Fireworks",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "ClearLists",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Cleared",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "EntityProximity",
                type = "entity",
            },
            [1] = {
                name = "EntityProximityMiss",
                type = "entity",
            },
            [2] = {
                name = "FX",
                type = "entity",
            },
            [3] = {
                name = "FX_Off",
                type = "entity",
            },
            [4] = {
                name = "Marker",
                type = "entity",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")] = {
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
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "Pawns",
                type = "list",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/List/ListReset.lua")] = {
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
                name = "List",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CreateUniqueGroup.lua")] = {
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
            [0] = {
                name = "OutGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/SetGroup.lua")] = {
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
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_620_B10_Array";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array";
    self.Out_Rings = DummyFunction;
    self.Out_Fireworks = DummyFunction;
    self.lFireworks = {
    };
    self.gp_fireworks = nil;
    self.box_Brick_GateRaces_CreateLists_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|176042314");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|256197892");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_Brick_GateRaces_CreateLists_26_Added,
    });
    self.box_Brick_GateRaces_CreateLists_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|297187614");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|383173997");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|408473130");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_39 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|615054152");
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
        [0] = self.f_box_MultipleAND_v2_39_Out,
    });
    self.box_Brick_GateRaces_CreateLists_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|764828003");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|937063605");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1087658801");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1283165676");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1321613079");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1374617504");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1376974139");
    l0:SetConnections({
        -- Cleared,
        [1] = self.f_box_Brick_GateRaces_CreateLists_5_Cleared,
    });
    self.box_MultipleAND_v2_29 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1380119537");
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
        [0] = self.f_box_MultipleAND_v2_29_Out,
    });
    self.box_Brick_GateRaces_CreateLists_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1536382885");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_18 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1537666405");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1543738692");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1658638359");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1688955437");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1726189182");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1755796173");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1859115193");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1914105292");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1940464238");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1942584789");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1965368644");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|2117876656");
    l0:SetConnections({
    });
end;

function export:In_Fireworks()
    local params, l0;
    params = self:OnEnter_box_CreateUniqueGroup_33();
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|26834350", "26834350", "UNI46_620_B10_Array", "In_Fireworks", "box_CreateUniqueGroup_33.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In_Rings()
    local params, l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_5();
    l0 = self.box_Brick_GateRaces_CreateLists_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1992323544", "1992323544", "UNI46_620_B10_Array", "In_Rings", "box_Brick_GateRaces_CreateLists_5.ClearLists", self, l0:GetLuaBox());
    -- ClearLists
    l0:Exec(1, params);
end;

function export:f_box_Brick_GateRaces_CreateLists_26_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_Brick_GateRaces_CreateLists_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|861362801", "861362801", "UNI46_620_B10_Array", "box_Brick_GateRaces_CreateLists_26.Added", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_34_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_39();
    l0 = self.box_MultipleAND_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|766871241", "766871241", "UNI46_620_B10_Array", "box_ListWriter_v2_34.Added", "box_MultipleAND_v2_39.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_AddToGroupFromList_v2_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetGroup_32();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|489206227", "489206227", "UNI46_620_B10_Array", "box_AddToGroupFromList_v2_42.Out", "box_SetGroup_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_29();
    l0 = self.box_MultipleAND_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|280964548", "280964548", "UNI46_620_B10_Array", "box_OutputOrder_v2_30.Out", "box_MultipleAND_v2_29.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|777062595", "777062595", "UNI46_620_B10_Array", "box_OutputOrder_v2_30.Out", "box_OutputOrder_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddToGroupFromList_v2_42();
    l0 = self.box_MultipleAND_v2_39;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1601948182", "1601948182", "UNI46_620_B10_Array", "box_MultipleAND_v2_39.Out", "box_AddToGroupFromList_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CreateUniqueGroup_33_Out()
    local params, l0;
    self:OnExit_box_CreateUniqueGroup_33_Out();
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReset_31();
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|349842509", "349842509", "UNI46_620_B10_Array", "box_CreateUniqueGroup_33.Out", "box_ListReset_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetGroup_32_Out()
    local l0;
    self:OnExit_box_SetGroup_32_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|697483517", "697483517", "UNI46_620_B10_Array", "box_SetGroup_32.Out", "Out_Fireworks", clone:GetLuaBox(), self);
    self:Out_Fireworks();
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_10();
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|639280353", "639280353", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_10.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_21();
    l0 = self.box_Brick_GateRaces_CreateLists_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|766854218", "766854218", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_21.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_20();
    l0 = self.box_Brick_GateRaces_CreateLists_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1452418181", "1452418181", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_20.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_22();
    l0 = self.box_Brick_GateRaces_CreateLists_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|136440314", "136440314", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_22.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_9();
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1174673386", "1174673386", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_9.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_11();
    l0 = self.box_Brick_GateRaces_CreateLists_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|300926001", "300926001", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_11.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_16();
    l0 = self.box_Brick_GateRaces_CreateLists_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1266821549", "1266821549", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_16.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_23();
    l0 = self.box_Brick_GateRaces_CreateLists_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1072804661", "1072804661", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_23.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_14();
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|235472972", "235472972", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_14.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_6();
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1662001664", "1662001664", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_6.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_3();
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|733748424", "733748424", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_3.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_24();
    l0 = self.box_Brick_GateRaces_CreateLists_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|730372881", "730372881", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_24.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_15();
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|997601635", "997601635", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_15.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_4();
    l0 = self.box_Brick_GateRaces_CreateLists_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1567708566", "1567708566", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_4.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_12();
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1183612032", "1183612032", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_12.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_18();
    l0 = self.box_Brick_GateRaces_CreateLists_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1286362231", "1286362231", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_18.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_25();
    l0 = self.box_Brick_GateRaces_CreateLists_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|179794750", "179794750", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_25.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_13();
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|2100880458", "2100880458", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_13.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_7();
    l0 = self.box_Brick_GateRaces_CreateLists_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1411275765", "1411275765", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_7.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_17();
    l0 = self.box_Brick_GateRaces_CreateLists_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|59320774", "59320774", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_17.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_2();
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1669186885", "1669186885", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_2.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_8();
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|956148422", "956148422", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_8.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_19();
    l0 = self.box_Brick_GateRaces_CreateLists_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1846845260", "1846845260", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_19.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_1_Out_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_26();
    l0 = self.box_Brick_GateRaces_CreateLists_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|356836376", "356836376", "UNI46_620_B10_Array", "box_OutputOrder_v2_1.Out", "box_Brick_GateRaces_CreateLists_26.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_ListWriter_v2_40_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_39();
    l0 = self.box_MultipleAND_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|275747621", "275747621", "UNI46_620_B10_Array", "box_ListWriter_v2_40.Added", "box_MultipleAND_v2_39.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_34();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|2135154047", "2135154047", "UNI46_620_B10_Array", "box_OutputOrder_v2_36.Out", "box_ListWriter_v2_34.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_37();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1092508091", "1092508091", "UNI46_620_B10_Array", "box_OutputOrder_v2_36.Out", "box_ListWriter_v2_37.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_35();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1108768430", "1108768430", "UNI46_620_B10_Array", "box_OutputOrder_v2_36.Out", "box_ListWriter_v2_35.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_38();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|960917090", "960917090", "UNI46_620_B10_Array", "box_OutputOrder_v2_36.Out", "box_ListWriter_v2_38.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_41();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|955408137", "955408137", "UNI46_620_B10_Array", "box_OutputOrder_v2_36.Out", "box_ListWriter_v2_41.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_43();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1144746822", "1144746822", "UNI46_620_B10_Array", "box_OutputOrder_v2_36.Out", "box_ListWriter_v2_43.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_44();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|2058942653", "2058942653", "UNI46_620_B10_Array", "box_OutputOrder_v2_36.Out", "box_ListWriter_v2_44.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_40();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|65343026", "65343026", "UNI46_620_B10_Array", "box_OutputOrder_v2_36.Out", "box_ListWriter_v2_40.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CreateLists_5_Cleared()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_Brick_GateRaces_CreateLists_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|425037567", "425037567", "UNI46_620_B10_Array", "box_Brick_GateRaces_CreateLists_5.Cleared", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_29_Out()
    local l0;
    l0 = self.box_MultipleAND_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1407425016", "1407425016", "UNI46_620_B10_Array", "box_MultipleAND_v2_29.Out", "Out_Rings", l0:GetLuaBox(), self);
    self:Out_Rings();
end;

function export:f_box_ListReset_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1635706703", "1635706703", "UNI46_620_B10_Array", "box_ListReset_31.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_29();
    l0 = self.box_MultipleAND_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1116369126", "1116369126", "UNI46_620_B10_Array", "box_OutputOrder_v2_27.Out", "box_MultipleAND_v2_29.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_28();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|536238136", "536238136", "UNI46_620_B10_Array", "box_OutputOrder_v2_27.Out", "box_Print_v2_28.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_12()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302205823009486",
        -- EntityProximityMiss,
        [1] = "2104381177182834870",
        -- FX,
        [2] = "2103302205825106640",
        -- FX_Off,
        [3] = "2103302205831398102",
        -- Marker,
        [4] = "2103302205829300948",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_26()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302680997806924",
        -- FX,
        [2] = "2103302680993612616",
        -- FX_Off,
        [3] = "2103302680999904078",
        -- Marker,
        [4] = "2103302681004098386",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|295744350");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_34_Added,
    });
    params = {
        -- Data,
        [0] = "2103597345124933653",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_15()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302166981657272",
        -- EntityProximityMiss,
        [1] = "2104381168559345838",
        -- FX,
        [2] = "2103302166983754426",
        -- FX_Off,
        [3] = "2103302166977462964",
        -- Marker,
        [4] = "2103302166987948734",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_23()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103277874722132919",
        -- EntityProximityMiss,
        [1] = "2104381137745891482",
        -- FX,
        [2] = "2103277874728424381",
        -- FX_Off,
        [3] = "2103277874730521535",
        -- Marker,
        [4] = "2103277874724230075",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_25()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302266208404210",
        -- EntityProximityMiss,
        [1] = "2104381183751114942",
        -- FX,
        [2] = "2103302266210501364",
        -- FX_Off,
        [3] = "2103302266218889978",
        -- Marker,
        [4] = "2103302266214695672",
    };
    return params;
end;

function export:OnEnter_box_AddToGroupFromList_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/AddToGroupFromList_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddToGroupFromList_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|492380986");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddToGroupFromList_v2_42_Out,
    });
    params = {
        -- Group,
        [0] = self.gp_fireworks,
        -- Pawns,
        [1] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|525974292");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103598146199234322",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|549133761");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103598141788923662",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|567509364");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_39()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CreateUniqueGroup_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CreateUniqueGroup_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|755874933");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CreateUniqueGroup_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_13()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302580139475714",
        -- EntityProximityMiss,
        [1] = "2104381187192541378",
        -- FX,
        [2] = "2103302580145767176",
        -- FX_Off,
        [3] = "2103302580145767178",
        -- Marker,
        [4] = "2103302580143670022",
    };
    return params;
end;

function export:OnEnter_box_SetGroup_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|849115315");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_32_Out,
    });
    params = {
        -- Group,
        [0] = self.gp_fireworks,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_6()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103277944978822101",
        -- EntityProximityMiss,
        [1] = "2104381149462679714",
        -- FX,
        [2] = "2103277944972530639",
        -- FX_Off,
        [3] = "2103277944974627793",
        -- Marker,
        [4] = "2103277944980919257",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|947408234");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103597350946627607",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1036520023");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 24,
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
                [3] = self.f_box_OutputOrder_v2_1_Out_3,
                [4] = self.f_box_OutputOrder_v2_1_Out_4,
                [5] = self.f_box_OutputOrder_v2_1_Out_5,
                [6] = self.f_box_OutputOrder_v2_1_Out_6,
                [7] = self.f_box_OutputOrder_v2_1_Out_7,
                [8] = self.f_box_OutputOrder_v2_1_Out_8,
                [9] = self.f_box_OutputOrder_v2_1_Out_9,
                [10] = self.f_box_OutputOrder_v2_1_Out_10,
                [11] = self.f_box_OutputOrder_v2_1_Out_11,
                [12] = self.f_box_OutputOrder_v2_1_Out_12,
                [13] = self.f_box_OutputOrder_v2_1_Out_13,
                [14] = self.f_box_OutputOrder_v2_1_Out_14,
                [15] = self.f_box_OutputOrder_v2_1_Out_15,
                [16] = self.f_box_OutputOrder_v2_1_Out_16,
                [17] = self.f_box_OutputOrder_v2_1_Out_17,
                [18] = self.f_box_OutputOrder_v2_1_Out_18,
                [19] = self.f_box_OutputOrder_v2_1_Out_19,
                [20] = self.f_box_OutputOrder_v2_1_Out_20,
                [21] = self.f_box_OutputOrder_v2_1_Out_21,
                [22] = self.f_box_OutputOrder_v2_1_Out_22,
                [23] = self.f_box_OutputOrder_v2_1_Out_23,
            },
            count = 24,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_19()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302667418747718",
        -- EntityProximityMiss,
        [1] = "2104381207356657878",
        -- FX,
        [2] = "2103302667412456256",
        -- FX_Off,
        [3] = "2103302667416650562",
        -- Marker,
        [4] = "2103302667410359102",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_17()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302607912059680",
        -- EntityProximityMiss,
        [1] = "2104381195130261706",
        -- FX,
        [2] = "2103302607914156834",
        -- FX_Off,
        [3] = "2103302607907865372",
        -- Marker,
        [4] = "2103302607905768218",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1312395788");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_40_Added,
    });
    params = {
        -- Data,
        [0] = "2103598149466597140",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_3()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103301980792308380",
        -- EntityProximityMiss,
        [1] = "2104381160497893542",
        -- FX,
        [2] = "2103301980790211224",
        -- FX_Off,
        [3] = "2103302025352594082",
        -- Marker,
        [4] = "2103301980794405536",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1322533439");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103598144055944976",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1364626119");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
                [3] = self.f_box_OutputOrder_v2_36_Out_3,
                [4] = self.f_box_OutputOrder_v2_36_Out_4,
                [5] = self.f_box_OutputOrder_v2_36_Out_5,
                [6] = self.f_box_OutputOrder_v2_36_Out_6,
                [7] = self.f_box_OutputOrder_v2_36_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_8()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302658170307378",
        -- EntityProximityMiss,
        [1] = "2104381203818762450",
        -- FX,
        [2] = "2103302658178695994",
        -- FX_Off,
        [3] = "2103302658176598840",
        -- Marker,
        [4] = "2103302658174501686",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_5()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_29()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_2()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302637781795622",
        -- EntityProximityMiss,
        [1] = "2104381200029208782",
        -- FX,
        [2] = "2103302637783892776",
        -- FX_Off,
        [3] = "2103302637788087082",
        -- Marker,
        [4] = "2103302637790184238",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_18()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302239488590568",
        -- EntityProximityMiss,
        [1] = "2104381179900743866",
        -- FX,
        [2] = "2103302239494882030",
        -- FX_Off,
        [3] = "2103302239486493412",
        -- Marker,
        [4] = "2103302239492784876",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_20()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103277813703398275",
        -- EntityProximityMiss,
        [1] = "2104381119771201670",
        -- FX,
        [2] = "2103277813699203967",
        -- FX_Off,
        [3] = "2103277813692912505",
        -- Marker,
        [4] = "2103277813697106813",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1561746872");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103597351915511835",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_21()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103277784072737651",
        -- EntityProximityMiss,
        [1] = "2104381112129179778",
        -- FX,
        [2] = "2103277784070640495",
        -- FX_Off,
        [3] = "2103277784068543341",
        -- Marker,
        [4] = "2103277784076931959",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1680432114");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = "2103597351401709593",
        -- Input,
        [2] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_ListReset_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListReset.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReset_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1683621765");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListReset_31_Out,
    });
    params = {
        -- List,
        [0] = self.lFireworks,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_4()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302190618657482",
        -- EntityProximityMiss,
        [1] = "2104381173019988146",
        -- FX,
        [2] = "2103302190616560326",
        -- FX_Off,
        [3] = "2103302190614463172",
        -- Marker,
        [4] = "2103302190612366018",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_10()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2101355888479592671",
        -- EntityProximityMiss,
        [1] = "2104381050837815422",
        -- FX,
        [2] = "2101355888481689825",
        -- FX_Off,
        [3] = "2103277738036056937",
        -- Marker,
        [4] = "2101355888487981285",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_11()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103277852173554597",
        -- EntityProximityMiss,
        [1] = "2104381129879474322",
        -- FX,
        [2] = "2103277852175651751",
        -- FX_Off,
        [3] = "2103277852169360289",
        -- Marker,
        [4] = "2103277852167263135",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_22()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103277826558940039",
        -- EntityProximityMiss,
        [1] = "2104381122906443914",
        -- FX,
        [2] = "2103277826567328655",
        -- FX_Off,
        [3] = "2103277826563134349",
        -- Marker,
        [4] = "2103277826561037195",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1892722845");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_9()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103277837432673177",
        -- EntityProximityMiss,
        [1] = "2104381125808902286",
        -- FX,
        [2] = "2103277837426381713",
        -- FX_Off,
        [3] = "2103277837434770331",
        -- Marker,
        [4] = "2103277837430576021",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_16()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103277862699160499",
        -- EntityProximityMiss,
        [1] = "2104381134252036246",
        -- FX,
        [2] = "2103277862694966187",
        -- FX_Off,
        [3] = "2103277862692869033",
        -- Marker,
        [4] = "2103277862697063343",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_7()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302596899914514",
        -- EntityProximityMiss,
        [1] = "2104381192282329286",
        -- FX,
        [2] = "2103302596902011668",
        -- FX_Off,
        [3] = "2103302596906205974",
        -- Marker,
        [4] = "2103302596895720206",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_24()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103302037136491176",
        -- EntityProximityMiss,
        [1] = "2104381164115480746",
        -- FX,
        [2] = "2103302037134394020",
        -- FX_Off,
        [3] = "2103302037140685482",
        -- Marker,
        [4] = "2103302037142782638",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_620\\UNI46_620_B10.domino|@UNI46_620_B10_Array|1983292210");
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
        [8] = "Array Complete",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_14()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103277899393029059",
        -- EntityProximityMiss,
        [1] = "2104381141204095134",
        -- FX,
        [2] = "2103277899399320521",
        -- FX_Off,
        [3] = "2103277899401417675",
        -- Marker,
        [4] = "2103277899395126215",
    };
    return params;
end;

function export:OnExit_box_CreateUniqueGroup_33_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CreateUniqueGroup.lua")];
    self.gp_fireworks = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_32_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.Fireworks = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out_Rings()
    
end;
function export:Out_Fireworks()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In_Fireworks" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Rings" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out_Fireworks" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Out_Rings" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut>
		<DataOut Name="Fireworks" AnchorDynType="0" DataTypeID="group" />
	</DatasOut>
</DominoMetadata>
