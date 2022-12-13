LUAC�: -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_monsterclosets.domino
-- User graph: MIS_310_MonsterClosets_Main
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
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Cage.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_310_MonsterClosets = nil;
    Globals.MIS_310_MonsterClosets = {
        MC_Occupation = 0,
        MC_Occupied_N = false,
        MC_Occupied_NE = false,
        MC_Occupied_NW = false,
        MC_Occupied_S = false,
        MC_Occupied_SE = false,
        MC_Occupied_SW = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Cage.debug.lua")] = {
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
                name = "Empty",
                delayed = false,
            },
            [1] = {
                name = "Occupied",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Gate",
                type = "entity",
            },
            [1] = {
                name = "Gate_Offset_X",
                type = "float",
            },
            [2] = {
                name = "Gate_Offset_Y",
                type = "float",
            },
            [3] = {
                name = "Navlink",
                type = "entity",
            },
            [4] = {
                name = "Trigger_Exit",
                type = "entity",
            },
            [5] = {
                name = "Trigger_Inside",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_310_MonsterClosets_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main";
    self.box_MessageListener_v3_8 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|118019786");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_8_Received,
    });
    self.box_MIS_310_MonsterClosets_Cage_5 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Cage.debug.lua");
    l0 = self.box_MIS_310_MonsterClosets_Cage_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_MonsterClosets_Cage_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|284267369");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_MIS_310_MonsterClosets_Cage_5_Empty,
        -- Occupied,
        [1] = self.f_box_MIS_310_MonsterClosets_Cage_5_Occupied,
    });
    self.box_MIS_310_MonsterClosets_Cage_6 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Cage.debug.lua");
    l0 = self.box_MIS_310_MonsterClosets_Cage_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_MonsterClosets_Cage_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|325724527");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_MIS_310_MonsterClosets_Cage_6_Empty,
        -- Occupied,
        [1] = self.f_box_MIS_310_MonsterClosets_Cage_6_Occupied,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|389806552");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|458002496");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_MIS_310_MonsterClosets_Cage_3 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Cage.debug.lua");
    l0 = self.box_MIS_310_MonsterClosets_Cage_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_MonsterClosets_Cage_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|502137899");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_MIS_310_MonsterClosets_Cage_3_Empty,
        -- Occupied,
        [1] = self.f_box_MIS_310_MonsterClosets_Cage_3_Occupied,
    });
    self.box_MessageListener_v3_9 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|647611096");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_9_Received,
    });
    self.box_MIS_310_MonsterClosets_Cage_2 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Cage.debug.lua");
    l0 = self.box_MIS_310_MonsterClosets_Cage_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_MonsterClosets_Cage_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|764452845");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_MIS_310_MonsterClosets_Cage_2_Empty,
        -- Occupied,
        [1] = self.f_box_MIS_310_MonsterClosets_Cage_2_Occupied,
    });
    self.box_MIS_310_MonsterClosets_Cage_4 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Cage.debug.lua");
    l0 = self.box_MIS_310_MonsterClosets_Cage_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_MonsterClosets_Cage_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|778466598");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_MIS_310_MonsterClosets_Cage_4_Empty,
        -- Occupied,
        [1] = self.f_box_MIS_310_MonsterClosets_Cage_4_Occupied,
    });
    self.box_MessageListener_v3_12 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1061744649");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_12_Received,
    });
    self.box_MessageListener_v3_20 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1243814297");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_20_Received,
    });
    self.box_ConsoleCommand_v3_39 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1637420833");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_39_Execute,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1811622655");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1874253776");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_MIS_310_MonsterClosets_Cage_1 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_MonsterClosets.MIS_310_MonsterClosets_Cage.debug.lua");
    l0 = self.box_MIS_310_MonsterClosets_Cage_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_MonsterClosets_Cage_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2088963687");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_MIS_310_MonsterClosets_Cage_1_Empty,
        -- Occupied,
        [1] = self.f_box_MIS_310_MonsterClosets_Cage_1_Occupied,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ConsoleCommand_v3_39();
    l0 = self.box_ConsoleCommand_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1663499946", "1663499946", "MIS_310_MonsterClosets_Main", "In", "box_ConsoleCommand_v3_39.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|494048427", "494048427", "MIS_310_MonsterClosets_Main", "In", "box_OutputOrder_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_16_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_16_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1171184567", "1171184567", "MIS_310_MonsterClosets_Main", "box_SetBoolean_v2_16.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_8();
    l0 = self.box_MessageListener_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1082796634", "1082796634", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_10.Out", "box_MessageListener_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_9();
    l0 = self.box_MessageListener_v3_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1583760091", "1583760091", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_10.Out", "box_MessageListener_v3_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_12();
    l0 = self.box_MessageListener_v3_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|851419816", "851419816", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_10.Out", "box_MessageListener_v3_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_20();
    l0 = self.box_MessageListener_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2092223162", "2092223162", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_10.Out", "box_MessageListener_v3_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MessageListener_v3_8_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_MessageListener_v3_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|400243857", "400243857", "MIS_310_MonsterClosets_Main", "box_MessageListener_v3_8.Received", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_5_Empty()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_16();
    l0 = self.box_MIS_310_MonsterClosets_Cage_5;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|375213412", "375213412", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_5.Empty", "box_SetBoolean_v2_16.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_5_Occupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_16();
    l0 = self.box_MIS_310_MonsterClosets_Cage_5;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|307261153", "307261153", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_5.Occupied", "box_SetBoolean_v2_16.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_32();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2081539566", "2081539566", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_34.Out", "box_Print_v2_32.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_38();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1391970299", "1391970299", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_34.Out", "box_Print_v2_38.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|137912696", "137912696", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_34.Out", "box_Print_v2_37.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_33();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1119220221", "1119220221", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_34.Out", "box_Print_v2_33.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_35();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|581654217", "581654217", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_34.Out", "box_Print_v2_35.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_36();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1392106898", "1392106898", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_34.Out", "box_Print_v2_36.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_6_Empty()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_22();
    l0 = self.box_MIS_310_MonsterClosets_Cage_6;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2022029774", "2022029774", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_6.Empty", "box_SetBoolean_v2_22.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_6_Occupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_22();
    l0 = self.box_MIS_310_MonsterClosets_Cage_6;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|996277833", "996277833", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_6.Occupied", "box_SetBoolean_v2_22.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_2();
    l0 = self.box_MultipleOR_21;
    l1 = self.box_MIS_310_MonsterClosets_Cage_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2001474539", "2001474539", "MIS_310_MonsterClosets_Main", "box_MultipleOR_21.Out", "box_MIS_310_MonsterClosets_Cage_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_23();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|894439880", "894439880", "MIS_310_MonsterClosets_Main", "box_MultipleOR_15.Out", "box_Compare_Boolean_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_3_Empty()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_18();
    l0 = self.box_MIS_310_MonsterClosets_Cage_3;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|87442230", "87442230", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_3.Empty", "box_SetBoolean_v2_18.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_3_Occupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_18();
    l0 = self.box_MIS_310_MonsterClosets_Cage_3;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1014811249", "1014811249", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_3.Occupied", "box_SetBoolean_v2_18.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_28_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_30();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|507701675", "507701675", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_28.A_is_False", "box_BroadcastMessage_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_28_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1479515110", "1479515110", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_28.A_is_True", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_SetBoolean_v2_19_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|622176080", "622176080", "MIS_310_MonsterClosets_Main", "box_SetBoolean_v2_19.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_MessageListener_v3_9_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_MessageListener_v3_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|798463321", "798463321", "MIS_310_MonsterClosets_Main", "box_MessageListener_v3_9.Received", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_14_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2109125317", "2109125317", "MIS_310_MonsterClosets_Main", "box_SetBoolean_v2_14.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_2_Empty()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_19();
    l0 = self.box_MIS_310_MonsterClosets_Cage_2;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|471647941", "471647941", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_2.Empty", "box_SetBoolean_v2_19.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_2_Occupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_19();
    l0 = self.box_MIS_310_MonsterClosets_Cage_2;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|328820603", "328820603", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_2.Occupied", "box_SetBoolean_v2_19.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_24_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_25();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2052031440", "2052031440", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_24.A_is_False", "box_Compare_Boolean_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_24_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|435552151", "435552151", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_24.A_is_True", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_4_Empty()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_14();
    l0 = self.box_MIS_310_MonsterClosets_Cage_4;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|878906731", "878906731", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_4.Empty", "box_SetBoolean_v2_14.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_4_Occupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_14();
    l0 = self.box_MIS_310_MonsterClosets_Cage_4;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|384707502", "384707502", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_4.Occupied", "box_SetBoolean_v2_14.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_26_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_27();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1914178529", "1914178529", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_26.A_is_False", "box_Compare_Boolean_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_26_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|587096417", "587096417", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_26.A_is_True", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Compare_Boolean_25_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_26();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|619020709", "619020709", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_25.A_is_False", "box_Compare_Boolean_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_25_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|174863200", "174863200", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_25.A_is_True", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MessageListener_v3_12_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_12;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1547397600", "1547397600", "MIS_310_MonsterClosets_Main", "box_MessageListener_v3_12.Received", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_23_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_24();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1054307005", "1054307005", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_23.A_is_False", "box_Compare_Boolean_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_23_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1522881885", "1522881885", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_23.A_is_True", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_20_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_20;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1183947586", "1183947586", "MIS_310_MonsterClosets_Main", "box_MessageListener_v3_20.Received", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_27_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_28();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1211770973", "1211770973", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_27.A_is_False", "box_Compare_Boolean_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_27_A_is_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1882254237", "1882254237", "MIS_310_MonsterClosets_Main", "box_Compare_Boolean_27.A_is_True", "box_MultipleOR_31.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_SetBoolean_v2_18_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1661773661", "1661773661", "MIS_310_MonsterClosets_Main", "box_SetBoolean_v2_18.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ConsoleCommand_v3_39_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_ConsoleCommand_v3_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1647537800", "1647537800", "MIS_310_MonsterClosets_Main", "box_ConsoleCommand_v3_39.Execute", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_1();
    l0 = self.box_MIS_310_MonsterClosets_Cage_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|991311681", "991311681", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_11.Out", "box_MIS_310_MonsterClosets_Cage_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_5();
    l0 = self.box_MIS_310_MonsterClosets_Cage_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1389363032", "1389363032", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_11.Out", "box_MIS_310_MonsterClosets_Cage_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_4();
    l0 = self.box_MIS_310_MonsterClosets_Cage_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|298230102", "298230102", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_11.Out", "box_MIS_310_MonsterClosets_Cage_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_3();
    l0 = self.box_MIS_310_MonsterClosets_Cage_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1054744277", "1054744277", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_11.Out", "box_MIS_310_MonsterClosets_Cage_3.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_2();
    l0 = self.box_MIS_310_MonsterClosets_Cage_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|217778417", "217778417", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_11.Out", "box_MIS_310_MonsterClosets_Cage_2.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_6();
    l0 = self.box_MIS_310_MonsterClosets_Cage_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|143792168", "143792168", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_11.Out", "box_MIS_310_MonsterClosets_Cage_6.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetBoolean_v2_17_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|452191988", "452191988", "MIS_310_MonsterClosets_Main", "box_SetBoolean_v2_17.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetBoolean_v2_22_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_22_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2135036317", "2135036317", "MIS_310_MonsterClosets_Main", "box_SetBoolean_v2_22.Out", "box_MultipleOR_15.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_5();
    l0 = self.box_MultipleOR_13;
    l1 = self.box_MIS_310_MonsterClosets_Cage_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1413523749", "1413523749", "MIS_310_MonsterClosets_Main", "box_MultipleOR_13.Out", "box_MIS_310_MonsterClosets_Cage_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BroadcastMessage_29();
    l0 = self.box_MultipleOR_31;
    l1 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1403363865", "1403363865", "MIS_310_MonsterClosets_Main", "box_MultipleOR_31.Out", "box_BroadcastMessage_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_1();
    l0 = self.box_MIS_310_MonsterClosets_Cage_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|642742951", "642742951", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_7.Out", "box_MIS_310_MonsterClosets_Cage_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|434666936", "434666936", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_7.Out", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_7_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_4();
    l0 = self.box_MIS_310_MonsterClosets_Cage_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2005684917", "2005684917", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_7.Out", "box_MIS_310_MonsterClosets_Cage_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_3();
    l0 = self.box_MIS_310_MonsterClosets_Cage_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|727112120", "727112120", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_7.Out", "box_MIS_310_MonsterClosets_Cage_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_4()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1201823118", "1201823118", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_7.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_7_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_MonsterClosets_Cage_6();
    l0 = self.box_MIS_310_MonsterClosets_Cage_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|879433548", "879433548", "MIS_310_MonsterClosets_Main", "box_OutputOrder_v2_7.Out", "box_MIS_310_MonsterClosets_Cage_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_1_Empty()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_17();
    l0 = self.box_MIS_310_MonsterClosets_Cage_1;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2137413707", "2137413707", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_1.Empty", "box_SetBoolean_v2_17.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_MonsterClosets_Cage_1_Occupied()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_17();
    l0 = self.box_MIS_310_MonsterClosets_Cage_1;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|573018121", "573018121", "MIS_310_MonsterClosets_Main", "box_MIS_310_MonsterClosets_Cage_1.Occupied", "box_SetBoolean_v2_17.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_SetBoolean_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|11948099");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|72068732");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
                [3] = self.f_box_OutputOrder_v2_10_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_enable_monsterclosets",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_MonsterClosets_Cage_5()
    local params;
    params = {
        -- Gate,
        [0] = "2107824769561798653",
        -- Gate_Offset_X,
        [1] = -1.1,
        -- Gate_Offset_Y,
        [2] = 1.77,
        -- Navlink,
        [3] = "2108407315548874196",
        -- Trigger_Exit,
        [4] = "2108417816718740552",
        -- Trigger_Inside,
        [5] = "2108915524384605549",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|285427810");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
                [3] = self.f_box_OutputOrder_v2_34_Out_3,
                [4] = self.f_box_OutputOrder_v2_34_Out_4,
                [5] = self.f_box_OutputOrder_v2_34_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_MonsterClosets_Cage_6()
    local params;
    params = {
        -- Gate,
        [0] = "2107812750211174483",
        -- Gate_Offset_X,
        [1] = 0.8,
        -- Gate_Offset_Y,
        [2] = 2.06,
        -- Navlink,
        [3] = "2108420904462619501",
        -- Trigger_Exit,
        [4] = "2108420904460522345",
        -- Trigger_Inside,
        [5] = "2108915539811255698",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|474226676");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_SE,
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Occupation SE = ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_MonsterClosets_Cage_3()
    local params;
    params = {
        -- Gate,
        [0] = "2107712485768312969",
        -- Gate_Offset_X,
        [1] = -2,
        -- Gate_Offset_Y,
        [2] = -0.11,
        -- Navlink,
        [3] = "2108420864337810269",
        -- Trigger_Exit,
        [4] = "2108420864335713113",
        -- Trigger_Inside,
        [5] = "2108915555019802006",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|547199243");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_28_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_28_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_SW,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|617728181");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_19_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_disable_monsterclosets",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|704813178");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_MonsterClosets_Cage_2()
    local params;
    params = {
        -- Gate,
        [0] = "2107824851459769839",
        -- Gate_Offset_X,
        [1] = -1.3,
        -- Gate_Offset_Y,
        [2] = 1.82,
        -- Navlink,
        [3] = "2108420883577082727",
        -- Trigger_Exit,
        [4] = "2108420883570791263",
        -- Trigger_Inside,
        [5] = "2108915550122952084",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|765509136");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_24_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_24_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_NE,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_MonsterClosets_Cage_4()
    local params;
    params = {
        -- Gate,
        [0] = "2107812080252889018",
        -- Gate_Offset_X,
        [1] = -1.1,
        -- Gate_Offset_Y,
        [2] = -1.98,
        -- Navlink,
        [3] = "2108420817317565248",
        -- Trigger_Exit,
        [4] = "2108420817315468092",
        -- Trigger_Inside,
        [5] = "2108915461677661020",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|796746864");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_26_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_26_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_S,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|834119606");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_25_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_25_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_NW,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|901288897");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_SW,
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Occupation SW = ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|921814707");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "mis310_mc_occupied",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_enable_SW",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1163729431");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_23_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_23_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_N,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_enable_NE",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1319102660");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_N,
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Occupation N = ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1372461303");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_NE,
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Occupation NE = ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1377632687");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_27_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_27_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_SE,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1392565516");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_S,
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Occupation S = ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1460501138");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_39()
    local params;
    params = {
        -- Loop,
        [0] = false,
        -- Name,
        [1] = "dbg_checkoccupation",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1644205422");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "mis310_mc_empty",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1721001600");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
                [3] = self.f_box_OutputOrder_v2_11_Out_3,
                [4] = self.f_box_OutputOrder_v2_11_Out_4,
                [5] = self.f_box_OutputOrder_v2_11_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1724725726");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1754188658");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|1780742242");
    l0:SetConnections({
    });
    params = {
        -- bool,
        [0] = Globals.MIS_310_MonsterClosets.MC_Occupied_NW,
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Occupation NW = ",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_MonsterClosets.domino|@MIS_310_MonsterClosets_Main|2019698670");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
                [2] = self.f_box_OutputOrder_v2_7_Out_2,
                [3] = self.f_box_OutputOrder_v2_7_Out_3,
                [4] = self.f_box_OutputOrder_v2_7_Out_4,
                [5] = self.f_box_OutputOrder_v2_7_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_MonsterClosets_Cage_1()
    local params;
    params = {
        -- Gate,
        [0] = "2107812164654859716",
        -- Gate_Offset_X,
        [1] = -2.2,
        -- Gate_Offset_Y,
        [2] = 0.31,
        -- Navlink,
        [3] = "2108503777030967174",
        -- Trigger_Exit,
        [4] = "2108503648561532762",
        -- Trigger_Inside,
        [5] = "2108915534723564944",
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_16_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_310_MonsterClosets.MC_Occupied_SW = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_310_MonsterClosets.MC_Occupied_NE = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_310_MonsterClosets.MC_Occupied_NW = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_310_MonsterClosets.MC_Occupied_N = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_310_MonsterClosets.MC_Occupied_S = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_22_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.MIS_310_MonsterClosets.MC_Occupied_SE = l0:GetDataOutValue(0);
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
