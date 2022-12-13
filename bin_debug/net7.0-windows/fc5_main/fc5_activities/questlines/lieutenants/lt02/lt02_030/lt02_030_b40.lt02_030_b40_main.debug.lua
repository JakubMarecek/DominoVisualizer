LUACb  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_030/lt02_030_b40.domino
-- User graph: LT02_030_B40_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/MoonModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/UI/SetAlternateLoadingScreen.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_030/LT02_030_B40.CIN_LT02_030_B40.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3074360545.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2430786186.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_030/LT02_030_B40.LT02_030_B40_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CIN_Skip",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "Start_Reset_MIS_Attacked",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Box_Skipped",
                delayed = false,
            },
            [1] = {
                name = "CIN_Skipped",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "MUS_MIS_Step",
                type = "int",
            },
            [3] = {
                name = "Priority",
                type = "int",
            },
            [4] = {
                name = "SoundType",
                type = "SoundType",
            },
            [5] = {
                name = "Stackable",
                type = "bool",
            },
            [6] = {
                name = "StartEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopEvent",
                type = "Sound",
            },
            [8] = {
                name = "StopFadeOut",
                type = "float",
            },
            [9] = {
                name = "WaitForMusicStatePriorityOver",
                type = "int",
            },
            [10] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [11] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/MoonModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ResetMoonDirection",
            },
            [1] = {
                name = "ResetMoonHDRMultiplier",
            },
            [2] = {
                name = "ResetMoonSize",
            },
            [3] = {
                name = "SetMoonDirection",
            },
            [4] = {
                name = "SetMoonHDRMultiplier",
            },
            [5] = {
                name = "SetMoonSize",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "OnResetMoonDirection",
                delayed = false,
            },
            [1] = {
                name = "OnResetMoonHDRMultiplier",
                delayed = false,
            },
            [2] = {
                name = "OnResetMoonSize",
                delayed = false,
            },
            [3] = {
                name = "OnSetMoonDirection",
                delayed = false,
            },
            [4] = {
                name = "OnSetMoonHDRMultiplier",
                delayed = false,
            },
            [5] = {
                name = "OnSetMoonSize",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "Azimuth",
                type = "float",
            },
            [1] = {
                name = "Elevation",
                type = "float",
            },
            [2] = {
                name = "HDRMultiplier",
                type = "float",
            },
            [3] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
            [4] = {
                name = "Size",
                type = "float",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/Player/PhoneCallExclusivityModifier.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/SetAlternateLoadingScreen.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetLoadingScreen",
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
                name = "LoadingScreen",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_030/LT02_030_B40.CIN_LT02_030_B40.debug.lua")] = {
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
                name = "metasequence",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_030_B40_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main";
    self.Player_Group = nil;
    self.player = nil;
    self.ePartner = nil;
    self.eVip = nil;
    self.eHideguy = nil;
    self.eJacobSeed = nil;
    self.eLobbyGuy = nil;
    self.eEscort_indoctrinee = nil;
    self.eEscort_push = nil;
    self.eEscort_lead = nil;
    self.eHidingRoomCiv_01 = nil;
    self.eHidingRoomCiv_02 = nil;
    self.eBodypitA = nil;
    self.box_CIN_LT02_030_B40_236 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_030/LT02_030_B40.CIN_LT02_030_B40.debug.lua");
    l0 = self.box_CIN_LT02_030_B40_236;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CIN_LT02_030_B40_236");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|159775005");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CIN_LT02_030_B40_236_Out,
    });
    self.box_MoonModifier_5 = cbox:CreateBox("Domino/System/MoonModifier.lua");
    l0 = self.box_MoonModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MoonModifier_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|813959655");
    l0:SetConnections({
        -- OnSetMoonDirection,
        [3] = self.f_box_MoonModifier_5_OnSetMoonDirection,
    });
    self.box_ActivityInitialized_238 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_238;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_238");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|1240076365");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_238_Out,
    });
    self.box_Music_Quest_v2_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|1637810598");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_235 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_235;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_235");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|1786345185");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_235_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_235_Reloaded,
    });
    self.box_MultipleOR_239 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_239;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_239");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|1897111981");
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
        [0] = self.f_box_MultipleOR_239_Out,
    });
    self.box_PhoneCallExclusivityModifier_2 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|2134912220");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_2_Enabled,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_235;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|728214188", "728214188", "LT02_030_B40_main", "In", "box_ActivityAcknowledgeGate_235.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_CIN_LT02_030_B40_236_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetAlternateLoadingScreen_3();
    l0 = self.box_CIN_LT02_030_B40_236;
    l1 = Boxes[GetPathID("Domino/System/UI/SetAlternateLoadingScreen.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|540547375", "540547375", "LT02_030_B40_main", "box_CIN_LT02_030_B40_236.Out", "box_SetAlternateLoadingScreen_3.SetLoadingScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetLoadingScreen
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetAlternateLoadingScreen_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/SetAlternateLoadingScreen.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_234();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|505092710", "505092710", "LT02_030_B40_main", "box_SetAlternateLoadingScreen_3.Out", "box_ActivityEnd_234.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MoonModifier_5_OnSetMoonDirection()
    local l0, l1;
    l0 = self.box_MoonModifier_5;
    l1 = self.box_ActivityInitialized_238;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|2103636499", "2103636499", "LT02_030_B40_main", "box_MoonModifier_5.OnSetMoonDirection", "box_ActivityInitialized_238.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ActivityInitialized_238_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_238;
    l1 = self.box_PhoneCallExclusivityModifier_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|691012920", "691012920", "LT02_030_B40_main", "box_ActivityInitialized_238.Out", "box_PhoneCallExclusivityModifier_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_235_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_235;
    l1 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|880814469", "880814469", "LT02_030_B40_main", "box_ActivityAcknowledgeGate_235.Acknowledged", "box_MultipleOR_239.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_235_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_235;
    l1 = self.box_MultipleOR_239;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|480189806", "480189806", "LT02_030_B40_main", "box_ActivityAcknowledgeGate_235.Reloaded", "box_MultipleOR_239.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_239_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MoonModifier_5();
    l0 = self.box_MultipleOR_239;
    l1 = self.box_MoonModifier_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|1083076673", "1083076673", "LT02_030_B40_main", "box_MultipleOR_239.Out", "box_MoonModifier_5.SetMoonDirection", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetMoonDirection
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_4_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_1();
    l0 = self.box_Music_Quest_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|1410163009", "1410163009", "LT02_030_B40_main", "box_OutputOrder_v2_4.Out", "box_Music_Quest_v2_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_4_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CIN_LT02_030_B40_236();
    l0 = self.box_CIN_LT02_030_B40_236;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|634645883", "634645883", "LT02_030_B40_main", "box_OutputOrder_v2_4.Out", "box_CIN_LT02_030_B40_236.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_4();
    l0 = self.box_PhoneCallExclusivityModifier_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|1852333153", "1852333153", "LT02_030_B40_main", "box_PhoneCallExclusivityModifier_2.Enabled", "box_OutputOrder_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_CIN_LT02_030_B40_236()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetAlternateLoadingScreen_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/SetAlternateLoadingScreen.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetAlternateLoadingScreen_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|234846266");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetAlternateLoadingScreen_3_Out,
    });
    params = {
        -- LoadingScreen,
        [0] = 10,
    };
    return params;
end;

function export:OnEnter_box_MoonModifier_5()
    local params;
    params = {
        -- Azimuth,
        [0] = -190,
        -- Elevation,
        [1] = 45,
        -- HDRMultiplier,
        [2] = 1,
        -- ResetAfterBeat,
        [3] = true,
        -- Size,
        [4] = 1,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_1()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 7,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3074360545",
        -- StopEvent,
        [7] = "2430786186",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_234()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_234");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|1959572828");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_B40.domino|@LT02_030_B40_main|1999930428");
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
