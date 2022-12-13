LUAC F  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_master/fc5_demo.domino
-- User graph: Demo_OW_Jacob
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DisplayCinematicPrompt.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Master/FC5_Demo.Demo_OW_Jacob.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/DisplayCinematicPrompt.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "DisplayPrompt",
            },
            [1] = {
                name = "HidePrompt",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "PromptDisplayed",
                delayed = false,
            },
            [1] = {
                name = "PromptHidden",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "textId1",
                type = "oasis",
            },
            [1] = {
                name = "textId2",
                type = "oasis",
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
    metadataTable[GetPathID("Domino/System/SetTimeOfDay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "IncrementTimeOfDay",
            },
            [1] = {
                name = "SetTimeOfDay",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Message",
                type = "string",
            },
            [1] = {
                name = "pawn",
                type = "entity",
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
    self._name = "Demo_OW_Jacob";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob";
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|280059284");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|603937906");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1083562340");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1375741384");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1682602405", "1682602405", "Demo_OW_Jacob", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_SetTimeOfDay_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1726346534", "1726346534", "Demo_OW_Jacob", "box_SetTimeOfDay_7.Out", "box_ActivityInitialized_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayDebugCinematicMsg_v3_3();
    l0 = self.box_Delay_v5_6;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1514138090", "1514138090", "Demo_OW_Jacob", "box_Delay_v5_6.TimeElapsed", "box_DisplayDebugCinematicMsg_v3_3.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1830607603", "1830607603", "Demo_OW_Jacob", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1056328326", "1056328326", "Demo_OW_Jacob", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicPrompt_8();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|941231230", "941231230", "Demo_OW_Jacob", "box_ActivityInitialized_1.Out", "box_DisplayCinematicPrompt_8.HidePrompt", l0:GetLuaBox(), l1:GetLuaBox());
    -- HidePrompt
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayCinematicPrompt_8_PromptHidden()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayDebugCinematicMsg_v3_3();
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|95996336", "95996336", "Demo_OW_Jacob", "box_DisplayCinematicPrompt_8.PromptHidden", "box_DisplayDebugCinematicMsg_v3_3.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_7();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1522825983", "1522825983", "Demo_OW_Jacob", "box_MultipleOR_4.Out", "box_SetTimeOfDay_7.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayDebugCinematicMsg_v3_3_OnDisplay()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1669080363", "1669080363", "Demo_OW_Jacob", "box_DisplayDebugCinematicMsg_v3_3.OnDisplay", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_DisplayDebugCinematicMsg_v3_3_OnHide()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1830055316", "1830055316", "Demo_OW_Jacob", "box_DisplayDebugCinematicMsg_v3_3.OnHide", "box_ActivityEnd_5.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SetTimeOfDay_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|46077935");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_7_Out,
    });
    params = {
        -- Hour,
        [0] = 11,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|329515671");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicPrompt_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DisplayCinematicPrompt.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicPrompt_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1147349641");
    l0:SetConnections({
        -- PromptHidden,
        [1] = self.f_box_DisplayCinematicPrompt_8_PromptHidden,
    });
    params = {
        -- textId1,
        [0] = {
            section = "Navigation Bar",
            item = "NAVIGATIONBAR_SKIP",
            id = "155730",
        },
    };
    return params;
end;

function export:OnEnter_box_DisplayDebugCinematicMsg_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayDebugCinematicMsg_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Master\\FC5_Demo.domino|@Demo_OW_Jacob|1537935877");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayDebugCinematicMsg_v3_3_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayDebugCinematicMsg_v3_3_OnHide,
    });
    params = {
        -- Message,
        [0] = "OW JACOB REGION DEMO",
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
