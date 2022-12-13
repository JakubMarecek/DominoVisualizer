LUAC?�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_610/uni46_610_b10.domino
-- User graph: UNI46_610_B10_Array
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
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_610/UNI46_610_B10.UNI46_610_B10_Array.debug.lua")] = {
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
        },
        dataOutCount = 0,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI46_610_B10_Array";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array";
    self.Out = DummyFunction;
    self.box_MultipleAND_v2_24 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|66328982");
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
        [0] = self.f_box_MultipleAND_v2_24_Out,
    });
    self.box_Brick_GateRaces_CreateLists_27 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|71138936");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_31 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|138326589");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|143066204");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|252124730");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|322984449");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|332897897");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|343576026");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|451952220");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|496110703");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|590455583");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|658362665");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|664080580");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|674348813");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|689208614");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_33 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|738956241");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|781444153");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_32 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|828216732");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_Brick_GateRaces_CreateLists_32_Added,
    });
    self.box_Brick_GateRaces_CreateLists_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|968355957");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_34 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|973233042");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1000130259");
    l0:SetConnections({
        -- Cleared,
        [1] = self.f_box_Brick_GateRaces_CreateLists_21_Cleared,
    });
    self.box_Brick_GateRaces_CreateLists_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1058503829");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1094057797");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_9 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1234939763");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1301960965");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1309562047");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1346381897");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1517988232");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_18 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1640172439");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1673731169");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_2 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1933539423");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1969340617");
    l0:SetConnections({
    });
    self.box_Brick_GateRaces_CreateLists_23 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_GateRaces.Brick_GateRaces_CreateLists.debug.lua");
    l0 = self.box_Brick_GateRaces_CreateLists_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_GateRaces_CreateLists_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|2131561852");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|232528890", "232528890", "UNI46_610_B10_Array", "In", "box_OutputOrder_v2_11.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_24_Out()
    local l0;
    l0 = self.box_MultipleAND_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|486476962", "486476962", "UNI46_610_B10_Array", "box_MultipleAND_v2_24.Out", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Brick_GateRaces_CreateLists_32_Added()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_Brick_GateRaces_CreateLists_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1800832296", "1800832296", "UNI46_610_B10_Array", "box_Brick_GateRaces_CreateLists_32.Added", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_GateRaces_CreateLists_21_Cleared()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_24();
    l0 = self.box_Brick_GateRaces_CreateLists_21;
    l1 = self.box_MultipleAND_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1083606404", "1083606404", "UNI46_610_B10_Array", "box_Brick_GateRaces_CreateLists_21.Cleared", "box_MultipleAND_v2_24.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_21();
    l0 = self.box_Brick_GateRaces_CreateLists_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|272852249", "272852249", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_21.ClearLists", clone:GetLuaBox(), l0:GetLuaBox());
    -- ClearLists
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_8();
    l0 = self.box_Brick_GateRaces_CreateLists_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1615360983", "1615360983", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_8.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_1();
    l0 = self.box_Brick_GateRaces_CreateLists_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1256653236", "1256653236", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_1.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_3();
    l0 = self.box_Brick_GateRaces_CreateLists_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|559693019", "559693019", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_3.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_18();
    l0 = self.box_Brick_GateRaces_CreateLists_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|2131777050", "2131777050", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_18.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_30();
    l0 = self.box_Brick_GateRaces_CreateLists_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|2007583259", "2007583259", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_30.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_34();
    l0 = self.box_Brick_GateRaces_CreateLists_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|630831955", "630831955", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_34.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_4();
    l0 = self.box_Brick_GateRaces_CreateLists_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1145421222", "1145421222", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_4.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_2();
    l0 = self.box_Brick_GateRaces_CreateLists_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|360371676", "360371676", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_2.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_28();
    l0 = self.box_Brick_GateRaces_CreateLists_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|783062230", "783062230", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_28.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_35();
    l0 = self.box_Brick_GateRaces_CreateLists_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|186832349", "186832349", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_35.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_15();
    l0 = self.box_Brick_GateRaces_CreateLists_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|242048019", "242048019", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_15.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_36();
    l0 = self.box_Brick_GateRaces_CreateLists_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|396634166", "396634166", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_36.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_6();
    l0 = self.box_Brick_GateRaces_CreateLists_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|2088603824", "2088603824", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_6.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_13();
    l0 = self.box_Brick_GateRaces_CreateLists_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|629488112", "629488112", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_13.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_27();
    l0 = self.box_Brick_GateRaces_CreateLists_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|788003616", "788003616", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_27.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_19();
    l0 = self.box_Brick_GateRaces_CreateLists_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|997911055", "997911055", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_19.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_16();
    l0 = self.box_Brick_GateRaces_CreateLists_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|143373877", "143373877", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_16.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_17();
    l0 = self.box_Brick_GateRaces_CreateLists_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1282790539", "1282790539", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_17.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_12();
    l0 = self.box_Brick_GateRaces_CreateLists_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|528093505", "528093505", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_12.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_14();
    l0 = self.box_Brick_GateRaces_CreateLists_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|2044789418", "2044789418", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_14.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_9();
    l0 = self.box_Brick_GateRaces_CreateLists_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|968241433", "968241433", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_9.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_23();
    l0 = self.box_Brick_GateRaces_CreateLists_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|751158317", "751158317", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_23.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_22();
    l0 = self.box_Brick_GateRaces_CreateLists_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|547362907", "547362907", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_22.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_31();
    l0 = self.box_Brick_GateRaces_CreateLists_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|642261384", "642261384", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_31.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_7();
    l0 = self.box_Brick_GateRaces_CreateLists_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|161808210", "161808210", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_7.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_20();
    l0 = self.box_Brick_GateRaces_CreateLists_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1439421184", "1439421184", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_20.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_33();
    l0 = self.box_Brick_GateRaces_CreateLists_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1787559412", "1787559412", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_33.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_10();
    l0 = self.box_Brick_GateRaces_CreateLists_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1590079334", "1590079334", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_10.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_29();
    l0 = self.box_Brick_GateRaces_CreateLists_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|895673574", "895673574", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_29.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_5();
    l0 = self.box_Brick_GateRaces_CreateLists_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|2054825825", "2054825825", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_5.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_GateRaces_CreateLists_32();
    l0 = self.box_Brick_GateRaces_CreateLists_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1219192452", "1219192452", "UNI46_610_B10_Array", "box_OutputOrder_v2_11.Out", "box_Brick_GateRaces_CreateLists_32.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_24();
    l0 = self.box_MultipleAND_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1928467078", "1928467078", "UNI46_610_B10_Array", "box_OutputOrder_v2_25.Out", "box_MultipleAND_v2_24.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1785124828", "1785124828", "UNI46_610_B10_Array", "box_OutputOrder_v2_25.Out", "box_Print_v2_26.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_MultipleAND_v2_24()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_27()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210535763218487",
        -- EntityProximityMiss,
        [1] = "2104353340195369892",
        -- FX,
        [2] = "2101357119180651437",
        -- FX_Off,
        [3] = "2102487486686041452",
        -- Marker,
        [4] = "2103277524518723084",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_31()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210829741985940",
        -- EntityProximityMiss,
        [1] = "2104353413436306385",
        -- FX,
        [2] = "2101357231688662115",
        -- FX_Off,
        [3] = "2102487552729552269",
        -- Marker,
        [4] = "2103277886717845056",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_28()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210104311943157",
        -- EntityProximityMiss,
        [1] = "2104353317382550412",
        -- FX,
        [2] = "2101357090867002225",
        -- FX_Off,
        [3] = "2102487461541188960",
        -- Marker,
        [4] = "2103277484484091372",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_10()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210928759017637",
        -- EntityProximityMiss,
        [1] = "2104353425316672481",
        -- FX,
        [2] = "2102210928759017639",
        -- FX_Off,
        [3] = "2102487562948973973",
        -- Marker,
        [4] = "2103277908377230928",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_5()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2103568788260657962",
        -- EntityProximityMiss,
        [1] = "2104353431744443369",
        -- FX,
        [2] = "2103568788254366498",
        -- FX_Off,
        [3] = "2103568788262755116",
        -- Marker,
        [4] = "2103568788258560806",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_35()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210111391928315",
        -- EntityProximityMiss,
        [1] = "2104353320245162896",
        -- FX,
        [2] = "2102210111389831159",
        -- FX_Off,
        [3] = "2102487468541482338",
        -- Marker,
        [4] = "2103277488825196016",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_15()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210305445597185",
        -- EntityProximityMiss,
        [1] = "2104353325177664404",
        -- FX,
        [2] = "2102210305443500029",
        -- FX_Off,
        [3] = "2102487473390097764",
        -- Marker,
        [4] = "2103277493262769652",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_22()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210819644199056",
        -- EntityProximityMiss,
        [1] = "2104353407729955789",
        -- FX,
        [2] = "2101716314180571192",
        -- FX_Off,
        [3] = "2102487549965505931",
        -- Marker,
        [4] = "2103277865167511100",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_7()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210836658393240",
        -- EntityProximityMiss,
        [1] = "2104353416456205269",
        -- FX,
        [2] = "2101551111656722486",
        -- FX_Off,
        [3] = "2102487554818315663",
        -- Marker,
        [4] = "2103277890574507588",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_6()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210313928577037",
        -- EntityProximityMiss,
        [1] = "2104353331771110300",
        -- FX,
        [2] = "2102210313926479881",
        -- FX_Off,
        [3] = "2102487479522170216",
        -- Marker,
        [4] = "2103277502630747644",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_36()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210309950279687",
        -- EntityProximityMiss,
        [1] = "2104353328591827864",
        -- FX,
        [2] = "2102210309948182531",
        -- FX_Off,
        [3] = "2102487476818941286",
        -- Marker,
        [4] = "2103277499984141816",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_13()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210366554509331",
        -- EntityProximityMiss,
        [1] = "2104353334612751264",
        -- FX,
        [2] = "2102210366552412175",
        -- FX_Off,
        [3] = "2102487482363811178",
        -- Marker,
        [4] = "2103277507441614336",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_12()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210699406086248",
        -- EntityProximityMiss,
        [1] = "2104353362439861172",
        -- FX,
        [2] = "2101357144661048289",
        -- FX_Off,
        [3] = "2102487539825776003",
        -- Marker,
        [4] = "2103277814290603556",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_29()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102711722637793079",
        -- EntityProximityMiss,
        [1] = "2104353428212839397",
        -- FX,
        [2] = "2102711722646181699",
        -- FX_Off,
        [3] = "2102711722639890233",
        -- Marker,
        [4] = "2103277912200339028",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|726918187");
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
        [8] = "Array Finished",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_33()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210751526604938",
        -- EntityProximityMiss,
        [1] = "2104353422930113501",
        -- FX,
        [2] = "2102210751528702092",
        -- FX_Off,
        [3] = "2102487559526421907",
        -- Marker,
        [4] = "2103277904774323788",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_1()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102448083821406581",
        -- EntityProximityMiss,
        [1] = "2104353267155759975",
        -- FX,
        [2] = "2101548216423027632",
        -- FX_Off,
        [3] = "2102447879909033865",
        -- Marker,
        [4] = "2103277296279379388",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_32()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102711742424422237",
        -- FX,
        [2] = "2102711742428616543",
        -- FX_Off,
        [3] = "2103373701973019827",
        -- Marker,
        [4] = "2101342699513724730",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_3()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102448075642513777",
        -- EntityProximityMiss,
        [1] = "2104353273759691627",
        -- FX,
        [2] = "2101716295727730729",
        -- FX_Off,
        [3] = "2102447901985752993",
        -- Marker,
        [4] = "2103277302791036352",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_34()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102200524972498711",
        -- EntityProximityMiss,
        [1] = "2104353288508961655",
        -- FX,
        [2] = "2102200524970401555",
        -- FX_Off,
        [3] = "2102448972843990559",
        -- Marker,
        [4] = "2103277310774894024",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_21()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_30()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102200513366859537",
        -- EntityProximityMiss,
        [1] = "2104353284157371251",
        -- FX,
        [2] = "2102200513364762381",
        -- FX_Off,
        [3] = "2102448964728012317",
        -- Marker,
        [4] = "2103277356440378840",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_8()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102099676349089353",
        -- EntityProximityMiss,
        [1] = "2104353253807387491",
        -- FX,
        [2] = "2102200210737348140",
        -- FX_Off,
        [3] = "2102447483104806549",
        -- Marker,
        [4] = "2101357258165206169",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_9()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210719423402112",
        -- EntityProximityMiss,
        [1] = "2104353368662111164",
        -- FX,
        [2] = "2101550936928309056",
        -- FX_Off,
        [3] = "2102487544600991111",
        -- Marker,
        [4] = "2103277853033389616",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_20()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210871705997468",
        -- EntityProximityMiss,
        [1] = "2104353419954254809",
        -- FX,
        [2] = "2101551116094296132",
        -- FX_Off,
        [3] = "2102487556923856273",
        -- Marker,
        [4] = "2103277902016568904",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_14()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210711477293164",
        -- EntityProximityMiss,
        [1] = "2104353365644309432",
        -- FX,
        [2] = "2101728989088332818",
        -- FX_Off,
        [3] = "2102487542256375173",
        -- Marker,
        [4] = "2103277829291531816",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_19()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210547798773819",
        -- EntityProximityMiss,
        [1] = "2104353352174302120",
        -- FX,
        [2] = "2101550752613814054",
        -- FX_Off,
        [3] = "2102487489202623854",
        -- Marker,
        [4] = "2103277777670135312",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_16()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210554167824447",
        -- EntityProximityMiss,
        [1] = "2104353356186153900",
        -- FX,
        [2] = "2101716159383485497",
        -- FX_Off,
        [3] = "2102487494705550704",
        -- Marker,
        [4] = "2103277780400627220",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_18()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102200464041844486",
        -- EntityProximityMiss,
        [1] = "2104353280166490991",
        -- FX,
        [2] = "2101343295069239543",
        -- FX_Off,
        [3] = "2102448960024100379",
        -- Marker,
        [4] = "2103277306297474500",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_4()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102200532176215835",
        -- EntityProximityMiss,
        [1] = "2104353295626695547",
        -- FX,
        [2] = "2102200532178312989",
        -- FX_Off,
        [3] = "2102448977835212321",
        -- Marker,
        [4] = "2103277335462567372",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1800514909");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 32,
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
                [4] = self.f_box_OutputOrder_v2_11_Out_4,
                [5] = self.f_box_OutputOrder_v2_11_Out_5,
                [6] = self.f_box_OutputOrder_v2_11_Out_6,
                [7] = self.f_box_OutputOrder_v2_11_Out_7,
                [8] = self.f_box_OutputOrder_v2_11_Out_8,
                [9] = self.f_box_OutputOrder_v2_11_Out_9,
                [10] = self.f_box_OutputOrder_v2_11_Out_10,
                [11] = self.f_box_OutputOrder_v2_11_Out_11,
                [12] = self.f_box_OutputOrder_v2_11_Out_12,
                [13] = self.f_box_OutputOrder_v2_11_Out_13,
                [14] = self.f_box_OutputOrder_v2_11_Out_14,
                [15] = self.f_box_OutputOrder_v2_11_Out_15,
                [16] = self.f_box_OutputOrder_v2_11_Out_16,
                [17] = self.f_box_OutputOrder_v2_11_Out_17,
                [18] = self.f_box_OutputOrder_v2_11_Out_18,
                [19] = self.f_box_OutputOrder_v2_11_Out_19,
                [20] = self.f_box_OutputOrder_v2_11_Out_20,
                [21] = self.f_box_OutputOrder_v2_11_Out_21,
                [22] = self.f_box_OutputOrder_v2_11_Out_22,
                [23] = self.f_box_OutputOrder_v2_11_Out_23,
                [24] = self.f_box_OutputOrder_v2_11_Out_24,
                [25] = self.f_box_OutputOrder_v2_11_Out_25,
                [26] = self.f_box_OutputOrder_v2_11_Out_26,
                [27] = self.f_box_OutputOrder_v2_11_Out_27,
                [28] = self.f_box_OutputOrder_v2_11_Out_28,
                [29] = self.f_box_OutputOrder_v2_11_Out_29,
                [30] = self.f_box_OutputOrder_v2_11_Out_30,
                [31] = self.f_box_OutputOrder_v2_11_Out_31,
            },
            count = 32,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_610\\UNI46_610_B10.domino|@UNI46_610_B10_Array|1827427323");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_2()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102200298131955279",
        -- EntityProximityMiss,
        [1] = "2104353306114552712",
        -- FX,
        [2] = "2102200302361911014",
        -- FX_Off,
        [3] = "2102448990403444259",
        -- Marker,
        [4] = "2103277342993440212",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_17()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210565674897480",
        -- EntityProximityMiss,
        [1] = "2104353359086515120",
        -- FX,
        [2] = "2102210593892077642",
        -- FX_Off,
        [3] = "2102487497347962226",
        -- Marker,
        [4] = "2103277782707494424",
    };
    return params;
end;

function export:OnEnter_box_Brick_GateRaces_CreateLists_23()
    local params;
    params = {
        -- EntityProximity,
        [0] = "2102210619961774163",
        -- EntityProximityMiss,
        [1] = "2104353372193715136",
        -- FX,
        [2] = "2102210619963871317",
        -- FX_Off,
        [3] = "2102487547685901705",
        -- Marker,
        [4] = "2103277831898291756",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
