LUAC9�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_020/lt02_020_b20.domino
-- User graph: LT02_020_B20_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_LT02_Trials.LT02_Trials.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1856814043.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3308241788.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2335868099.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_020/LT02_020_B20.LT02_020_B20_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_LT02_Trials.LT02_Trials.debug.lua")] = {
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
                name = "Mission_Number",
                type = "int",
            },
            [1] = {
                name = "NPC_Spawner_01_01",
                type = "entity",
            },
            [2] = {
                name = "NPC_Spawner_01_02",
                type = "entity",
            },
            [3] = {
                name = "NPC_Spawner_02_01",
                type = "entity",
            },
            [4] = {
                name = "NPC_Spawner_02_02",
                type = "entity",
            },
            [5] = {
                name = "NPC_Spawner_02_03",
                type = "entity",
            },
            [6] = {
                name = "NPC_Spawner_02_04",
                type = "entity",
            },
            [7] = {
                name = "NPC_Spawner_02_05",
                type = "entity",
            },
            [8] = {
                name = "NPC_Spawner_02_06",
                type = "entity",
            },
            [9] = {
                name = "NPC_Spawner_03_01",
                type = "entity",
            },
            [10] = {
                name = "NPC_Spawner_03_02",
                type = "entity",
            },
            [11] = {
                name = "NPC_Spawner_03_03",
                type = "entity",
            },
            [12] = {
                name = "NPC_Spawner_03_04",
                type = "entity",
            },
            [13] = {
                name = "NPC_Spawner_03_05",
                type = "entity",
            },
            [14] = {
                name = "NPC_Spawner_03_06",
                type = "entity",
            },
            [15] = {
                name = "NPC_Spawner_04_01",
                type = "entity",
            },
            [16] = {
                name = "NPC_Spawner_04_02",
                type = "entity",
            },
            [17] = {
                name = "NPC_Spawner_04_03",
                type = "entity",
            },
            [18] = {
                name = "NPC_Spawner_04_04",
                type = "entity",
            },
            [19] = {
                name = "NPC_Spawner_04_05",
                type = "entity",
            },
            [20] = {
                name = "NPC_Spawner_04_06",
                type = "entity",
            },
            [21] = {
                name = "NPC_Spawner_04_07",
                type = "entity",
            },
            [22] = {
                name = "NPC_Spawner_04_08",
                type = "entity",
            },
            [23] = {
                name = "NPC_Spawner_05_01",
                type = "entity",
            },
            [24] = {
                name = "NPC_Spawner_05_02",
                type = "entity",
            },
            [25] = {
                name = "NPC_Spawner_05_03",
                type = "entity",
            },
            [26] = {
                name = "NPC_Spawner_05_04",
                type = "entity",
            },
            [27] = {
                name = "NPC_Spawner_05_05",
                type = "entity",
            },
            [28] = {
                name = "NPC_Spawner_05_06",
                type = "entity",
            },
            [29] = {
                name = "NPC_Spawner_06_01",
                type = "entity",
            },
            [30] = {
                name = "NPC_Spawner_06_02",
                type = "entity",
            },
            [31] = {
                name = "NPC_Spawner_07_01",
                type = "entity",
            },
            [32] = {
                name = "NPC_Spawner_07_02",
                type = "entity",
            },
            [33] = {
                name = "NPC_Spawner_07_03",
                type = "entity",
            },
            [34] = {
                name = "NPC_Spawner_07_04",
                type = "entity",
            },
            [35] = {
                name = "NPC_Spawner_08_01",
                type = "entity",
            },
            [36] = {
                name = "NPC_Spawner_08_02",
                type = "entity",
            },
            [37] = {
                name = "NPC_Spawner_09_01",
                type = "entity",
            },
            [38] = {
                name = "NPC_Spawner_09_02",
                type = "entity",
            },
            [39] = {
                name = "NPC_Spawner_09_03",
                type = "entity",
            },
            [40] = {
                name = "NPC_Spawner_09_04",
                type = "entity",
            },
            [41] = {
                name = "NPC_Spawner_10_01",
                type = "entity",
            },
            [42] = {
                name = "NPC_Spawner_10_02",
                type = "entity",
            },
            [43] = {
                name = "NPC_Spawner_11_01",
                type = "entity",
            },
            [44] = {
                name = "ObjectiveID",
                type = "oasis",
            },
        },
        dataInCount = 45,
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
    metadataTable[GetPathID("Domino/System/PostWWiseEventSetState.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetState",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Set",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundId",
                type = "Sound",
            },
            [1] = {
                name = "SoundType",
                type = "SoundType",
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
    metadataTable[GetPathID("Domino/System/SoundMusicTrigger.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Skipped",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
                name = "Priority",
                type = "int",
            },
            [3] = {
                name = "SoundType",
                type = "SoundType",
            },
            [4] = {
                name = "Stackable",
                type = "bool",
            },
            [5] = {
                name = "StartEvent",
                type = "Sound",
            },
            [6] = {
                name = "StopEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopFadeOut",
                type = "float",
            },
            [8] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [9] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_020_B20_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main";
    self.box_PostWWiseEventSetState_14 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|253544558");
    l0:SetConnections({
    });
    self.box_SoundMusicTriggerBox_12 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|988773912");
    l0:SetConnections({
    });
    self.box_SoundMusicTriggerBox_9 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1381734708");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_9_Started,
    });
    self.box_LT02_Trials_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_LT02_Trials.LT02_Trials.debug.lua");
    l0 = self.box_LT02_Trials_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_Trials_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1508212002");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_Trials_5_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1723720420");
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
    self.box_ActivityAcknowledgeGate_8 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|2111174389");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_8_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_8_Reloaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|394210219", "394210219", "LT02_020_B20_main", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|992613767", "992613767", "LT02_020_B20_main", "OnLeaveZone", "box_OutputOrder_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_12();
    l0 = self.box_SoundMusicTriggerBox_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|2075914339", "2075914339", "LT02_020_B20_main", "box_OutputOrder_v2_10.Out", "box_SoundMusicTriggerBox_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1809550320", "1809550320", "LT02_020_B20_main", "box_OutputOrder_v2_10.Out", "box_ActivityRetry_6.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundMusicTriggerBox_9_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_14();
    l0 = self.box_SoundMusicTriggerBox_9;
    l1 = self.box_PostWWiseEventSetState_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1206320238", "1206320238", "LT02_020_B20_main", "box_SoundMusicTriggerBox_9.Started", "box_PostWWiseEventSetState_14.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1458888190", "1458888190", "LT02_020_B20_main", "box_OutputOrder_v2_3.Out", "box_Print_v2_11.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|936617996", "936617996", "LT02_020_B20_main", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_9();
    l0 = self.box_SoundMusicTriggerBox_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1591993041", "1591993041", "LT02_020_B20_main", "box_OutputOrder_v2_3.Out", "box_SoundMusicTriggerBox_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_LT02_Trials_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_4();
    l0 = self.box_LT02_Trials_5;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|569354258", "569354258", "LT02_020_B20_main", "box_LT02_Trials_5.Out", "box_ActivityEnd_4.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT02_Trials_5();
    l0 = self.box_MultipleOR_2;
    l1 = self.box_LT02_Trials_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1161013920", "1161013920", "LT02_020_B20_main", "box_MultipleOR_2.Out", "box_LT02_Trials_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_8_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1485080332", "1485080332", "LT02_020_B20_main", "box_ActivityAcknowledgeGate_8.Acknowledged", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_8_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_8;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1875872637", "1875872637", "LT02_020_B20_main", "box_ActivityAcknowledgeGate_8.Reloaded", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_PostWWiseEventSetState_14()
    local params;
    params = {
        -- SoundId,
        [0] = "1856814043",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|649856096");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_4()
    local params, l0;
    DrawTextToScreen("Comment: SUCCESS", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityEnd')-- Comment: SUCCESS");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|794897317");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_12()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "3308241788",
        -- StopEvent,
        [6] = "2335868099",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1305386411");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1364355855");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "LT02_020_B20 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_9()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "3308241788",
        -- StopEvent,
        [6] = "2335868099",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_020\\LT02_020_B20.domino|@LT02_020_B20_main|1406611791");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT02_Trials_5()
    local params;
    params = {
        -- Mission_Number,
        [0] = 2,
        -- NPC_Spawner_01_01,
        [1] = "2102309947527147065",
        -- NPC_Spawner_01_02,
        [2] = "2102309947791388807",
        -- NPC_Spawner_02_01,
        [3] = "2102309947592158947",
        -- NPC_Spawner_02_02,
        [4] = "2102309947887857972",
        -- NPC_Spawner_02_03,
        [5] = "2102309947659267963",
        -- NPC_Spawner_02_04,
        [6] = "2102309948087087718",
        -- NPC_Spawner_03_02,
        [10] = "2102309947611033361",
        -- NPC_Spawner_03_03,
        [11] = "2102309947659267966",
        -- NPC_Spawner_03_04,
        [12] = "2104152137675061367",
        -- NPC_Spawner_03_05,
        [13] = "2102309948317774743",
        -- NPC_Spawner_03_06,
        [14] = "2102309947602644735",
        -- NPC_Spawner_04_01,
        [15] = "2102309947980132809",
        -- NPC_Spawner_04_02,
        [16] = "2102309947793485965",
        -- NPC_Spawner_04_03,
        [17] = "2104566928480698898",
        -- NPC_Spawner_04_04,
        [18] = "2104567058384585903",
        -- NPC_Spawner_04_06,
        [20] = "2104566967533863931",
        -- NPC_Spawner_05_02,
        [24] = "2102488874610603116",
        -- NPC_Spawner_05_03,
        [25] = "2102309947587964635",
        -- NPC_Spawner_05_04,
        [26] = "2102309947885760815",
        -- NPC_Spawner_06_01,
        [29] = "2103087459068810838",
        -- NPC_Spawner_07_01,
        [31] = "2103087767593431464",
        -- NPC_Spawner_07_02,
        [32] = "2103087766872011151",
        -- NPC_Spawner_07_03,
        [33] = "2103087768465846721",
        -- NPC_Spawner_08_01,
        [35] = "2103087880281797827",
        -- NPC_Spawner_09_01,
        [37] = "2103087925070673344",
        -- NPC_Spawner_09_02,
        [38] = "2103087939157243510",
        -- NPC_Spawner_09_03,
        [39] = "2103087940916754066",
        -- NPC_Spawner_09_04,
        [40] = "2103087941369738923",
        -- NPC_Spawner_10_01,
        [41] = "2103087995948120053",
        -- NPC_Spawner_11_01,
        [43] = "2105309548400088649",
        -- ObjectiveID,
        [44] = {
            section = "Objectives",
            item = "LT02_010_B20A_Trial_TKS2",
            id = "725954",
        },
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
