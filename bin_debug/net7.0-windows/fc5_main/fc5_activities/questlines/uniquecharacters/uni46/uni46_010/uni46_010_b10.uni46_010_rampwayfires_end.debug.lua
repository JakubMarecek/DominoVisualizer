LUAC֖  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni46/uni46_010/uni46_010_b10.domino
-- User graph: uni46_010_rampwayfires_End
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_fireworks.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_rampwayfires_End.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
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
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In_Start_Fire",
            },
            [1] = {
                name = "In_Start_Flame",
            },
            [2] = {
                name = "In_Stop_Fire",
            },
            [3] = {
                name = "In_Stop_Flame",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out_Start_Fire",
                delayed = false,
            },
            [1] = {
                name = "Out_Start_Flame",
                delayed = false,
            },
            [2] = {
                name = "Out_Stop_Fire",
                delayed = false,
            },
            [3] = {
                name = "Out_Stop_Flame",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Fire_Vehicle",
                type = "entity",
            },
            [1] = {
                name = "Flame_Soundpoint",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_fireworks.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Disable",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "uni46_010_rampwayfires_End";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End";
    self.Out = DummyFunction;
    self.box_Audio_Manager_16 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|46584268");
    l0:SetConnections({
        -- Out_Start_Flame,
        [1] = self.f_box_Audio_Manager_16_Out_Start_Flame,
    });
    self.box_Audio_Manager_18 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|234512308");
    l0:SetConnections({
        -- Out_Start_Flame,
        [1] = self.f_box_Audio_Manager_18_Out_Start_Flame,
    });
    self.box_Audio_Manager_15 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|271930585");
    l0:SetConnections({
        -- Out_Start_Flame,
        [1] = self.f_box_Audio_Manager_15_Out_Start_Flame,
    });
    self.box_ProximityTrigger_v2_13 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|363429312");
    l0:SetConnections({
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_13_OnOccupied,
    });
    self.box_Audio_Manager_19 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|440979131");
    l0:SetConnections({
        -- Out_Start_Flame,
        [1] = self.f_box_Audio_Manager_19_Out_Start_Flame,
    });
    self.box_Delay_v5_22 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|526837734");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_22_TimeElapsed,
    });
    self.box_Audio_Manager_17 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|695761389");
    l0:SetConnections({
        -- Out_Start_Flame,
        [1] = self.f_box_Audio_Manager_17_Out_Start_Flame,
    });
    self.box_Audio_Manager_14 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.Audio_Manager.debug.lua");
    l0 = self.box_Audio_Manager_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Audio_Manager_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|930997133");
    l0:SetConnections({
        -- Out_Start_Flame,
        [1] = self.f_box_Audio_Manager_14_Out_Start_Flame,
    });
    self.box_uni46_010_fireworks_20 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI46/UNI46_010/uni46_010_b10.uni46_010_fireworks.debug.lua");
    l0 = self.box_uni46_010_fireworks_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_uni46_010_fireworks_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|979579805");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ProximityTrigger_v2_13();
    l0 = self.box_ProximityTrigger_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|635645717", "635645717", "uni46_010_rampwayfires_End", "In", "box_ProximityTrigger_v2_13.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Audio_Manager_16_Out_Start_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_11();
    l0 = self.box_Audio_Manager_16;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1092825660", "1092825660", "uni46_010_rampwayfires_End", "box_Audio_Manager_16.Out_Start_Flame", "box_ParticleSystem_v3_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Audio_Manager_18_Out_Start_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_2();
    l0 = self.box_Audio_Manager_18;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|237083578", "237083578", "uni46_010_rampwayfires_End", "box_Audio_Manager_18.Out_Start_Flame", "box_ParticleSystem_v3_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Audio_Manager_15_Out_Start_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = self.box_Audio_Manager_15;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1635495428", "1635495428", "uni46_010_rampwayfires_End", "box_Audio_Manager_15.Out_Start_Flame", "box_ParticleSystem_v3_7.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_1_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_15();
    l0 = self.box_Audio_Manager_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|731634252", "731634252", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_1.Started", "box_Audio_Manager_15.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_9_Started()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|2118403617", "2118403617", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_9.Started", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ProximityTrigger_v2_13_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_ProximityTrigger_v2_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|558256984", "558256984", "uni46_010_rampwayfires_End", "box_ProximityTrigger_v2_13.OnOccupied", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Audio_Manager_19_Out_Start_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_3();
    l0 = self.box_Audio_Manager_19;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|712788167", "712788167", "uni46_010_rampwayfires_End", "box_Audio_Manager_19.Out_Start_Flame", "box_ParticleSystem_v3_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_4_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_17();
    l0 = self.box_Audio_Manager_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|653720130", "653720130", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_4.Started", "box_Audio_Manager_17.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_22_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_22;
    l1 = self.box_uni46_010_fireworks_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|529409004", "529409004", "uni46_010_rampwayfires_End", "box_Delay_v5_22.TimeElapsed", "box_uni46_010_fireworks_20.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, {
    });
end;

function export:f_box_ParticleSystem_v3_2_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_19();
    l0 = self.box_Audio_Manager_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|988948753", "988948753", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_2.Started", "box_Audio_Manager_19.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_12_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|627568787", "627568787", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_12.Started", "box_ParticleSystem_v3_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Audio_Manager_17_Out_Start_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = self.box_Audio_Manager_17;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1822299409", "1822299409", "uni46_010_rampwayfires_End", "box_Audio_Manager_17.Out_Start_Flame", "box_ParticleSystem_v3_6.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Audio_Manager_14_Out_Start_Flame()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_10();
    l0 = self.box_Audio_Manager_14;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1874951175", "1874951175", "uni46_010_rampwayfires_End", "box_Audio_Manager_14.Out_Start_Flame", "box_ParticleSystem_v3_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_10_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_18();
    l0 = self.box_Audio_Manager_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1283772092", "1283772092", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_10.Started", "box_Audio_Manager_18.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_6_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_14();
    l0 = self.box_Audio_Manager_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|357403162", "357403162", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_6.Started", "box_Audio_Manager_14.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_22();
    l0 = self.box_Delay_v5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|386413553", "386413553", "uni46_010_rampwayfires_End", "box_OutputOrder_v2_21.Out", "box_Delay_v5_22.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1950952950", "1950952950", "uni46_010_rampwayfires_End", "box_OutputOrder_v2_21.Out", "box_ParticleSystem_v3_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_11_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_5();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1047947627", "1047947627", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_11.Started", "box_ParticleSystem_v3_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_3_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_12();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1731072360", "1731072360", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_3.Started", "box_ParticleSystem_v3_12.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_8_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_9();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|389474642", "389474642", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_8.Started", "box_ParticleSystem_v3_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_5_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_8();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|868331025", "868331025", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_5.Started", "box_ParticleSystem_v3_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Audio_Manager_16();
    l0 = self.box_Audio_Manager_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|336311485", "336311485", "uni46_010_rampwayfires_End", "box_ParticleSystem_v3_7.Started", "box_Audio_Manager_16.In_Start_Flame", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame
    l0:Exec(1, params);
end;

function export:OnEnter_box_Audio_Manager_16()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2104192537949386413",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_18()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2104192555647252153",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_15()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2104192523810387627",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|291261529");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_1_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101344065879546895",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|339748539");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_9_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101344113216461848",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103262515025687432",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_19()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2104192553323607735",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|465825448");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_4_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101274826277692333",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_22()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|594430973");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_2_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101274849610605489",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|658253891");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_12_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101344063765617673",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_17()
    local params;
    DrawTextToScreen("Comment: Flame SFX (not covering each individual ones to avoid overloading audio)", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Audio_Manager')-- Comment: Flame SFX (not covering each individual ones to avoid overloading audio)");
    params = {
        -- Flame_Soundpoint,
        [1] = "2104192545163589297",
    };
    return params;
end;

function export:OnEnter_box_Audio_Manager_14()
    local params;
    params = {
        -- Flame_Soundpoint,
        [1] = "2104192548890228405",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1140974947");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_10_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101274849612702643",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1209007646");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_6_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101274837774279599",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1254414875");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1386327060");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_11_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101344104532155410",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1590325581");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_3_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101344063767714827",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|1806285611");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_8_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101344112673299478",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|2024419110");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_5_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101344112054639636",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI46\\UNI46_010\\uni46_010_b10.domino|@uni46_010_rampwayfires_End|2141614248");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_7_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2101344065877449741",
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
