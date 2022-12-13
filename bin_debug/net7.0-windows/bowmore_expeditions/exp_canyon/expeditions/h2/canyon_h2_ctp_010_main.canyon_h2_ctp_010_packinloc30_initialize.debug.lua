LUAC�@  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_main.domino
-- User graph: Canyon_H2_CTP_010_PackinLoc30_Initialize
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_PackinLoc30_Initialize.debug.lua")] = {
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
    self._name = "Canyon_H2_CTP_010_PackinLoc30_Initialize";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize";
    self.Spawned = DummyFunction;
    self.box_Canyon_H2_CTP_010_LoadSpawn_5 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|452923560");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_5_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_3 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|675313753");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_3_Success,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_2 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|1219133691");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_2_Success,
    });
    self.box_MultipleAND_v2_1 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|1406658343");
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
        [0] = self.f_box_MultipleAND_v2_1_Out,
    });
    self.box_Canyon_H2_CTP_010_LoadSpawn_4 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_LoadSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_LoadSpawn_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|1829784501");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_LoadSpawn_4_Success,
    });
end;

function export:Start()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|785976281", "785976281", "Canyon_H2_CTP_010_PackinLoc30_Initialize", "Start", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_5_Success()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_5;
    l1 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|55781737", "55781737", "Canyon_H2_CTP_010_PackinLoc30_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_5.Success", "box_MultipleAND_v2_1.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_3_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_4();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_3;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|570294662", "570294662", "Canyon_H2_CTP_010_PackinLoc30_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_3.Success", "box_Canyon_H2_CTP_010_LoadSpawn_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_2_Success()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_1();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_2;
    l1 = self.box_MultipleAND_v2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|2098246293", "2098246293", "Canyon_H2_CTP_010_PackinLoc30_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_2.Success", "box_MultipleAND_v2_1.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_7();
    l0 = self.box_MultipleAND_v2_1;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|333531630", "333531630", "Canyon_H2_CTP_010_PackinLoc30_Initialize", "box_MultipleAND_v2_1.Out", "box_MissionBlockLayer_7.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Canyon_H2_CTP_010_LoadSpawn_4_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_5();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_4;
    l1 = self.box_Canyon_H2_CTP_010_LoadSpawn_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|1701520458", "1701520458", "Canyon_H2_CTP_010_PackinLoc30_Initialize", "box_Canyon_H2_CTP_010_LoadSpawn_4.Success", "box_Canyon_H2_CTP_010_LoadSpawn_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_7_Activated()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|745764847", "745764847", "Canyon_H2_CTP_010_PackinLoc30_Initialize", "box_MissionBlockLayer_7.Activated", "Spawned", clone:GetLuaBox(), self);
    self:Spawned();
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_3();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|1961264134", "1961264134", "Canyon_H2_CTP_010_PackinLoc30_Initialize", "box_OutputOrder_v2_6.Out", "box_Canyon_H2_CTP_010_LoadSpawn_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_2();
    l0 = self.box_Canyon_H2_CTP_010_LoadSpawn_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|2065244360", "2065244360", "Canyon_H2_CTP_010_PackinLoc30_Initialize", "box_OutputOrder_v2_6.Out", "box_Canyon_H2_CTP_010_LoadSpawn_2.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_5()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109009487103788804",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_3()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109009452045698641",
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_2()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2108966863965784298",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_1()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_LoadSpawn_4()
    local params;
    params = {
        -- SpawnEntity,
        [0] = "2109009535795464024",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|1862635648");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_7_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160323897016962",
        -- missionLayerId,
        [1] = "36167523151757955",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_PackinLoc30_Initialize|1986501220");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
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
