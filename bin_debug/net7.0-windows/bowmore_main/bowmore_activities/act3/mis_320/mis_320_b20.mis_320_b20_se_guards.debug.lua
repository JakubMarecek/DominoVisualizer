LUACJS  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_320/mis_320_b20.domino
-- User graph: MIS_320_B20_SE_Guards
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
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_320/mis_320_b20.MIS_320_B20_SE_Guards.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Stop",
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MultipleOR.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Input",
                dynamicType = 1,
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
    metadataTable[GetPathID("Domino/System/Narrative/PlaySequence_v8.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Play",
            },
            [2] = {
                name = "PlayFromStart",
            },
            [3] = {
                name = "Skip",
            },
            [4] = {
                name = "SPIn",
                dynamicType = 2,
            },
            [5] = {
                name = "Stop",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = true,
            },
            [2] = {
                name = "Skipped",
                delayed = true,
            },
            [3] = {
                name = "SPOut",
                dynamicType = 2,
                delayed = false,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "cleanupArrows",
                type = "bool",
            },
            [1] = {
                name = "IsSkippable",
                type = "bool",
            },
            [2] = {
                name = "MetaSequenceID",
                type = "int",
            },
            [3] = {
                name = "SceneEntity",
                type = "entity",
            },
            [4] = {
                name = "SequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "ShouldRemovePostFx",
                type = "bool",
            },
            [6] = {
                name = "SkipPostFx",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StartMetaSequence.lua")] = {
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
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Interrupt",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Interrupted",
                delayed = true,
            },
            [1] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ID",
                type = "int",
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
    self._name = "MIS_320_B20_SE_Guards";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards";
    self.Out = DummyFunction;
    self.MetaSequenceBeatUp = 0;
    self.MetaSequenceDragBody = 0;
    self.box_StopMetaSequence_v5_4 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|528674863");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_4_Stopped,
    });
    self.box_StartMetaSequence_9 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|649867663");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_9_Out,
    });
    self.box_StopMetaSequence_v5_8 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|655002445");
    l0:SetConnections({
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|701143480");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_StartMetaSequence_2 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|969010079");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_2_Out,
    });
    self.box_PlaySequence_v8_5 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1431152323");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_5_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_5_Skipped,
    });
    self.box_LookAtTrigger_v2_6 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1498903684");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_6_EnterFOV,
    });
    self.box_PlaySequence_v8_1 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1615603144");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_1_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_1_Skipped,
        -- Started,
        [4] = self.f_box_PlaySequence_v8_1_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_1_Stopped,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1711408280");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_StartMetaSequence_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|2045330912", "2045330912", "MIS_320_B20_SE_Guards", "In", "box_StartMetaSequence_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:Stop()
    local params, l0;
    params = self:OnEnter_box_PlaySequence_v8_1();
    l0 = self.box_PlaySequence_v8_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1528638597", "1528638597", "MIS_320_B20_SE_Guards", "Stop", "box_PlaySequence_v8_1.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(5, params);
end;

function export:f_box_StopMetaSequence_v5_4_Stopped()
    local l0;
    l0 = self.box_StopMetaSequence_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|959004296", "959004296", "MIS_320_B20_SE_Guards", "box_StopMetaSequence_v5_4.Stopped", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_StartMetaSequence_9_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_9_Out();
    params = self:OnEnter_box_PlaySequence_v8_5();
    l0 = self.box_StartMetaSequence_9;
    l1 = self.box_PlaySequence_v8_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|451822691", "451822691", "MIS_320_B20_SE_Guards", "box_StartMetaSequence_9.Out", "box_PlaySequence_v8_5.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_8();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_StopMetaSequence_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1219929125", "1219929125", "MIS_320_B20_SE_Guards", "box_MultipleOR_3.Out", "box_StopMetaSequence_v5_8.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_2_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_2_Out();
    params = self:OnEnter_box_PlaySequence_v8_1();
    l0 = self.box_StartMetaSequence_2;
    l1 = self.box_PlaySequence_v8_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1764541950", "1764541950", "MIS_320_B20_SE_Guards", "box_StartMetaSequence_2.Out", "box_PlaySequence_v8_1.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_5_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1025023250", "1025023250", "MIS_320_B20_SE_Guards", "box_PlaySequence_v8_5.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_5_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1832092247", "1832092247", "MIS_320_B20_SE_Guards", "box_PlaySequence_v8_5.Skipped", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_LookAtTrigger_v2_6_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_6;
    l1 = self.box_StartMetaSequence_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|490331088", "490331088", "MIS_320_B20_SE_Guards", "box_LookAtTrigger_v2_6.EnterFOV", "box_StartMetaSequence_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_1_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|645765527", "645765527", "MIS_320_B20_SE_Guards", "box_PlaySequence_v8_1.Finished", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_1_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|407185235", "407185235", "MIS_320_B20_SE_Guards", "box_PlaySequence_v8_1.Skipped", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_1_Started()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_6();
    l0 = self.box_PlaySequence_v8_1;
    l1 = self.box_LookAtTrigger_v2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|649966970", "649966970", "MIS_320_B20_SE_Guards", "box_PlaySequence_v8_1.Started", "box_LookAtTrigger_v2_6.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_1_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_1;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|1446040751", "1446040751", "MIS_320_B20_SE_Guards", "box_PlaySequence_v8_1.Stopped", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_4();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_StopMetaSequence_v5_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_320\\mis_320_b20.domino|@MIS_320_B20_SE_Guards|2084982598", "2084982598", "MIS_320_B20_SE_Guards", "box_MultipleOR_7.Out", "box_StopMetaSequence_v5_4.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:OnEnter_box_StopMetaSequence_v5_4()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceDragBody,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_8()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceBeatUp,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_5()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceDragBody,
        -- SceneEntity,
        [3] = "2108308351489160645",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/SE_M320/se_m320_dragbody.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_6()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- triggerId,
        [2] = "2108308617376571428",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_1()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceBeatUp,
        -- SceneEntity,
        [3] = "2108308646877208626",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/SE_M320/se_m320_beatup.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_9_Out()
    local l0;
    l0 = self.box_StartMetaSequence_9;
    self.MetaSequenceDragBody = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_2_Out()
    local l0;
    l0 = self.box_StartMetaSequence_2;
    self.MetaSequenceBeatUp = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Stop" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
