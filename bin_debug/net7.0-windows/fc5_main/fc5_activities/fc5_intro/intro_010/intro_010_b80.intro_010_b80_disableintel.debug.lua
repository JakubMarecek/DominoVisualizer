LUAC�|  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b80.domino
-- User graph: Intro_010_B80_DisableIntel
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B80.Intro_010_B80_DisableIntel.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/RemoveEntity_v2.lua")] = {
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
                name = "Group",
                type = "group",
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
    self._name = "Intro_010_B80_DisableIntel";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel";
    self.box_RemoveEntity_v2_17 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|66728780");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_15 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|193016351");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|194546987");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_13_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_EntityStatusListener_19 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|556006792");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_19_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_19_Loaded,
    });
    self.box_EntityStatusListener_8 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|638328983");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_8_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_8_Loaded,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|897218598");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_12_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_RemoveEntity_v2_10 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1329076986");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_1 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1367962707");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_1_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_1_Loaded,
    });
    self.box_EntityStatusListener_14 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1428515770");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_14_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_14_Loaded,
    });
    self.box_RemoveEntity_v2_18 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1442466631");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_6 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1460400306");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1540716331");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_5_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_RemoveEntity_v2_22 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1692724396");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_21 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1706738149");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1729378630");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_2_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
    });
    self.box_RemoveEntity_v2_7 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1734407322");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_16 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1796001992");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_20 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1871183323");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_20_Loaded,
    });
    self.box_EntityStatusListener_11 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1897832392");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_11_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_11_Loaded,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|2121861550");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_9_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|701081586", "701081586", "Intro_010_B80_DisableIntel", "In", "box_EntityStatusListener_2.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_14();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_EntityStatusListener_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1083649461", "1083649461", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_13.Enabled", "box_EntityStatusListener_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_18();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_RemoveEntity_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1933180632", "1933180632", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_13.Loaded", "box_RemoveEntity_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_19_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_20();
    l0 = self.box_EntityStatusListener_19;
    l1 = self.box_EntityStatusListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|2080540242", "2080540242", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_19.Enabled", "box_EntityStatusListener_20.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_19_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_21();
    l0 = self.box_EntityStatusListener_19;
    l1 = self.box_RemoveEntity_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1641357160", "1641357160", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_19.Loaded", "box_RemoveEntity_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1703531187", "1703531187", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_8.Enabled", "box_EntityStatusListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_8_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_15();
    l0 = self.box_EntityStatusListener_8;
    l1 = self.box_RemoveEntity_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|406720491", "406720491", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_8.Loaded", "box_RemoveEntity_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_8();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_EntityStatusListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1784895265", "1784895265", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_12.Enabled", "box_EntityStatusListener_8.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_6();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_RemoveEntity_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1228188119", "1228188119", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_12.Loaded", "box_RemoveEntity_v2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_EntityStatusListener_1;
    l1 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1527080425", "1527080425", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_1.Enabled", "box_EntityStatusListener_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_1_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_3();
    l0 = self.box_EntityStatusListener_1;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1803539537", "1803539537", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_1.Loaded", "box_ParticleSystem_v3_3.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_14;
    l1 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|879644881", "879644881", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_14.Enabled", "box_EntityStatusListener_5.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_14_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_17();
    l0 = self.box_EntityStatusListener_14;
    l1 = self.box_RemoveEntity_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1930713424", "1930713424", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_14.Loaded", "box_RemoveEntity_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_19();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_EntityStatusListener_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|2090579657", "2090579657", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_5.Enabled", "box_EntityStatusListener_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_10();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_RemoveEntity_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1893566692", "1893566692", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_5.Loaded", "box_RemoveEntity_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_1();
    l0 = self.box_EntityStatusListener_2;
    l1 = self.box_EntityStatusListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1053131693", "1053131693", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_2.Enabled", "box_EntityStatusListener_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_4();
    l0 = self.box_EntityStatusListener_2;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|258265349", "258265349", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_2.Loaded", "box_ParticleSystem_v3_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_20_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_22();
    l0 = self.box_EntityStatusListener_20;
    l1 = self.box_RemoveEntity_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|2002055028", "2002055028", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_20.Loaded", "box_RemoveEntity_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_11;
    l1 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|2088909301", "2088909301", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_11.Enabled", "box_EntityStatusListener_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_11_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_16();
    l0 = self.box_EntityStatusListener_11;
    l1 = self.box_RemoveEntity_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|637960944", "637960944", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_11.Loaded", "box_RemoveEntity_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_9_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|1153073695", "1153073695", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_9.Enabled", "box_EntityStatusListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_7();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_RemoveEntity_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|824519031", "824519031", "Intro_010_B80_DisableIntel", "box_EntityStatusListener_9.Loaded", "box_RemoveEntity_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_RemoveEntity_v2_17()
    local params;
    params = {
        -- Group,
        [0] = "2103996817279589763",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|184717101");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104465257884860415",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_15()
    local params;
    params = {
        -- Group,
        [0] = "2103843254756733210",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104465280475381814",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B80.domino|@Intro_010_B80_DisableIntel|260534699");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2104631138971586414",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104912036556205543",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103843254756733210",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103843201172402443",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_10()
    local params;
    params = {
        -- Group,
        [0] = "2104173822342128143",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104465257884860415",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_14()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103996817279589763",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_18()
    local params;
    params = {
        -- Group,
        [0] = "2104465280475381814",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_6()
    local params;
    params = {
        -- Group,
        [0] = "2103843201172402443",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104173822342128143",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_22()
    local params;
    params = {
        -- Group,
        [0] = "2104912008888479203",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_21()
    local params;
    params = {
        -- Group,
        [0] = "2104912036556205543",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104631138971586414",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_7()
    local params;
    params = {
        -- Group,
        [0] = "2103843250994442519",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_16()
    local params;
    params = {
        -- Group,
        [0] = "2103940637169610440",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104912008888479203",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103940637169610440",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103843250994442519",
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
