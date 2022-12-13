LUACg�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_050/key01_050_omni.domino
-- User graph: DIALOG_TOOSLOW
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Kim" Type="Nomad|entity{}" />
    <DataIn Name="Nick" Type="Nomad|entity{}" />
    <DataIn Name="MinSpeed" Type="Core|float" />
    <DataIn Name="Truck" Type="Nomad|entity{}" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetVehicleSpeed.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3234708454.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2378937673.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1738636157.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2018012440.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_050/KEY01_050_OMNI.DIALOG_TOOSLOW.debug.lua")] = {
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
            [0] = {
                name = "Kim",
                type = "entity",
            },
            [1] = {
                name = "MinSpeed",
                type = "float",
            },
            [2] = {
                name = "Nick",
                type = "entity",
            },
            [3] = {
                name = "Truck",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
            },
        },
        controlInCount = 3,
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
            [0] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/GetVehicleSpeed.lua")] = {
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
                delayed = true,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "vehicleId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "currentSpeed",
                type = "float",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Random.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "None",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
            [1] = {
                name = "Probability",
                type = "float",
                dynamicType = 1,
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "DIALOG_TOOSLOW";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW";
    self.gFriendlyPlayer = nil;
    self.eNickRye = nil;
    self.eKimRye = nil;
    self.eTruck = nil;
    self.box_PlayDialog_v6_14 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|100058428");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|104843359");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|131882887");
    l0:SetConnections({
    });
    self.box_Random_13 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|824063122");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_13_Output_0,
                [1] = self.f_box_Random_13_Output_1,
                [2] = self.f_box_Random_13_Output_2,
                [3] = self.f_box_Random_13_Output_3,
            },
            count = 4,
        },
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|998206890");
    l0:SetConnections({
    });
    self.box_Gate_v3_5 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1005914997");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_5_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_5_Out,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1580683687");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1680289986");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_3();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1965163152", "1965163152", "DIALOG_TOOSLOW", "In", "box_GetPlayerGroup_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_2_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|401125810", "401125810", "DIALOG_TOOSLOW", "box_SetEntity_v2_2.Out", "box_SetEntity_v2_1.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetVehicleSpeed_11_Out()
    local params, l0;
    self:OnExit_box_GetVehicleSpeed_11_Out();
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_7();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1552023531", "1552023531", "DIALOG_TOOSLOW", "box_GetVehicleSpeed_11.Out", "box_Compare_Floats_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_3_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1969311362", "1969311362", "DIALOG_TOOSLOW", "box_GetPlayerGroup_v2_3.Out", "box_SetEntity_v2_2.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_13_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_14();
    l0 = self.box_Random_13;
    l1 = self.box_PlayDialog_v6_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1373243226", "1373243226", "DIALOG_TOOSLOW", "box_Random_13.Output", "box_PlayDialog_v6_14.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_13_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_Random_13;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1776451750", "1776451750", "DIALOG_TOOSLOW", "box_Random_13.Output", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_13_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Random_13;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1500310029", "1500310029", "DIALOG_TOOSLOW", "box_Random_13.Output", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_13_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_Random_13;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|484079084", "484079084", "DIALOG_TOOSLOW", "box_Random_13.Output", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_5_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Gate_v3_5;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1956708172", "1956708172", "DIALOG_TOOSLOW", "box_Gate_v3_5.Closed", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetVehicleSpeed_11();
    l0 = self.box_Gate_v3_5;
    l1 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1353403570", "1353403570", "DIALOG_TOOSLOW", "box_Gate_v3_5.Out", "box_GetVehicleSpeed_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_1_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_15();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|457592203", "457592203", "DIALOG_TOOSLOW", "box_SetEntity_v2_1.Out", "box_SetEntity_v2_15.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_15_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|638109250", "638109250", "DIALOG_TOOSLOW", "box_SetEntity_v2_15.Out", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_13();
    l0 = self.box_Random_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|994886329", "994886329", "DIALOG_TOOSLOW", "box_OutputOrder_v2_12.Out", "box_Random_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1601375113", "1601375113", "DIALOG_TOOSLOW", "box_OutputOrder_v2_12.Out", "box_Gate_v3_5.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Compare_Floats_7_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1466150300", "1466150300", "DIALOG_TOOSLOW", "box_Compare_Floats_7.A_lt_B", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|392194982", "392194982", "DIALOG_TOOSLOW", "box_Delay_v5_4.TimeElapsed", "box_Gate_v3_5.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_5();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_Gate_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1379377058", "1379377058", "DIALOG_TOOSLOW", "box_Delay_v5_6.TimeElapsed", "box_Gate_v3_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:OnEnter_box_PlayDialog_v6_14()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1738636157",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = self.eNickRye,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2018012440",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = self.eKimRye,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2378937673",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|157304408");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_2_Out,
    });
    params = {
        -- Entity,
        [0] = self.Nick,
    };
    return params;
end;

function export:OnEnter_box_GetVehicleSpeed_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetVehicleSpeed_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|309686592");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetVehicleSpeed_11_Out,
    });
    params = {
        -- vehicleId,
        [0] = self.eTruck,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|587586950");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_3_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Random_13()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = self.eKimRye,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3234708454",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_5()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1049499475");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_1_Out,
    });
    params = {
        -- Entity,
        [0] = self.Kim,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1336614908");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_15_Out,
    });
    params = {
        -- Entity,
        [0] = self.Truck,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1425662991");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_050\\KEY01_050_OMNI.domino|@DIALOG_TOOSLOW|1487764224");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Floats_7_A_lt_B,
    });
    params = {
        -- A,
        [0] = self._sld_currentSpeed_box_GetVehicleSpeed_11,
        -- B,
        [1] = self.MinSpeed,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eNickRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetVehicleSpeed_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetVehicleSpeed.lua")];
    self._sld_currentSpeed_box_GetVehicleSpeed_11 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gFriendlyPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eKimRye = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_15_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eTruck = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="Kim" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="MinSpeed" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="Nick" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="Truck" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
