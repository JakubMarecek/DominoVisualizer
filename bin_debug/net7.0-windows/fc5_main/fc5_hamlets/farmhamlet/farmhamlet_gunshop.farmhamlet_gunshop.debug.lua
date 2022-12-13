LUAC=0  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_hamlets/farmhamlet/farmhamlet_gunshop.domino
-- User graph: FarmHamlet_GunShop
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Hamlets/FarmHamlet/FarmHamlet_GunShop.FarmHamlet_GunShop.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
                delayed = true,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "FarmHamlet_GunShop";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop";
    self.Out = DummyFunction;
    self.box_ActivityInitialized_51 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|868582875");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_51_Out,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|988875067");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_ActivityAcknowledgeGate_52 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|1320567735");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_52_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_52_Reloaded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|682518195", "682518195", "FarmHamlet_GunShop", "In", "box_ActivityAcknowledgeGate_52.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Print_v2_1_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|174659519", "174659519", "FarmHamlet_GunShop", "box_Print_v2_1.PrintedToScreen", "box_OutputOrder_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_51_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_1();
    l0 = self.box_ActivityInitialized_51;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|1200947294", "1200947294", "FarmHamlet_GunShop", "box_ActivityInitialized_51.Out", "box_Print_v2_1.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_53_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_53;
    l1 = self.box_ActivityInitialized_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|126749278", "126749278", "FarmHamlet_GunShop", "box_MultipleOR_53.Out", "box_ActivityInitialized_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_52_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_52;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|802618558", "802618558", "FarmHamlet_GunShop", "box_ActivityAcknowledgeGate_52.Acknowledged", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_52_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_52;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|1052712571", "1052712571", "FarmHamlet_GunShop", "box_ActivityAcknowledgeGate_52.Reloaded", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|403833318");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_1_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "GunShop Running_V4",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Hamlets\\FarmHamlet\\FarmHamlet_GunShop.domino|@FarmHamlet_GunShop|494657772");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 3,
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
            },
            count = 3,
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
