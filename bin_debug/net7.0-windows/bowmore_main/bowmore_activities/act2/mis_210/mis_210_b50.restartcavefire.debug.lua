LUAC{�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_b50.domino
-- User graph: RestartCaveFire
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
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_210_B50 = nil;
    Globals.MIS_210_B50 = {
        eQgMMIS210 = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_B50.RestartCaveFire.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
            [0] = {
                name = "dynamicLightId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
        stateless = true,
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
            [0] = {
                name = "StimsEmitter",
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
    self._name = "RestartCaveFire";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire";
    self.Out = DummyFunction;
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_ParticleSystem_v3_12();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|814073056", "814073056", "RestartCaveFire", "In", "box_ParticleSystem_v3_12.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_14_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_21();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|607630885", "607630885", "RestartCaveFire", "box_ParticleSystem_v3_14.Started", "box_DynamicLightModifier_21.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_1_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|548316088", "548316088", "RestartCaveFire", "box_StimsEmitter_v2_1.Enabled", "box_ParticleSystem_v3_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_17_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_5();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1268997271", "1268997271", "RestartCaveFire", "box_DynamicLightModifier_17.Enabled", "box_StimsEmitter_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_22_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1427985369", "1427985369", "RestartCaveFire", "box_StimsEmitter_v2_22.Enabled", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_StimsEmitter_v2_9_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_25();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|949748286", "949748286", "RestartCaveFire", "box_StimsEmitter_v2_9.Enabled", "box_StimsEmitter_v2_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_26_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_23();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1939100760", "1939100760", "RestartCaveFire", "box_StimsEmitter_v2_26.Enabled", "box_StimsEmitter_v2_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_18_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_8();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|349173949", "349173949", "RestartCaveFire", "box_DynamicLightModifier_18.Enabled", "box_StimsEmitter_v2_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_13_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|44090453", "44090453", "RestartCaveFire", "box_StimsEmitter_v2_13.Enabled", "box_ParticleSystem_v3_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_10_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_18();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1028241775", "1028241775", "RestartCaveFire", "box_ParticleSystem_v3_10.Started", "box_DynamicLightModifier_18.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_12_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_15();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1327416664", "1327416664", "RestartCaveFire", "box_ParticleSystem_v3_12.Started", "box_DynamicLightModifier_15.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_15_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_11();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|737405783", "737405783", "RestartCaveFire", "box_DynamicLightModifier_15.Enabled", "box_StimsEmitter_v2_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_8_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|768135011", "768135011", "RestartCaveFire", "box_StimsEmitter_v2_8.Enabled", "box_ParticleSystem_v3_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_21_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_9();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1783301097", "1783301097", "RestartCaveFire", "box_DynamicLightModifier_21.Enabled", "box_StimsEmitter_v2_9.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_2_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_14();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|155071051", "155071051", "RestartCaveFire", "box_StimsEmitter_v2_2.Enabled", "box_ParticleSystem_v3_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_19_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_1();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|2115932683", "2115932683", "RestartCaveFire", "box_DynamicLightModifier_19.Enabled", "box_StimsEmitter_v2_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_16_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_13();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1932518939", "1932518939", "RestartCaveFire", "box_DynamicLightModifier_16.Enabled", "box_StimsEmitter_v2_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_22();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1521739110", "1521739110", "RestartCaveFire", "box_StimsEmitter_v2_23.Enabled", "box_StimsEmitter_v2_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_6_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_20();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|154395274", "154395274", "RestartCaveFire", "box_ParticleSystem_v3_6.Started", "box_DynamicLightModifier_20.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_3_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_17();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|92872295", "92872295", "RestartCaveFire", "box_ParticleSystem_v3_3.Started", "box_DynamicLightModifier_17.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_20_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_2();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1636824848", "1636824848", "RestartCaveFire", "box_DynamicLightModifier_20.Enabled", "box_StimsEmitter_v2_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_16();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1714648409", "1714648409", "RestartCaveFire", "box_ParticleSystem_v3_7.Started", "box_DynamicLightModifier_16.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_11_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1678464243", "1678464243", "RestartCaveFire", "box_StimsEmitter_v2_11.Enabled", "box_ParticleSystem_v3_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_24_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_26();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|560504589", "560504589", "RestartCaveFire", "box_StimsEmitter_v2_24.Enabled", "box_StimsEmitter_v2_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_4_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_19();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|715469121", "715469121", "RestartCaveFire", "box_ParticleSystem_v3_4.Started", "box_DynamicLightModifier_19.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_5_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_10();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|66234004", "66234004", "RestartCaveFire", "box_StimsEmitter_v2_5.Enabled", "box_ParticleSystem_v3_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_25_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_24();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|100382008", "100382008", "RestartCaveFire", "box_StimsEmitter_v2_25.Enabled", "box_StimsEmitter_v2_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ParticleSystem_v3_14()
    local params, l0;
    DrawTextToScreen("Comment: LeftJunk", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: LeftJunk");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|35670331");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_14_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484225171316666",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|51961720");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_1_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511872666419493",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|113808868");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_17_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582082173846319",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|177159557");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_22_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077570589399502",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|227505087");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_9_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511774511317273",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|272915189");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_26_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077560588081604",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|292832286");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_18_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582090134635315",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|300053547");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_13_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511819111448863",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_10()
    local params, l0;
    DrawTextToScreen("Comment: RightGround", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: RightGround");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|331445380");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_10_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484199881760690",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_12()
    local params, l0;
    DrawTextToScreen("Comment: TopJunk", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: TopJunk");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|426925046");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_12_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483832064368552",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|439685747");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_15_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582107595522879",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|862801555");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_8_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511645983162627",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1017292832");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_21_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582115008955219",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1137917027");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_2_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511732866072851",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1200174260");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_19_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582092294701879",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1548313228");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_16_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582104625955643",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1606067497");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_23_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077565573011913",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_6()
    local params, l0;
    DrawTextToScreen("Comment: MiddleJunk", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: MiddleJunk");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1625260686");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_6_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484221157367736",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_3()
    local params, l0;
    DrawTextToScreen("Comment: MiddleRightGround", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: MiddleRightGround");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1639542785");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_3_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484196748615600",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1791262782");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_20_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582112930677583",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    DrawTextToScreen("Comment: MiddleGround", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: MiddleGround");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1960916344");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_7_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484179306602414",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|1965325897");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_11_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108726286930165351",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|2008405884");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_24_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077552404994495",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    DrawTextToScreen("Comment: LeftGround", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: LeftGround");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|2014614691");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_4_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484203931361204",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|2091440535");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_5_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511702518186253",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_B50.domino|@RestartCaveFire|2098246898");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_25_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077542728735163",
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
