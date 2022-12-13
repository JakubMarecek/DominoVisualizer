LUACp -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_210/mis_210_debrief.domino
-- User graph: ManageFireAndNavlinks
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
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_210_DEBRIEF = nil;
    Globals.MIS_210_DEBRIEF = {
        eQgMMIS210 = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_210/MIS_210_DEBRIEF.ManageFireAndNavlinks.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
            },
        },
        controlInCount = 4,
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "ManageFireAndNavlinks";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks";
    self.Out = DummyFunction;
    self.box_NavLinkModifier_43 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|962724542");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_43_Deactivated,
    });
    self.box_NavLinkModifier_41 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|979141452");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_41_Deactivated,
    });
    self.box_NavLinkModifier_44 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1620687682");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_44_Deactivated,
    });
    self.box_NavLinkModifier_40 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1735655627");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_40_Deactivated,
    });
    self.box_NavLinkModifier_42 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1868988875");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_42_Deactivated,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_DynamicLightModifier_51();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|572643981", "572643981", "ManageFireAndNavlinks", "In", "box_DynamicLightModifier_51.SetEnabled", self, l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_12_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_18();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2066460960", "2066460960", "ManageFireAndNavlinks", "box_ParticleSystem_v3_12.Stopped", "box_StimsEmitter_v2_18.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_7_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_39();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1427787112", "1427787112", "ManageFireAndNavlinks", "box_ParticleSystem_v3_7.Started", "box_StimsEmitter_v2_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_37_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_11();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|464635791", "464635791", "ManageFireAndNavlinks", "box_StimsEmitter_v2_37.Enabled", "box_ParticleSystem_v3_11.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_4_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_37();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|874297738", "874297738", "ManageFireAndNavlinks", "box_ParticleSystem_v3_4.Started", "box_StimsEmitter_v2_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_25_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_40();
    l0 = self.box_NavLinkModifier_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1664677334", "1664677334", "ManageFireAndNavlinks", "box_StimsEmitter_v2_25.Disabled", "box_NavLinkModifier_40.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_21_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_32();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2103022338", "2103022338", "ManageFireAndNavlinks", "box_StimsEmitter_v2_21.Disabled", "box_DynamicLightModifier_32.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_23_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_28();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|844085019", "844085019", "ManageFireAndNavlinks", "box_ParticleSystem_v3_23.Stopped", "box_StimsEmitter_v2_28.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_14_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_9();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1602237630", "1602237630", "ManageFireAndNavlinks", "box_ParticleSystem_v3_14.Stopped", "box_StimsEmitter_v2_9.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_48_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_47();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|292278686", "292278686", "ManageFireAndNavlinks", "box_StimsEmitter_v2_48.Disabled", "box_StimsEmitter_v2_47.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_36_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_5();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2141296003", "2141296003", "ManageFireAndNavlinks", "box_ParticleSystem_v3_36.Started", "box_ParticleSystem_v3_5.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_22_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_20();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1713724777", "1713724777", "ManageFireAndNavlinks", "box_StimsEmitter_v2_22.Disabled", "box_ParticleSystem_v3_20.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_23();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|773561490", "773561490", "ManageFireAndNavlinks", "box_StimsEmitter_v2_24.Disabled", "box_ParticleSystem_v3_23.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_27_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_25();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1060461920", "1060461920", "ManageFireAndNavlinks", "box_ParticleSystem_v3_27.Stopped", "box_StimsEmitter_v2_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_31_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_13();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1901113954", "1901113954", "ManageFireAndNavlinks", "box_DynamicLightModifier_31.Disabled", "box_ParticleSystem_v3_13.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_8_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_34();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2072175687", "2072175687", "ManageFireAndNavlinks", "box_ParticleSystem_v3_8.Stopped", "box_DynamicLightModifier_34.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_15_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_29();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2033628235", "2033628235", "ManageFireAndNavlinks", "box_StimsEmitter_v2_15.Disabled", "box_DynamicLightModifier_29.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_19_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_1();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|950664994", "950664994", "ManageFireAndNavlinks", "box_StimsEmitter_v2_19.Enabled", "box_ParticleSystem_v3_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_35_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_22();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2039044417", "2039044417", "ManageFireAndNavlinks", "box_DynamicLightModifier_35.Enabled", "box_StimsEmitter_v2_22.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_46_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_50();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1387163846", "1387163846", "ManageFireAndNavlinks", "box_StimsEmitter_v2_46.Disabled", "box_TriggerState_v2_50.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_47_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_49();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|966826849", "966826849", "ManageFireAndNavlinks", "box_StimsEmitter_v2_47.Disabled", "box_StimsEmitter_v2_49.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_43_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_44();
    l0 = self.box_NavLinkModifier_43;
    l1 = self.box_NavLinkModifier_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1547306232", "1547306232", "ManageFireAndNavlinks", "box_NavLinkModifier_43.Deactivated", "box_NavLinkModifier_44.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_NavLinkModifier_41_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_42();
    l0 = self.box_NavLinkModifier_41;
    l1 = self.box_NavLinkModifier_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1392868298", "1392868298", "ManageFireAndNavlinks", "box_NavLinkModifier_41.Deactivated", "box_NavLinkModifier_42.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_34_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_16();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1287634006", "1287634006", "ManageFireAndNavlinks", "box_DynamicLightModifier_34.Enabled", "box_StimsEmitter_v2_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_33_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_8();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|755458417", "755458417", "ManageFireAndNavlinks", "box_DynamicLightModifier_33.Enabled", "box_ParticleSystem_v3_8.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_33();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|673037641", "673037641", "ManageFireAndNavlinks", "box_StimsEmitter_v2_17.Disabled", "box_DynamicLightModifier_33.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_28_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_27();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1607976778", "1607976778", "ManageFireAndNavlinks", "box_StimsEmitter_v2_28.Disabled", "box_ParticleSystem_v3_27.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_51_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_19();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1806604249", "1806604249", "ManageFireAndNavlinks", "box_DynamicLightModifier_51.Enabled", "box_StimsEmitter_v2_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_13_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_21();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1293984639", "1293984639", "ManageFireAndNavlinks", "box_ParticleSystem_v3_13.Stopped", "box_StimsEmitter_v2_21.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_26_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_24();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|171485249", "171485249", "ManageFireAndNavlinks", "box_ParticleSystem_v3_26.Stopped", "box_StimsEmitter_v2_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_6_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_3();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1633920828", "1633920828", "ManageFireAndNavlinks", "box_ParticleSystem_v3_6.Started", "box_ParticleSystem_v3_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_9_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_30();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|975367901", "975367901", "ManageFireAndNavlinks", "box_StimsEmitter_v2_9.Disabled", "box_DynamicLightModifier_30.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_3_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_36();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|511519428", "511519428", "ManageFireAndNavlinks", "box_ParticleSystem_v3_3.Started", "box_ParticleSystem_v3_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_5_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_38();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1492297349", "1492297349", "ManageFireAndNavlinks", "box_ParticleSystem_v3_5.Started", "box_StimsEmitter_v2_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_30_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_12();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|88546512", "88546512", "ManageFireAndNavlinks", "box_DynamicLightModifier_30.Disabled", "box_ParticleSystem_v3_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_18_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_31();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|358693806", "358693806", "ManageFireAndNavlinks", "box_StimsEmitter_v2_18.Disabled", "box_DynamicLightModifier_31.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_11_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_35();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1102349421", "1102349421", "ManageFireAndNavlinks", "box_ParticleSystem_v3_11.Stopped", "box_DynamicLightModifier_35.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_39_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|641010387", "641010387", "ManageFireAndNavlinks", "box_StimsEmitter_v2_39.Enabled", "box_ParticleSystem_v3_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_20_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_15();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|437555137", "437555137", "ManageFireAndNavlinks", "box_ParticleSystem_v3_20.Stopped", "box_StimsEmitter_v2_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_44_Deactivated()
    local l0;
    l0 = self.box_NavLinkModifier_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2106886450", "2106886450", "ManageFireAndNavlinks", "box_NavLinkModifier_44.Deactivated", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ParticleSystem_v3_1_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_2();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1879588924", "1879588924", "ManageFireAndNavlinks", "box_ParticleSystem_v3_1.Started", "box_ParticleSystem_v3_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_2_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_6();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1170695063", "1170695063", "ManageFireAndNavlinks", "box_ParticleSystem_v3_2.Started", "box_ParticleSystem_v3_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_49_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_46();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|332371552", "332371552", "ManageFireAndNavlinks", "box_StimsEmitter_v2_49.Disabled", "box_StimsEmitter_v2_46.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_32_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_10();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1009772902", "1009772902", "ManageFireAndNavlinks", "box_DynamicLightModifier_32.Disabled", "box_ParticleSystem_v3_10.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_40_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_41();
    l0 = self.box_NavLinkModifier_40;
    l1 = self.box_NavLinkModifier_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|908163159", "908163159", "ManageFireAndNavlinks", "box_NavLinkModifier_40.Deactivated", "box_NavLinkModifier_41.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_TriggerState_v2_50_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_45();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1096821394", "1096821394", "ManageFireAndNavlinks", "box_TriggerState_v2_50.Disabled", "box_StimsEmitter_v2_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_10_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_17();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1600159900", "1600159900", "ManageFireAndNavlinks", "box_ParticleSystem_v3_10.Stopped", "box_StimsEmitter_v2_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_38_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_7();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1970079668", "1970079668", "ManageFireAndNavlinks", "box_StimsEmitter_v2_38.Enabled", "box_ParticleSystem_v3_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_42_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_43();
    l0 = self.box_NavLinkModifier_42;
    l1 = self.box_NavLinkModifier_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|837807743", "837807743", "ManageFireAndNavlinks", "box_NavLinkModifier_42.Deactivated", "box_NavLinkModifier_43.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_16_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_48();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1854271115", "1854271115", "ManageFireAndNavlinks", "box_StimsEmitter_v2_16.Disabled", "box_StimsEmitter_v2_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_29_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_14();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|255920558", "255920558", "ManageFireAndNavlinks", "box_DynamicLightModifier_29.Disabled", "box_ParticleSystem_v3_14.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_45_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_26();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1171138390", "1171138390", "ManageFireAndNavlinks", "box_StimsEmitter_v2_45.Disabled", "box_ParticleSystem_v3_26.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_ParticleSystem_v3_12()
    local params, l0;
    DrawTextToScreen("Comment: RightGround", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: RightGround");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|46370207");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_12_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484199881760690",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|104536625");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_7_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484380071157696",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|118406440");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_37_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109846325068577071",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|203218292");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_4_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484393092374466",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|257264078");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_25_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109512505807094240",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|257736618");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_21_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511872666419493",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_23()
    local params, l0;
    DrawTextToScreen("Comment: MiddleStairs1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: MiddleStairs1");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|364625301");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_23_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484163892535212",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_14()
    local params, l0;
    DrawTextToScreen("Comment: MiddleRightGround", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: MiddleRightGround");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|432155309");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_14_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484196748615600",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|451371708");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_48_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077542728735163",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|537005963");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_36_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109846390042540350",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|545372962");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_22_Disabled,
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|599889483");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_24_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109512472242176450",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_27()
    local params, l0;
    DrawTextToScreen("Comment: MIddleStairs2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: MIddleStairs2");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|619481522");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_27_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483720592351136",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|656127191");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_31_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582090134635315",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_8()
    local params, l0;
    DrawTextToScreen("Comment: LeftJunk", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: LeftJunk");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|754256323");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_8_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484225171316666",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|790079619");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_15_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511819111448863",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|889745554");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_19_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2108725777362108752",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|891401711");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_35_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582107595522879",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|892186999");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_46_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077565573011913",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|943977211");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_47_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077552404994495",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_43()
    local params;
    params = {
        -- Entity,
        [0] = "2109996360662015725",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_41()
    local params;
    params = {
        -- Entity,
        [0] = "2109996360278236901",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|999408060");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_34_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582115008955219",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1035852015");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_33_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582112930677583",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1138953998");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_17_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511732866072851",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1140104788");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_28_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109512494761394630",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1143461365");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_51_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582126159512407",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_13()
    local params, l0;
    DrawTextToScreen("Comment: LeftGround", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: LeftGround");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1151180475");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_13_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484203931361204",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_26()
    local params, l0;
    DrawTextToScreen("Comment: DownStairs", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: DownStairs");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1166073287");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_26_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484154765729706",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1167401698");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_6_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483825766621094",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1241070173");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_9_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511702518186253",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1285386829");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_3_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484236745498556",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1302476446");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_5_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484247581482942",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1317077589");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_30_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582082173846319",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1521181230");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_18_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511645983162627",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_11()
    local params, l0;
    DrawTextToScreen("Comment: TopJunk", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: TopJunk");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1526259754");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_11_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483832064368552",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1526338147");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_39_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109846353843599671",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_20()
    local params, l0;
    DrawTextToScreen("Comment: MiddleGround", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: MiddleGround");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1592725636");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_20_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484179306602414",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_44()
    local params;
    params = {
        -- Entity,
        [0] = "2109996360854953713",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1638667349");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_1_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483747161169826",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1655305558");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_2_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109483751932190628",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1668063195");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_49_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077560588081604",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1725907560");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_32_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582092294701879",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_40()
    local params;
    params = {
        -- Entity,
        [0] = "2109996360085298913",
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1770907538");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_50_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2110077620220598737",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_10()
    local params, l0;
    DrawTextToScreen("Comment: MiddleJunk", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ParticleSystem_v3')-- Comment: MiddleJunk");
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1773894607");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_10_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2109484221157367736",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|1853163330");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_38_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109846343733229875",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_42()
    local params;
    params = {
        -- Entity,
        [0] = "2109996360469077737",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2009831074");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_16_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109511774511317273",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2017043212");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_29_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2109582104625955643",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_210\\MIS_210_DEBRIEF.domino|@ManageFireAndNavlinks|2072372744");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_45_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2110077570589399502",
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
