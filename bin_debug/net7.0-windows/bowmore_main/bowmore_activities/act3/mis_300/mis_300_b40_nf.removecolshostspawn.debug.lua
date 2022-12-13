LUAC=f  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_300/mis_300_b40_nf.domino
-- User graph: RemoveColsHostSpawn
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.MIS_300_B40_nf = nil;
    Globals.MIS_300_B40_nf = {
        eIsShooter = nil,
        bHostage1Dead = false,
        bHostage2Dead = false,
        bHostage3Dead = false,
        gPlayerGroup = nil,
        bHostageEnoughSaved = false,
        iNumberOfChainlocks = 0,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_300/MIS_300_B40_nf.RemoveColsHostSpawn.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/SpawnAI.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Fail",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = true,
            },
            [3] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "EntitySpawner",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "mercsSpawned",
                type = "list",
            },
            [1] = {
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
            },
        },
        controlInCount = 3,
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
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
    self._name = "RemoveColsHostSpawn";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn";
    self.Out = DummyFunction;
    self.box_PhysicsModifier_15 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|147506480");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_15_Disabled,
    });
    self.box_PhysicsModifier_16 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|278939831");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_16_Disabled,
    });
    self.box_PhysicsModifier_2 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|494614338");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_2_Disabled,
    });
    self.box_PhysicsModifier_6 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|499082216");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_6_Disabled,
    });
    self.box_PhysicsModifier_5 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|602152914");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_5_Disabled,
    });
    self.box_PhysicsModifier_1 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|772891430");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_1_Disabled,
    });
    self.box_PhysicsModifier_13 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|846264392");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_13_Disabled,
    });
    self.box_PhysicsModifier_9 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|959356975");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_9_Disabled,
    });
    self.box_PhysicsModifier_4 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1180098435");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_4_Disabled,
    });
    self.box_PhysicsModifier_3 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1188150681");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_3_Disabled,
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1258232204");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_12_Spawned,
    });
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1286259710");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_10_Spawned,
    });
    self.box_PhysicsModifier_8 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1443036258");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_8_Disabled,
    });
    self.box_PhysicsModifier_7 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1524834157");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_7_Disabled,
    });
    self.box_PhysicsModifier_14 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1544701827");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_14_Disabled,
    });
    self.box_PhysicsModifier_17 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1759024964");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_17_Disabled,
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1766277073");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_11_Spawned,
    });
    self.box_PhysicsModifier_18 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1972830595");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_18_Disabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_PhysicsModifier_1();
    l0 = self.box_PhysicsModifier_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|161775863", "161775863", "RemoveColsHostSpawn", "In", "box_PhysicsModifier_1.SetDisabled", self, l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_PhysicsModifier_15_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_17();
    l0 = self.box_PhysicsModifier_15;
    l1 = self.box_PhysicsModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|804251316", "804251316", "RemoveColsHostSpawn", "box_PhysicsModifier_15.Disabled", "box_PhysicsModifier_17.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_16_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_5();
    l0 = self.box_PhysicsModifier_16;
    l1 = self.box_PhysicsModifier_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1562084776", "1562084776", "RemoveColsHostSpawn", "box_PhysicsModifier_16.Disabled", "box_PhysicsModifier_5.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_2_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_3();
    l0 = self.box_PhysicsModifier_2;
    l1 = self.box_PhysicsModifier_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1256635256", "1256635256", "RemoveColsHostSpawn", "box_PhysicsModifier_2.Disabled", "box_PhysicsModifier_3.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_6_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_7();
    l0 = self.box_PhysicsModifier_6;
    l1 = self.box_PhysicsModifier_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|2118493949", "2118493949", "RemoveColsHostSpawn", "box_PhysicsModifier_6.Disabled", "box_PhysicsModifier_7.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_5_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_6();
    l0 = self.box_PhysicsModifier_5;
    l1 = self.box_PhysicsModifier_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|298706237", "298706237", "RemoveColsHostSpawn", "box_PhysicsModifier_5.Disabled", "box_PhysicsModifier_6.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_1_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_2();
    l0 = self.box_PhysicsModifier_1;
    l1 = self.box_PhysicsModifier_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|230260438", "230260438", "RemoveColsHostSpawn", "box_PhysicsModifier_1.Disabled", "box_PhysicsModifier_2.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_13_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_14();
    l0 = self.box_PhysicsModifier_13;
    l1 = self.box_PhysicsModifier_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|227377398", "227377398", "RemoveColsHostSpawn", "box_PhysicsModifier_13.Disabled", "box_PhysicsModifier_14.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_9_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_PhysicsModifier_9;
    l1 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1178669349", "1178669349", "RemoveColsHostSpawn", "box_PhysicsModifier_9.Disabled", "box_SpawnAI_10.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PhysicsModifier_4_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_13();
    l0 = self.box_PhysicsModifier_4;
    l1 = self.box_PhysicsModifier_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1471454633", "1471454633", "RemoveColsHostSpawn", "box_PhysicsModifier_4.Disabled", "box_PhysicsModifier_13.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_3_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_4();
    l0 = self.box_PhysicsModifier_3;
    l1 = self.box_PhysicsModifier_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1316002953", "1316002953", "RemoveColsHostSpawn", "box_PhysicsModifier_3.Disabled", "box_PhysicsModifier_4.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_12_Spawned()
    local l0;
    l0 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|666143593", "666143593", "RemoveColsHostSpawn", "box_SpawnAI_12.Spawned", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SpawnAI_10_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_SpawnAI_10;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|776098335", "776098335", "RemoveColsHostSpawn", "box_SpawnAI_10.Spawned", "box_SpawnAI_11.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PhysicsModifier_8_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_9();
    l0 = self.box_PhysicsModifier_8;
    l1 = self.box_PhysicsModifier_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1722416758", "1722416758", "RemoveColsHostSpawn", "box_PhysicsModifier_8.Disabled", "box_PhysicsModifier_9.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_7_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_8();
    l0 = self.box_PhysicsModifier_7;
    l1 = self.box_PhysicsModifier_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|420765115", "420765115", "RemoveColsHostSpawn", "box_PhysicsModifier_7.Disabled", "box_PhysicsModifier_8.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_14_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_15();
    l0 = self.box_PhysicsModifier_14;
    l1 = self.box_PhysicsModifier_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1596125574", "1596125574", "RemoveColsHostSpawn", "box_PhysicsModifier_14.Disabled", "box_PhysicsModifier_15.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_18();
    l0 = self.box_PhysicsModifier_17;
    l1 = self.box_PhysicsModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1689579076", "1689579076", "RemoveColsHostSpawn", "box_PhysicsModifier_17.Disabled", "box_PhysicsModifier_18.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_11_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_SpawnAI_11;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|1061753011", "1061753011", "RemoveColsHostSpawn", "box_SpawnAI_11.Spawned", "box_SpawnAI_12.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PhysicsModifier_18_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_16();
    l0 = self.box_PhysicsModifier_18;
    l1 = self.box_PhysicsModifier_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_300\\MIS_300_B40_nf.domino|@RemoveColsHostSpawn|485881358", "485881358", "RemoveColsHostSpawn", "box_PhysicsModifier_18.Disabled", "box_PhysicsModifier_16.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:OnEnter_box_PhysicsModifier_15()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109192056262893174",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_16()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109191924159094340",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_2()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109191844156939816",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_6()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109193052133269335",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_5()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109193052133269333",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_1()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109191830246530598",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_13()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109191844156939816",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_9()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109192467822681820",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_4()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109192104677744252",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_3()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109191884806037049",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108598582222261413",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108323591008291046",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_8()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109192467820584666",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_7()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108598391742139458",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_14()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109191830246530598",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_17()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109192000440901212",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108598391742139458",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_18()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109192101009825402",
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
