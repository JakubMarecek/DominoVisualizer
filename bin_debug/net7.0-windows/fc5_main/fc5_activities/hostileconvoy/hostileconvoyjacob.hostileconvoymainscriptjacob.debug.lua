LUACy2  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/hostileconvoy/hostileconvoyjacob.domino
-- User graph: HostileConvoyMainScriptJacob
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityConvoyListener.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/HostileConvoy/HostileConvoyJacob.HostileConvoyMainScriptJacob.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityConvoyListener.lua")] = {
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
                name = "Ended",
                delayed = true,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
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
    self._name = "HostileConvoyMainScriptJacob";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob";
    self.box_StartCelebration_3 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|54837364");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_3_Ended,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|859624220");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|1607588456");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|1724437625");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_ActivityConvoyListener_4 = cbox:CreateBox("Domino/System/Activity/ActivityConvoyListener.lua");
    l0 = self.box_ActivityConvoyListener_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityConvoyListener_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|1976973375");
    l0:SetConnections({
        -- Ended,
        [2] = self.f_box_ActivityConvoyListener_4_Ended,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|1813342152", "1813342152", "HostileConvoyMainScriptJacob", "In", "box_ActivityAcknowledgeGate_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_StartCelebration_3_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_StartCelebration_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|1008504613", "1008504613", "HostileConvoyMainScriptJacob", "box_StartCelebration_3.Ended", "box_ActivityEnd_2.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|834236364", "834236364", "HostileConvoyMainScriptJacob", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|2004287854", "2004287854", "HostileConvoyMainScriptJacob", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|2074201494", "2074201494", "HostileConvoyMainScriptJacob", "box_MultipleOR_5.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_1_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_ActivityConvoyListener_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|1052538894", "1052538894", "HostileConvoyMainScriptJacob", "box_ActivityInitialized_1.Out", "box_ActivityConvoyListener_4.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_ActivityConvoyListener_4_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_3();
    l0 = self.box_ActivityConvoyListener_4;
    l1 = self.box_StartCelebration_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|411751720", "411751720", "HostileConvoyMainScriptJacob", "box_ActivityConvoyListener_4.Ended", "box_StartCelebration_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:OnEnter_box_StartCelebration_3()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
        -- TextId,
        [1] = {
            section = "Hostile Convoy Quest",
            item = "HOSTILE_CONVOY_QUEST_TITLE_JACOB",
            id = "722632",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\HostileConvoy\\HostileConvoyJacob.domino|@HostileConvoyMainScriptJacob|636683402");
    l0:SetConnections({
    });
    params = {
        -- Success,
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
