LUAC83  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_005/lt01_005_b20.domino
-- User graph: GAM_LT01_005_Restistant_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1425719391.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1888694797.bnk]], "CSoundResource");
        cboxRes:LoadResource([[213873543.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_005/LT01_005_B20.GAM_LT01_005_Restistant_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Interrupted",
                delayed = true,
            },
            [2] = {
                name = "Restarted",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "Mandatory",
                type = "bool",
            },
            [2] = {
                name = "SoundId",
                type = "Sound",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "GAM_LT01_005_Restistant_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20";
    self.box_Brick_PlayDialog_Relax_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|169659898");
    l0:SetConnections({
    });
    self.box_Brick_PlayDialog_Relax_3 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|451464830");
    l0:SetConnections({
    });
    self.box_Random_1 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|746442632");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_1_Output_0,
                [1] = self.f_box_Random_1_Output_1,
                [2] = self.f_box_Random_1_Output_2,
            },
            count = 3,
        },
    });
    self.box_Brick_PlayDialog_Relax_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|1445921744");
    l0:SetConnections({
    });
    self.box_Delay_v5_2 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|1504932612");
    l0:SetConnections({
        -- LoopingEnded,
        [0] = self.f_box_Delay_v5_2_LoopingEnded,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_2_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|622819943", "622819943", "GAM_LT01_005_Restistant_B20", "In", "box_Delay_v5_2.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Random_1_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_3();
    l0 = self.box_Random_1;
    l1 = self.box_Brick_PlayDialog_Relax_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|1481654417", "1481654417", "GAM_LT01_005_Restistant_B20", "box_Random_1.Output", "box_Brick_PlayDialog_Relax_3.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_1_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_4();
    l0 = self.box_Random_1;
    l1 = self.box_Brick_PlayDialog_Relax_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|2138868639", "2138868639", "GAM_LT01_005_Restistant_B20", "box_Random_1.Output", "box_Brick_PlayDialog_Relax_4.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_1_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_5();
    l0 = self.box_Random_1;
    l1 = self.box_Brick_PlayDialog_Relax_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|351735607", "351735607", "GAM_LT01_005_Restistant_B20", "box_Random_1.Output", "box_Brick_PlayDialog_Relax_5.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_2_LoopingEnded()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_2();
    l0 = self.box_Delay_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|51928743", "51928743", "GAM_LT01_005_Restistant_B20", "box_Delay_v5_2.LoopingEnded", "box_Delay_v5_2.Stop", l0:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Delay_v5_2_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Random_1();
    l0 = self.box_Delay_v5_2;
    l1 = self.box_Random_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_005\\LT01_005_B20.domino|@GAM_LT01_005_Restistant_B20|417876199", "417876199", "GAM_LT01_005_Restistant_B20", "box_Delay_v5_2.TimeElapsed", "box_Random_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_5()
    local params;
    params = {
        -- Group,
        [0] = "#0382900D",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "213873543",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_3()
    local params;
    params = {
        -- Group,
        [0] = "#0382900D",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "1888694797",
    };
    return params;
end;

function export:OnEnter_box_Random_1()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
                [0] = 0.3,
                [1] = 0.4,
                [2] = 0.3,
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_4()
    local params;
    params = {
        -- Group,
        [0] = "#0382900D",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "1425719391",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_2()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- nbLoop,
        [1] = 99,
        -- seconds,
        [2] = 10,
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
