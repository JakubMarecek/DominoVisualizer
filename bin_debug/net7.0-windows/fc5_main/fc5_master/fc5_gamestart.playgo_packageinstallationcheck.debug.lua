LUAC2  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_master/fc5_gamestart.domino
-- User graph: PlayGo_PackageInstallationCheck
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/PackageInstallationListener.lua");
        cboxRes:RegisterBox("Domino/System/PlayGo/IntroEndGate.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.FC5_GameStart = nil;
    Globals.FC5_GameStart = {
        sDemoType = "",
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Master/FC5_GameStart.PlayGo_PackageInstallationCheck.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/PackageInstallationListener.lua")] = {
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
                name = "Finished",
                delayed = true,
            },
            [3] = {
                name = "IsInstalling",
                delayed = true,
            },
            [4] = {
                name = "PackageAlreadyInstalled",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "DisplayInstallProgressDialog",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayGo/IntroEndGate.lua")] = {
        stateless = true,
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
    self._name = "PlayGo_PackageInstallationCheck";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck";
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|1295646306");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_ActivityInitialized_5 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|1563995225");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_5_Out,
    });
    self.box_PackageInstallationListener_1 = cbox:CreateBox("Domino/System/PackageInstallationListener.lua");
    l0 = self.box_PackageInstallationListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PackageInstallationListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|2021131074");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PackageInstallationListener_1_Enabled,
        -- Finished,
        [2] = self.f_box_PackageInstallationListener_1_Finished,
        -- PackageAlreadyInstalled,
        [4] = self.f_box_PackageInstallationListener_1_PackageAlreadyInstalled,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityInitialized_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|458680429", "458680429", "PlayGo_PackageInstallationCheck", "In", "box_ActivityInitialized_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEndIntroPackage_3();
    l0 = self.box_MultipleOR_2;
    l1 = Boxes[GetPathID("Domino/System/PlayGo/IntroEndGate.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|191018930", "191018930", "PlayGo_PackageInstallationCheck", "box_MultipleOR_2.Out", "box_ActivityEndIntroPackage_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PackageInstallationListener_1();
    l0 = self.box_ActivityInitialized_5;
    l1 = self.box_PackageInstallationListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|1575892472", "1575892472", "PlayGo_PackageInstallationCheck", "box_ActivityInitialized_5.Out", "box_PackageInstallationListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PackageInstallationListener_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_4();
    l0 = self.box_PackageInstallationListener_1;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|952921886", "952921886", "PlayGo_PackageInstallationCheck", "box_PackageInstallationListener_1.Enabled", "box_Print_v2_4.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PackageInstallationListener_1_Finished()
    local l0, l1;
    l0 = self.box_PackageInstallationListener_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|2066174234", "2066174234", "PlayGo_PackageInstallationCheck", "box_PackageInstallationListener_1.Finished", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PackageInstallationListener_1_PackageAlreadyInstalled()
    local l0, l1;
    l0 = self.box_PackageInstallationListener_1;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|448019200", "448019200", "PlayGo_PackageInstallationCheck", "box_PackageInstallationListener_1.PackageAlreadyInstalled", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_ActivityEndIntroPackage_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PlayGo/IntroEndGate.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEndIntroPackage_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|292164941");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_GameStart.domino|@PlayGo_PackageInstallationCheck|1474980508");
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
        [8] = "Enable PackageInstallationListener",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PackageInstallationListener_1()
    local params;
    params = {
        -- DisplayInstallProgressDialog,
        [0] = true,
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
