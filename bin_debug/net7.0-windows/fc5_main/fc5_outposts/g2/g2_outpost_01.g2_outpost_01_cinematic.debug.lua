LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/g2/g2_outpost_01.domino
-- User graph: G2_Outpost_01_Cinematic
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/G2/G2_Outpost_01.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.G2_Outpost_01 = nil;
    Globals.G2_Outpost_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/G2/G2_Outpost_01.G2_Outpost_01_Cinematic.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FadedOut",
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
                name = "bUseFadeInAtEnd",
                type = "bool",
            },
            [1] = {
                name = "CS_CINEMA_Outpost_Animals",
                type = "entity",
            },
            [2] = {
                name = "eSceneEntity",
                type = "entity",
            },
            [3] = {
                name = "IsFaithCelebration",
                type = "bool",
            },
            [4] = {
                name = "sSequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "TeleportDestination",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua")] = {
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
            [0] = {
                name = "Global_Veh_List",
                type = "list",
            },
            [1] = {
                name = "Other_Group",
                type = "group",
            },
            [2] = {
                name = "Vehicle_Group",
                type = "group",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/AI/AgentGroupModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AddGroup",
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
                name = "AnimalGroup",
                type = "group",
            },
            [1] = {
                name = "PawnGroup",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    self._name = "G2_Outpost_01_Cinematic";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic";
    self.Out = DummyFunction;
    self.box_MultipleAND_v2_10 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1204160496");
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
        [0] = self.f_box_MultipleAND_v2_10_Out,
    });
    self.box_CultLocation_Cleanup_Manager_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua");
    l0 = self.box_CultLocation_Cleanup_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Cleanup_Manager_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1368511916");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_12 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1650599132");
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
        [0] = self.f_box_MultipleAND_v2_12_Out,
    });
    self.box_Brick_Cult_Location_Cinematic_V2_Main_16 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Cinematic_V2_Main_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1679375547");
    l0:SetConnections({
        -- FadedOut,
        [0] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_16_FadedOut,
        -- Out,
        [1] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_16_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|758165658", "758165658", "G2_Outpost_01_Cinematic", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_9();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|132383645", "132383645", "G2_Outpost_01_Cinematic", "box_OutputOrder_v2_15.Out", "box_SetContextualStrategy_9.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_11();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|949443747", "949443747", "G2_Outpost_01_Cinematic", "box_OutputOrder_v2_15.Out", "box_SetContextualStrategy_11.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|691056196", "691056196", "G2_Outpost_01_Cinematic", "box_SetContextualStrategy_9.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SetContextualStrategy_8_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_10();
    l0 = self.box_MultipleAND_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|222961734", "222961734", "G2_Outpost_01_Cinematic", "box_SetContextualStrategy_8.Out", "box_MultipleAND_v2_10.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_AgentGroupModifier_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|531902126", "531902126", "G2_Outpost_01_Cinematic", "box_AgentGroupModifier_7.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_12();
    l0 = self.box_MultipleAND_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|801604496", "801604496", "G2_Outpost_01_Cinematic", "box_SetContextualStrategy_11.Out", "box_MultipleAND_v2_12.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_SetContextualStrategy_13_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_10();
    l0 = self.box_MultipleAND_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|582710898", "582710898", "G2_Outpost_01_Cinematic", "box_SetContextualStrategy_13.Out", "box_MultipleAND_v2_10.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MissionBlockLayer_5_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_7();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|2026126109", "2026126109", "G2_Outpost_01_Cinematic", "box_MissionBlockLayer_5.Disabled", "box_AgentGroupModifier_7.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_4();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1729103490", "1729103490", "G2_Outpost_01_Cinematic", "box_OutputOrder_v2_2.Out", "box_MissionBlockLayer_4.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|486875498", "486875498", "G2_Outpost_01_Cinematic", "box_OutputOrder_v2_2.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = self.box_MultipleAND_v2_10;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1446786109", "1446786109", "G2_Outpost_01_Cinematic", "box_MultipleAND_v2_10.Out", "box_ActivityEnd_6.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_13();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1051645063", "1051645063", "G2_Outpost_01_Cinematic", "box_OutputOrder_v2_14.Out", "box_SetContextualStrategy_13.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_8();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|2110047803", "2110047803", "G2_Outpost_01_Cinematic", "box_OutputOrder_v2_14.Out", "box_SetContextualStrategy_8.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_16();
    l0 = self.box_MultipleAND_v2_12;
    l1 = self.box_Brick_Cult_Location_Cinematic_V2_Main_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1512318339", "1512318339", "G2_Outpost_01_Cinematic", "box_MultipleAND_v2_12.Out", "box_Brick_Cult_Location_Cinematic_V2_Main_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_4_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_5();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1856216557", "1856216557", "G2_Outpost_01_Cinematic", "box_MissionBlockLayer_4.Disabled", "box_MissionBlockLayer_5.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_16_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Cleanup_Manager_3();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_16;
    l1 = self.box_CultLocation_Cleanup_Manager_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1800524303", "1800524303", "G2_Outpost_01_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_16.FadedOut", "box_CultLocation_Cleanup_Manager_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|2082233212", "2082233212", "G2_Outpost_01_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_16.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|105497242");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|208813264");
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

function export:OnEnter_box_SetContextualStrategy_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|502518352");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_9_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103955162639926998",
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|596536649");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_8_Out,
    });
    params = {
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|610383892");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_7_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A8D86C48",
        -- PawnGroup,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|644033860");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_11_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103955161276778196",
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|880115601");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_13_Out,
    });
    params = {
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|986316592");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_5_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "36167344288492806",
        -- missionLayerId,
        [1] = "36167417712187083",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1010990278");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "cyan",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "G2 Cult Location 01 - Cinematic Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1015905684");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_10()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Cleanup_Manager_3()
    local params;
    params = {
        -- Global_Veh_List,
        [0] = Globals.G2_Outpost_01.Veh_List,
        -- Vehicle_Group,
        [2] = "#7EDF03D3",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1570444002");
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

function export:OnEnter_box_MultipleAND_v2_12()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@G2_Outpost_01_Cinematic|1653754259");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_4_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "36167344288492806",
        -- missionLayerId,
        [1] = "27160218456874106",
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_16()
    local params;
    params = {
        -- bUseFadeInAtEnd,
        [0] = false,
        -- CS_CINEMA_Outpost_Animals,
        [1] = "2095826765086723235",
        -- eSceneEntity,
        [2] = "2100955837959780772",
        -- IsFaithCelebration,
        [3] = false,
        -- sSequenceFile,
        [4] = "Sequences/zeta_main/bearjaw_celebration/bearjaw_celebration.seq",
        -- TeleportDestination,
        [5] = "2095812220934950490",
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
