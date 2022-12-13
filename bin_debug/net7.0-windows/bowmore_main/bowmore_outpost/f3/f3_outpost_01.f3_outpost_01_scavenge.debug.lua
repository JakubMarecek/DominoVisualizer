LUAC�#  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/f3/f3_outpost_01.domino
-- User graph: F3_Outpost_01_Scavenge
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Post_Completion.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/F3/F3_Outpost_01.F3_Outpost_01_Scavenge.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Post_Completion.debug.lua")] = {
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
            [0] = {
                name = "CustomScript",
                delayed = false,
            },
            [1] = {
                name = "Out",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "F3_Outpost_01_Scavenge";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge";
    self.box_SpawnAI_2 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge|228537941");
    l0:SetConnections({
    });
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge|1305185885");
    l0:SetConnections({
    });
    self.box_Brick_Outpost_Post_Completion_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Raids.Brick_Outpost_Post_Completion.debug.lua");
    l0 = self.box_Brick_Outpost_Post_Completion_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Outpost_Post_Completion_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge|1902863017");
    l0:SetConnections({
        -- CustomScript,
        [0] = self.f_box_Brick_Outpost_Post_Completion_15_CustomScript,
    });
end;

function export:In()
    local l0;
    l0 = self.box_Brick_Outpost_Post_Completion_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge|405910175", "405910175", "F3_Outpost_01_Scavenge", "In", "box_Brick_Outpost_Post_Completion_15.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local l0;
    l0 = self.box_Brick_Outpost_Post_Completion_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge|35095921", "35095921", "F3_Outpost_01_Scavenge", "OnLeaveZone", "box_Brick_Outpost_Post_Completion_15.OnLeaveZone", self, l0:GetLuaBox());
    -- OnLeaveZone
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_2();
    l0 = self.box_SpawnAI_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge|1590758612", "1590758612", "F3_Outpost_01_Scavenge", "box_OutputOrder_v2_1.Out", "box_SpawnAI_2.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge|1004875635", "1004875635", "F3_Outpost_01_Scavenge", "box_OutputOrder_v2_1.Out", "box_SpawnAI_3.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Brick_Outpost_Post_Completion_15_CustomScript()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_Brick_Outpost_Post_Completion_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge|1810160831", "1810160831", "F3_Outpost_01_Scavenge", "box_Brick_Outpost_Post_Completion_15.CustomScript", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_SpawnAI_2()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108723611675146668",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\F3\\F3_Outpost_01.domino|@F3_Outpost_01_Scavenge|1254932163");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108724140123886149",
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
