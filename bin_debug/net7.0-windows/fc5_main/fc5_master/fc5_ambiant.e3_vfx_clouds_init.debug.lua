LUAC(x  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_master/fc5_ambiant.domino
-- User graph: E3_VFX_Clouds_INIT
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
        cboxRes:RegisterBox("Domino/System/CompareStrings.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.FC5_Ambiant = nil;
    Globals.FC5_Ambiant = {
        Church_Bell_sound_Hour_Check = 0,
        Church_Bell_Minute_Check = 0,
        gPlayerGroup = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Master/FC5_Ambiant.E3_VFX_Clouds_INIT.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CompareStrings.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_contains_B",
                delayed = false,
            },
            [1] = {
                name = "A_eq_B",
                delayed = false,
            },
            [2] = {
                name = "A_ncontains_B",
                delayed = false,
            },
            [3] = {
                name = "A_neq_B",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "A",
                type = "string",
            },
            [1] = {
                name = "B",
                type = "string",
            },
            [2] = {
                name = "IgnoreCase",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
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
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "E3_VFX_Clouds_INIT";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT";
    self.eVehicleID = nil;
    self.sVehicleType = "";
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|878057571");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_VehicleListener_v3_2 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|962972065");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_2_Enabled,
        -- OnAllStanding,
        [3] = self.f_box_VehicleListener_v3_2_OnAllStanding,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1795438960");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1992282356");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1160547715", "1160547715", "E3_VFX_Clouds_INIT", "In", "box_MultipleOR_7.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1283939060", "1283939060", "E3_VFX_Clouds_INIT", "box_Simple_Node_12.Out", "box_Delay_v5_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Compare_Strings_5_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1760616182", "1760616182", "E3_VFX_Clouds_INIT", "box_Compare_Strings_5.A_eq_B", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Strings_5_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_6();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1608037869", "1608037869", "E3_VFX_Clouds_INIT", "box_Compare_Strings_5.A_neq_B", "box_Compare_Strings_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Strings_6_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|113965489", "113965489", "E3_VFX_Clouds_INIT", "box_Compare_Strings_6.A_eq_B", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Strings_6_A_neq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|81734971", "81734971", "E3_VFX_Clouds_INIT", "box_Compare_Strings_6.A_neq_B", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_1();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|2127150192", "2127150192", "E3_VFX_Clouds_INIT", "box_MultipleOR_7.Out", "box_GetPawnVehicleInfo_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_3();
    l0 = self.box_VehicleListener_v3_2;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|2135277807", "2135277807", "E3_VFX_Clouds_INIT", "box_VehicleListener_v3_2.Enabled", "box_MissionBlockLayer_3.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_2_OnAllStanding()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_3();
    l0 = self.box_VehicleListener_v3_2;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1156905755", "1156905755", "E3_VFX_Clouds_INIT", "box_VehicleListener_v3_2.OnAllStanding", "box_MissionBlockLayer_3.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_3_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|286162840", "286162840", "E3_VFX_Clouds_INIT", "box_MissionBlockLayer_3.Activated", "box_Print_v2_9.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_3_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1911836880", "1911836880", "E3_VFX_Clouds_INIT", "box_MissionBlockLayer_3.Deactivated", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_4;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1024852618", "1024852618", "E3_VFX_Clouds_INIT", "box_Delay_v5_4.TimeElapsed", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_2();
    l0 = self.box_MultipleOR_8;
    l1 = self.box_VehicleListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|289732962", "289732962", "E3_VFX_Clouds_INIT", "box_MultipleOR_8.Out", "box_VehicleListener_v3_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|90282777", "90282777", "E3_VFX_Clouds_INIT", "box_OutputOrder_v2_11.Out", "box_Print_v2_10.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|2033778964", "2033778964", "E3_VFX_Clouds_INIT", "box_OutputOrder_v2_11.Out", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_1_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_1_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Strings_5();
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|271422891", "271422891", "E3_VFX_Clouds_INIT", "box_GetPawnVehicleInfo_1.InVehicle", "box_Compare_Strings_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_1_NotInVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_1_NotInVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_12();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|407027749", "407027749", "E3_VFX_Clouds_INIT", "box_GetPawnVehicleInfo_1.NotInVehicle", "box_Simple_Node_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_1_Out()
    self:OnExit_box_GetPawnVehicleInfo_1_Out();
end;

function export:OnEnter_box_Simple_Node_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|@NotInflyingVehicle");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_12_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|187053722");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_5_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_5_A_neq_B,
    });
    params = {
        -- A,
        [0] = self.sVehicleType,
        -- B,
        [1] = "Plane",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|656922368");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "E3_CLOUDS_VFX LAYER DEACTIVATED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Strings_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareStrings.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Strings_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|709893659");
    l0:SetConnections({
        -- A_eq_B,
        [1] = self.f_box_Compare_Strings_6_A_eq_B,
        -- A_neq_B,
        [3] = self.f_box_Compare_Strings_6_A_neq_B,
    });
    params = {
        -- A,
        [0] = self.sVehicleType,
        -- B,
        [1] = "Helicopter",
        -- IgnoreCase,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_2()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = self.eVehicleID,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1183413865");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_3_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_3_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160220716212196",
        -- missionLayerId,
        [1] = "36167419970953217",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|1291848960");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "E3_CLOUDS_VFX LAYER ACTIVATED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|2052960350");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Ambiant.domino|@E3_VFX_Clouds_INIT|2089223434");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_1_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_1_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_1_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicleID = l0:GetDataOutValue(2);
    self.sVehicleType = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_1_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicleID = l0:GetDataOutValue(2);
    self.sVehicleType = l0:GetDataOutValue(3);
end;

function export:OnExit_box_GetPawnVehicleInfo_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicleID = l0:GetDataOutValue(2);
    self.sVehicleType = l0:GetDataOutValue(3);
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
