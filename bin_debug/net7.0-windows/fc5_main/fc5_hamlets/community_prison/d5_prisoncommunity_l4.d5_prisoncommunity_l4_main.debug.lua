LUAC�%  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_hamlets/community_prison/d5_prisoncommunity_l4.domino
-- User graph: D5_PrisonCommunity_L4_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_FaithPrison.Lib_FaithPrison_Doors.debug.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Hamlets/Community_Prison/D5_PrisonCommunity_L4.D5_PrisonCommunity_L4_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_FaithPrison.Lib_FaithPrison_Doors.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Unlock",
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
                name = "CentralDoor",
                type = "bool",
            },
            [1] = {
                name = "ControlRoom",
                type = "bool",
            },
            [2] = {
                name = "ExteriorDoors",
                type = "bool",
            },
            [3] = {
                name = "FrontDoor",
                type = "bool",
            },
            [4] = {
                name = "SideDoor",
                type = "bool",
            },
            [5] = {
                name = "TriageDoor",
                type = "bool",
            },
        },
        dataInCount = 6,
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
    self._name = "D5_PrisonCommunity_L4_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\D5_PrisonCommunity_L4.domino|@D5_PrisonCommunity_L4_Main";
    self.box_Lib_FaithPrison_Doors_1 = cbox:CreateBox("Domino/Library/Sp/Lib_FaithPrison.Lib_FaithPrison_Doors.debug.lua");
    l0 = self.box_Lib_FaithPrison_Doors_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Lib_FaithPrison_Doors_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\D5_PrisonCommunity_L4.domino|@D5_PrisonCommunity_L4_Main|892640974");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\D5_PrisonCommunity_L4.domino|@D5_PrisonCommunity_L4_Main|1404308928", "1404308928", "D5_PrisonCommunity_L4_Main", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_3();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\D5_PrisonCommunity_L4.domino|@D5_PrisonCommunity_L4_Main|1066750740", "1066750740", "D5_PrisonCommunity_L4_Main", "box_OutputOrder_v2_2.Out", "box_Print_v2_3.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Lib_FaithPrison_Doors_1();
    l0 = self.box_Lib_FaithPrison_Doors_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\D5_PrisonCommunity_L4.domino|@D5_PrisonCommunity_L4_Main|1754781478", "1754781478", "D5_PrisonCommunity_L4_Main", "box_OutputOrder_v2_2.Out", "box_Lib_FaithPrison_Doors_1.Unlock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Unlock
    l0:Exec(0, params);
end;

function export:OnEnter_box_Lib_FaithPrison_Doors_1()
    local params;
    params = {
        -- CentralDoor,
        [0] = true,
        -- ControlRoom,
        [1] = true,
        -- ExteriorDoors,
        [2] = true,
        -- FrontDoor,
        [3] = true,
        -- SideDoor,
        [4] = true,
        -- TriageDoor,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\D5_PrisonCommunity_L4.domino|@D5_PrisonCommunity_L4_Main|937950904");
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

function export:OnEnter_box_Print_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\Community_Prison\\D5_PrisonCommunity_L4.domino|@D5_PrisonCommunity_L4_Main|1859539444");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "D5_PrisonCommunity_L4 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
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
