LUAC,8  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d1/d1_compound_01.domino
-- User graph: D1_Compound_01_Cinematic
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
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Outposts/D1/D1_Compound_01.globals.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/D1/D1_Compound_01.D1_Compound_01_Cinematic.debug.lua")] = {
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
    self._name = "D1_Compound_01_Cinematic";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic";
    self.Out = DummyFunction;
    self.box_Brick_Cult_Location_Cinematic_V2_Main_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Cult_Location_Cinematic_V2_Main.debug.lua");
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Cult_Location_Cinematic_V2_Main_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|487105962");
    l0:SetConnections({
        -- FadedOut,
        [0] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_1_FadedOut,
        -- Out,
        [1] = self.f_box_Brick_Cult_Location_Cinematic_V2_Main_1_Out,
    });
    self.box_CultLocation_Cleanup_Manager_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.CultLocation_Cleanup_Manager.debug.lua");
    l0 = self.box_CultLocation_Cleanup_Manager_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CultLocation_Cleanup_Manager_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|695937166");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|38073223", "38073223", "D1_Compound_01_Cinematic", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_1_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_CultLocation_Cleanup_Manager_4();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_1;
    l1 = self.box_CultLocation_Cleanup_Manager_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|497054816", "497054816", "D1_Compound_01_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_1.FadedOut", "box_CultLocation_Cleanup_Manager_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Brick_Cult_Location_Cinematic_V2_Main_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|145851038", "145851038", "D1_Compound_01_Cinematic", "box_Brick_Cult_Location_Cinematic_V2_Main_1.Out", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|1839820411", "1839820411", "D1_Compound_01_Cinematic", "box_OutputOrder_v2_3.Out", "box_Print_v2_2.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_1();
    l0 = self.box_Brick_Cult_Location_Cinematic_V2_Main_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|103809779", "103809779", "D1_Compound_01_Cinematic", "box_OutputOrder_v2_3.Out", "box_Brick_Cult_Location_Cinematic_V2_Main_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|416132324");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_Cult_Location_Cinematic_V2_Main_1()
    local params;
    params = {
        -- bUseFadeInAtEnd,
        [0] = false,
        -- CS_CINEMA_Outpost_Animals,
        [1] = "2097773559832122304",
        -- eSceneEntity,
        [2] = "2099420830011234946",
        -- IsFaithCelebration,
        [3] = false,
        -- sSequenceFile,
        [4] = "Sequences/zeta_main/d1/johnseedranch_celebration.seq",
        -- TeleportDestination,
        [5] = "2099724073452982245",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|578436126");
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
        [8] = "Done_Cinematic",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_CultLocation_Cleanup_Manager_4()
    local params;
    params = {
        -- Global_Veh_List,
        [0] = PersistentGlobals.D1_Compound_01.Veh_List,
        -- Vehicle_Group,
        [2] = "#3CCCEE47",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D1\\D1_Compound_01.domino|@D1_Compound_01_Cinematic|1069292483");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
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
