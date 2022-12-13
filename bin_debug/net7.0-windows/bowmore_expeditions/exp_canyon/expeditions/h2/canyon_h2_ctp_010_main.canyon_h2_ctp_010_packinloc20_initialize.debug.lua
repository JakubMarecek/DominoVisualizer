LUAC�Y  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_main.domino
-- User graph: Canyon_H2_CTP_010_PackinLoc20_Initialize
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
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_H2_CTP_010_Main = nil;
    Globals.Canyon_H2_CTP_010_Main = {
        iExtractionPOIIndex = 0,
        iPackagePositionIndex = 0,
        iDifficulty = 0,
        iPlayerSpawnPOIIndex = 0,
        ePackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_PackinLoc20_Initialize.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Spawned",
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
    metadataTable[GetPathID("Domino/System/MissionBlockLayer.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
            [2] = {
                name = "Disable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
                delayed = false,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SpawnEntity",
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
    self._name = "Canyon_H2_CTP_010_PackinLoc20_Initialize";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize";
    self.Spawned = DummyFunction;
    self.box_Canyon_H2_CTP_010_LoadSpawn_2 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|474366682");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_2_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_8 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|506197635");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_8_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_1 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|544202520");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_1_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_6 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|859027157");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_6_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_3 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|876457583");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_3_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_4 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|994780308");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_4_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_5 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|1686519625");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_5_Success,
    });
    self.box_MultipleAND_v2_10 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|2005244011");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 3,
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
        [0] = self.f_box_MultipleAND_v2_10_Out,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_7 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|2079725886");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_7_Success,
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|1717736981", "1717736981", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "Start", "box_OutputOrder_v2_9.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_10();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_2;
    l1 = self.box_MultipleAND_v2_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|861143663", "861143663", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_2.Success", "box_MultipleAND_v2_10.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_8_Success()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_10();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_8;
    l1 = self.box_MultipleAND_v2_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|111097544", "111097544", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_8.Success", "box_MultipleAND_v2_10.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_1_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_2();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_1;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|605751537", "605751537", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_1.Success", "box_Canyon_H2_CTP_010_LoadSpawn_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_6_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_4();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_6;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|773164359", "773164359", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_6.Success", "box_Canyon_H2_CTP_010_LoadSpawn_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_3_Success()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_10();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_3;
    l1 = self.box_MultipleAND_v2_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|1010023069", "1010023069", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_3.Success", "box_MultipleAND_v2_10.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_4_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_5();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_4;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|1747549064", "1747549064", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_4.Success", "box_Canyon_H2_CTP_010_LoadSpawn_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_11_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|756752566", "756752566", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_MissionBlockLayer_11.Activated", "Spawned", clone:GetLuaBox(), self);
    self:Spawned();
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_7();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|977437124", "977437124", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_OutputOrder_v2_9.Out", "box_Canyon_H2_CTP_010_LoadSpawn_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_1();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|1615086568", "1615086568", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_OutputOrder_v2_9.Out", "box_Canyon_H2_CTP_010_LoadSpawn_1.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_6();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|18598577", "18598577", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_OutputOrder_v2_9.Out", "box_Canyon_H2_CTP_010_LoadSpawn_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_5_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_3();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_5;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|2056711583", "2056711583", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_5.Success", "box_Canyon_H2_CTP_010_LoadSpawn_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_11();
    l0 = self.box_MultipleAND_v2_10;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|351442169", "351442169", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_MultipleAND_v2_10.Out", "box_MissionBlockLayer_11.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_7_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_8();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_7;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|1056999979", "1056999979", "Canyon_H2_CTP_010_PackinLoc20_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_7.Success", "box_Canyon_H2_CTP_010_LoadSpawn_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_2()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2108217578091450777",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_8()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2108316256730881833",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_1()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2108217582677922265",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_6()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2108217557310771428",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_3()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2108217531725516831",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_4()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2108217543972884587",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|1098991480");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_11_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160323897016962",
        -- missionLayerId,
        [1] = "45174722406568513",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc20_Initialize|1133307127");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_5()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2108217564153778482",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_10()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_7()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2108691230272521397",
    };
    return params;
end;

-- Empty out anchor definitions
function export:Spawned()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Start" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Spawned" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
