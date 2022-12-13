LUAC�5  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_020/lt01_020_b20.domino
-- User graph: LT01_020_B20_JS_Invincibility
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="e_JohnSeed" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPosition.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.LT01_020_B20 = nil;
    Globals.LT01_020_B20 = {
        PlayerToDelete = nil,
        JohnSeedToDelete = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_020/LT01_020_B20.LT01_020_B20_JS_Invincibility.debug.lua")] = {
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
                name = "e_JohnSeed",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GetPosition.lua")] = {
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
            [0] = {
                name = "id",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "pitch",
                type = "float",
            },
            [1] = {
                name = "roll",
                type = "float",
            },
            [2] = {
                name = "xPos",
                type = "float",
            },
            [3] = {
                name = "yaw",
                type = "float",
            },
            [4] = {
                name = "yPos",
                type = "float",
            },
            [5] = {
                name = "zPos",
                type = "float",
            },
        },
        dataOutCount = 6,
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT01_020_B20_JS_Invincibility";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility";
    self.Out = DummyFunction;
    self.f_positionDelta = 0;
    self.f_JohnPreviousZPosition = 0;
    self.eJohnSeed = nil;
    self.f_AbsPositionDelta = 0;
    self.f_JohnSeedZPosition = 0;
    self.i_progressAmount = 0;
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|56555499");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|1666770043");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPosition_1();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|1048701247", "1048701247", "LT01_020_B20_JS_Invincibility", "In", "box_GetPosition_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_10();
    l0 = self.box_Delay_v5_13;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|1996488920", "1996488920", "LT01_020_B20_JS_Invincibility", "box_Delay_v5_13.TimeElapsed", "box_PawnInvincibleState_v2_10.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPosition_1_Out()
    local l0;
    self:OnExit_box_GetPosition_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|797440202", "797440202", "LT01_020_B20_JS_Invincibility", "box_GetPosition_1.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PawnInvincibleState_v2_10_OnUnSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|518455330", "518455330", "LT01_020_B20_JS_Invincibility", "box_PawnInvincibleState_v2_10.OnUnSet", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Simple_Node_14_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|2026093369", "2026093369", "LT01_020_B20_JS_Invincibility", "box_Simple_Node_14.Out", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_14();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|1057267192", "1057267192", "LT01_020_B20_JS_Invincibility", "box_MultipleOR_9.Out", "box_Simple_Node_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetPosition_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPosition_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|122332317");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPosition_1_Out,
    });
    params = {
        -- id,
        [0] = self.e_JohnSeed,
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|526158624");
    l0:SetConnections({
        -- OnUnSet,
        [1] = self.f_box_PawnInvincibleState_v2_10_OnUnSet,
    });
    params = {
        -- Pawn,
        [0] = self.e_JohnSeed,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_020\\LT01_020_B20.domino|@LT01_020_B20_JS_Invincibility|1077917114");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_14_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPosition_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPosition.lua")];
    self.f_JohnPreviousZPosition = l0:GetDataOutValue(5);
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
	<DatasIn>
		<DataIn Name="e_JohnSeed" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
