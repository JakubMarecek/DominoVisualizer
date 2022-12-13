LUAC�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_037/intro_037_intro.domino
-- User graph: INTRO_037_INTRO
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_037/INTRO_037_INTRO.INTRO_037_INTRO.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FadeIn",
            },
            [1] = {
                name = "FadeOut",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FadedIn",
                delayed = false,
            },
            [1] = {
                name = "FadedOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "HUD",
                type = "string",
            },
            [1] = {
                name = "PostFX",
                type = "string",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
            },
            [2] = {
                name = "ShowHud",
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
    metadataTable[GetPathID("Domino/System/Player/InputPriorityModifier_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Release",
            },
            [1] = {
                name = "Set",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnRelease",
                delayed = false,
            },
            [1] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "InputPriority",
                type = "string",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
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
    self._name = "INTRO_037_INTRO";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO";
    self.e_Dog = nil;
    self.UNI063 = nil;
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|85742966");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_InputPriorityModifier_v4_14 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|291601116");
    l0:SetConnections({
        -- OnSet,
        [1] = self.f_box_InputPriorityModifier_v4_14_OnSet,
    });
    self.box_NarrativeFade_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|359237159");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_12_FadedIn,
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_12_FadedOut,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1231943609");
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
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1365857101");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1570129886");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_InputPriorityModifier_v4_13 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1627138453");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_13_OnRelease,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|2014567475");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|2069855309", "2069855309", "INTRO_037_INTRO", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|184832174", "184832174", "INTRO_037_INTRO", "OnLeaveZone", "box_ActivityRetry_6.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DisplayDebugCinematicMsg_v3_16_OnDisplay()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1728362023", "1728362023", "INTRO_037_INTRO", "box_DisplayDebugCinematicMsg_v3_16.OnDisplay", "box_Delay_v5_17.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_DisplayDebugCinematicMsg_v3_16_OnHide()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1042415947", "1042415947", "INTRO_037_INTRO", "box_DisplayDebugCinematicMsg_v3_16.OnHide", "box_ActivityEnd_9.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayDebugCinematicMsg_v3_10();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1515982659", "1515982659", "INTRO_037_INTRO", "box_Delay_v5_11.TimeElapsed", "box_DisplayDebugCinematicMsg_v3_10.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DisplayDebugCinematicMsg_v3_10_OnDisplay()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1868052581", "1868052581", "INTRO_037_INTRO", "box_DisplayDebugCinematicMsg_v3_10.OnDisplay", "box_Delay_v5_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_DisplayDebugCinematicMsg_v3_10_OnHide()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_12();
    l0 = self.box_NarrativeFade_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|371041429", "371041429", "INTRO_037_INTRO", "box_DisplayDebugCinematicMsg_v3_10.OnHide", "box_NarrativeFade_12.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_InputPriorityModifier_v4_14_OnSet()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_12();
    l0 = self.box_InputPriorityModifier_v4_14;
    l1 = self.box_NarrativeFade_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|844713278", "844713278", "INTRO_037_INTRO", "box_InputPriorityModifier_v4_14.OnSet", "box_NarrativeFade_12.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_12_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_NarrativeFade_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|457683549", "457683549", "INTRO_037_INTRO", "box_NarrativeFade_12.FadedIn", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_12_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayDebugCinematicMsg_v3_10();
    l0 = self.box_NarrativeFade_12;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1126372640", "1126372640", "INTRO_037_INTRO", "box_NarrativeFade_12.FadedOut", "box_DisplayDebugCinematicMsg_v3_10.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1110071650", "1110071650", "INTRO_037_INTRO", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1817876565", "1817876565", "INTRO_037_INTRO", "box_OutputOrder_v2_2.Out", "box_Print_v2_7.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1604963629", "1604963629", "INTRO_037_INTRO", "box_MultipleOR_5.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|650285765", "650285765", "INTRO_037_INTRO", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|787719708", "787719708", "INTRO_037_INTRO", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_InputPriorityModifier_v4_13();
    l0 = self.box_InputPriorityModifier_v4_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1837918050", "1837918050", "INTRO_037_INTRO", "box_OutputOrder_v2_4.Out", "box_InputPriorityModifier_v4_13.Release", clone:GetLuaBox(), l0:GetLuaBox());
    -- Release
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|619854983", "619854983", "INTRO_037_INTRO", "box_OutputOrder_v2_4.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayDebugCinematicMsg_v3_16();
    l0 = self.box_Delay_v5_17;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|703609284", "703609284", "INTRO_037_INTRO", "box_Delay_v5_17.TimeElapsed", "box_DisplayDebugCinematicMsg_v3_16.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InputPriorityModifier_v4_13_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayDebugCinematicMsg_v3_16();
    l0 = self.box_InputPriorityModifier_v4_13;
    l1 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1550460816", "1550460816", "INTRO_037_INTRO", "box_InputPriorityModifier_v4_13.OnRelease", "box_DisplayDebugCinematicMsg_v3_16.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_14();
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_InputPriorityModifier_v4_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1465154822", "1465154822", "INTRO_037_INTRO", "box_ActivityInitialized_3.Out", "box_InputPriorityModifier_v4_14.Set", l0:GetLuaBox(), l1:GetLuaBox());
    -- Set
    l1:Exec(1, params);
end;

function export:OnEnter_box_DisplayDebugCinematicMsg_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayDebugCinematicMsg_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|41242111");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayDebugCinematicMsg_v3_16_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayDebugCinematicMsg_v3_16_OnHide,
    });
    params = {
        -- Message,
        [0] = "RADIOCALL UNI61: The ranger station is under attack!! Help!",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 6,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|174532808");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "purple",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "INTRO_037_INTRO_END",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_DisplayDebugCinematicMsg_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/DisplayDebugCinematicMsg_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayDebugCinematicMsg_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|230704782");
    l0:SetConnections({
        -- OnDisplay,
        [0] = self.f_box_DisplayDebugCinematicMsg_v3_10_OnDisplay,
        -- OnHide,
        [1] = self.f_box_DisplayDebugCinematicMsg_v3_10_OnHide,
    });
    params = {
        -- Message,
        [0] = "RESISTANCE LEVEL: 100%",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_14()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_12()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|895432150");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|948326754");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|962850347");
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

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1425136272");
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
                [0] = self.f_box_OutputOrder_v2_4_Out_0,
                [1] = self.f_box_OutputOrder_v2_4_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_13()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_037\\INTRO_037_INTRO.domino|@INTRO_037_INTRO|1652980958");
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
        [8] = "INTRO_037_INTRO Started",
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
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
