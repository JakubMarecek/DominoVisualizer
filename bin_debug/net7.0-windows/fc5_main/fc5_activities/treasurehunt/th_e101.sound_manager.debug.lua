LUACi  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_e101.domino
-- User graph: Sound_Manager
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="Ceilling_Collapse_Entity" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1221116607.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1794285465.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3381977507.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3554471239.bnk]], "CSoundResource");
        cboxRes:LoadResource([[128659837.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In_Ceiling_Collapse",
            },
            [1] = {
                name = "In_Power_Up",
            },
            [2] = {
                name = "In_Start_Bunker_Trap_Door_Open",
            },
            [3] = {
                name = "In_Start_Fire_Sounds_Phase_A",
            },
            [4] = {
                name = "In_Start_Fire_Sounds_Phase_B",
            },
            [5] = {
                name = "In_Start_Flame_Jet",
            },
            [6] = {
                name = "In_Start_Sprinklers",
            },
            [7] = {
                name = "In_Stop_Flame_Jet",
            },
            [8] = {
                name = "In_Stop_Flickering_Light",
            },
        },
        controlInCount = 9,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Ceilling_Collapse_Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SimpleNode.lua")] = {
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
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
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SoundPointModifier.lua")] = {
        stateless = true,
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
                name = "Started",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "soundPoint",
                type = "entity",
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
    self._name = "Sound_Manager";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager";
    self.box_SoundModifier_v2_16 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|607180265");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_13 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1102837577");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_13_Started,
    });
    self.box_SoundModifier_v2_23 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1152876068");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_23_Started,
    });
    self.box_SoundModifier_v2_1 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1968611787");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_12 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|2042523635");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_12_Started,
    });
end;

function export:In_Ceiling_Collapse()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|875203616", "875203616", "Sound_Manager", "In_Ceiling_Collapse", "box_SoundModifier_v2_16.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:In_Power_Up()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_12();
    l0 = self.box_SoundModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1306139569", "1306139569", "Sound_Manager", "In_Power_Up", "box_SoundModifier_v2_12.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:In_Start_Bunker_Trap_Door_Open()
    local params, l0;
    params = self:OnEnter_box_SoundModifier_v2_1();
    l0 = self.box_SoundModifier_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1371509973", "1371509973", "Sound_Manager", "In_Start_Bunker_Trap_Door_Open", "box_SoundModifier_v2_1.Play", self, l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:In_Start_Fire_Sounds_Phase_A()
    local params, l0;
    params = self:OnEnter_box_SoundPointModifier_3();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1187139672", "1187139672", "Sound_Manager", "In_Start_Fire_Sounds_Phase_A", "box_SoundPointModifier_3.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In_Start_Fire_Sounds_Phase_B()
    local params, l0;
    params = self:OnEnter_box_SoundPointModifier_4();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1782948820", "1782948820", "Sound_Manager", "In_Start_Fire_Sounds_Phase_B", "box_SoundPointModifier_4.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In_Start_Flame_Jet()
    local params, l0;
    params = self:OnEnter_box_SoundPointModifier_15();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|465515902", "465515902", "Sound_Manager", "In_Start_Flame_Jet", "box_SoundPointModifier_15.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In_Start_Sprinklers()
    local params, l0;
    params = self:OnEnter_box_SoundPointModifier_17();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1833481117", "1833481117", "Sound_Manager", "In_Start_Sprinklers", "box_SoundPointModifier_17.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:In_Stop_Flame_Jet()
    local params, l0;
    params = self:OnEnter_box_SoundPointModifier_15();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|444411216", "444411216", "Sound_Manager", "In_Stop_Flame_Jet", "box_SoundPointModifier_15.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:In_Stop_Flickering_Light()
    local params, l0;
    params = self:OnEnter_box_SoundPointModifier_14();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|35100714", "35100714", "Sound_Manager", "In_Stop_Flickering_Light", "box_SoundPointModifier_14.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_4();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|562750965", "562750965", "Sound_Manager", "box_Simple_Node_21.Out", "box_SoundPointModifier_4.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_8_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_9();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|168917456", "168917456", "Sound_Manager", "box_SoundPointModifier_8.Started", "box_SoundPointModifier_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_8();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|152500546", "152500546", "Sound_Manager", "box_SoundPointModifier_7.Started", "box_SoundPointModifier_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_3_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_2();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|638987735", "638987735", "Sound_Manager", "box_SoundPointModifier_3.Started", "box_SoundPointModifier_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_5_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_6();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|556448", "556448", "Sound_Manager", "box_SoundPointModifier_5.Started", "box_SoundPointModifier_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_18_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_19();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|200262520", "200262520", "Sound_Manager", "box_SoundPointModifier_18.Started", "box_SoundPointModifier_19.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_9_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_11();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1699122013", "1699122013", "Sound_Manager", "box_SoundPointModifier_9.Started", "box_SoundPointModifier_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_22();
    l0 = self.box_SoundModifier_v2_13;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1001655018", "1001655018", "Sound_Manager", "box_SoundModifier_v2_13.Started", "box_SoundPointModifier_22.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_19_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_20();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1914576377", "1914576377", "Sound_Manager", "box_SoundPointModifier_19.Started", "box_SoundPointModifier_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_23_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_10();
    l0 = self.box_SoundModifier_v2_23;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1064351439", "1064351439", "Sound_Manager", "box_SoundModifier_v2_23.Started", "box_SoundPointModifier_10.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_22_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_23();
    l0 = self.box_SoundModifier_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1509131825", "1509131825", "Sound_Manager", "box_SoundPointModifier_22.Stopped", "box_SoundModifier_v2_23.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_SoundPointModifier_20_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1969395932", "1969395932", "Sound_Manager", "box_SoundPointModifier_20.Started", "box_Simple_Node_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_10_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_7();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1827331405", "1827331405", "Sound_Manager", "box_SoundPointModifier_10.Started", "box_SoundPointModifier_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundPointModifier_17_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_18();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|282060419", "282060419", "Sound_Manager", "box_SoundPointModifier_17.Started", "box_SoundPointModifier_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_12_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_13();
    l0 = self.box_SoundModifier_v2_12;
    l1 = self.box_SoundModifier_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1299378936", "1299378936", "Sound_Manager", "box_SoundModifier_v2_12.Started", "box_SoundModifier_v2_13.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_SoundPointModifier_11_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundPointModifier_5();
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1750489249", "1750489249", "Sound_Manager", "box_SoundPointModifier_11.Started", "box_SoundPointModifier_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|@Extinguish");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|226517694");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2100847479917417582",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|270266686");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_8_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2100847275447182057",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|318927931");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_7_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2100847259427037925",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|320609867");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_3_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2100847423132831482",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|488332478");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_5_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2102781867989148029",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_16()
    local params;
    params = {
        -- Pawns,
        [0] = self.Ceilling_Collapse_Entity,
        -- SoundId,
        [1] = "128659837",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|701251779");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2102781872565133697",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|725259578");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103458472872919926",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|953750661");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_18_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2103457919774254354",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|968071885");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_9_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2100847349650716274",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1081086297");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2100847475565827178",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_13()
    local params;
    params = {
        -- Pawns,
        [0] = "2100847423132831482",
        -- SoundId,
        [1] = "1221116607",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1125765183");
    l0:SetConnections({
    });
    params = {
        -- soundPoint,
        [0] = "2103458348587303788",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1145996842");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_19_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2103457929995773206",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_23()
    local params;
    params = {
        -- Pawns,
        [0] = "2103458348587303788",
        -- SoundId,
        [1] = "3554471239",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1192082143");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_22_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2103458348587303788",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1281901360");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_20_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2103457964162573834",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1486230970");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_10_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2100805830034085014",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|1849611376");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_17_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2103457372979601837",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_1()
    local params;
    params = {
        -- Pawns,
        [0] = "2101934313604916813",
        -- SoundId,
        [1] = "3381977507",
        -- SoundType,
        [2] = 27,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_12()
    local params;
    params = {
        -- Pawns,
        [0] = "2102781860215005561",
        -- SoundId,
        [1] = "1794285465",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@Sound_Manager|2146289043");
    l0:SetConnections({
        -- Started,
        [0] = self.f_box_SoundPointModifier_11_Started,
    });
    params = {
        -- soundPoint,
        [0] = "2102781860215005561",
    };
    return params;
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In_Ceiling_Collapse" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Power_Up" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Start_Bunker_Trap_Door_Open" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Start_Fire_Sounds_Phase_A" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Start_Fire_Sounds_Phase_B" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Start_Flame_Jet" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Start_Sprinklers" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Stop_Flame_Jet" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="In_Stop_Flickering_Light" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn>
		<DataIn Name="Ceilling_Collapse_Entity" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
