LUAC�{  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_010/lt03_010_b10.domino
-- User graph: LT03_010_B10_Boundary_Player2
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="bBoundaryDialogActive" Type="Core|bool" />
    <DataIn Name="player_who_left" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerLookAtModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1913563929.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3833670976.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1638197647.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3688699080.bnk]], "CSoundResource");
        cboxRes:LoadResource([[248315507.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.LT03_010_B10 = nil;
    Globals.LT03_010_B10 = {
        Player = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_010/LT03_010_B10.LT03_010_B10_Boundary_Player2.debug.lua")] = {
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
                name = "bBoundaryDialogActive",
                type = "bool",
            },
            [1] = {
                name = "player_who_left",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/PostFx_v3.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "PostFxName",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerLookAtModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LookAtEntity",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Done",
                delayed = true,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendOutTime",
                type = "float",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "lockPlayer",
                type = "bool",
            },
            [3] = {
                name = "lockTime",
                type = "float",
            },
            [4] = {
                name = "lookTarget",
                type = "entity",
            },
            [5] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
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
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
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
        },
        dataInCount = 1,
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
    self._name = "LT03_010_B10_Boundary_Player2";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2";
    self.Out = DummyFunction;
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|348117472");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_PostFx_v3_7 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|600843725");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_7_Enabled,
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|612537478");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_13 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|666656676");
    l0:SetConnections({
    });
    self.box_PostFx_v3_5 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|759988072");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_5_Disabled,
    });
    self.box_Switch_3 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|773929769");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_3_Output_0,
                [1] = self.f_box_Switch_3_Output_1,
                [2] = self.f_box_Switch_3_Output_2,
                [3] = self.f_box_Switch_3_Output_3,
                [4] = self.f_box_Switch_3_Output_4,
            },
            count = 5,
        },
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|933554384");
    l0:SetConnections({
    });
    self.box_PlayerSpeedModifier_v3_8 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|994359679");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_8_ApplySpeedFactorOut,
    });
    self.box_PlayDialog_v6_10 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1225140876");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_12 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1297742311");
    l0:SetConnections({
    });
    self.box_PlayerSpeedModifier_v3_9 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1702025003");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_9_ApplySpeedFactorOut,
    });
    self.box_PlayerLookAtModifier_v3_6 = cbox:CreateBox("Domino/System/PlayerLookAtModifier_v3.lua");
    l0 = self.box_PlayerLookAtModifier_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerLookAtModifier_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|2107837327");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_PlayerLookAtModifier_v3_6_Started,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1158552414", "1158552414", "LT03_010_B10_Boundary_Player2", "In", "box_OutputOrder_v2_11.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerLookAtModifier_v3_6();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_PlayerLookAtModifier_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1289320610", "1289320610", "LT03_010_B10_Boundary_Player2", "box_Delay_v5_4.TimeElapsed", "box_PlayerLookAtModifier_v3_6.LookAtEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- LookAtEntity
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_7_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_PostFx_v3_7;
    l1 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|742521413", "742521413", "LT03_010_B10_Boundary_Player2", "box_PostFx_v3_7.Enabled", "box_Delay_v5_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PostFx_v3_5_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_8();
    l0 = self.box_PostFx_v3_5;
    l1 = self.box_PlayerSpeedModifier_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|476224252", "476224252", "LT03_010_B10_Boundary_Player2", "box_PostFx_v3_5.Disabled", "box_PlayerSpeedModifier_v3_8.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_Switch_3_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_10();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1986262911", "1986262911", "LT03_010_B10_Boundary_Player2", "box_Switch_3.Output", "box_PlayDialog_v6_10.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_3_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_13();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|817743754", "817743754", "LT03_010_B10_Boundary_Player2", "box_Switch_3.Output", "box_PlayDialog_v6_13.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_3_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1810482764", "1810482764", "LT03_010_B10_Boundary_Player2", "box_Switch_3.Output", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_3_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1922485617", "1922485617", "LT03_010_B10_Boundary_Player2", "box_Switch_3.Output", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_3_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_12();
    l0 = self.box_Switch_3;
    l1 = self.box_PlayDialog_v6_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|995430896", "995430896", "LT03_010_B10_Boundary_Player2", "box_Switch_3.Output", "box_PlayDialog_v6_12.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayerSpeedModifier_v3_8_ApplySpeedFactorOut()
    local l0;
    l0 = self.box_PlayerSpeedModifier_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1740086525", "1740086525", "LT03_010_B10_Boundary_Player2", "box_PlayerSpeedModifier_v3_8.ApplySpeedFactorOut", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_Compare_Boolean_14_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_3();
    l0 = self.box_Switch_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1259500901", "1259500901", "LT03_010_B10_Boundary_Player2", "box_Compare_Boolean_14.A_is_True", "box_Switch_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PlayerSpeedModifier_v3_9_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_7();
    l0 = self.box_PlayerSpeedModifier_v3_9;
    l1 = self.box_PostFx_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1949070779", "1949070779", "LT03_010_B10_Boundary_Player2", "box_PlayerSpeedModifier_v3_9.ApplySpeedFactorOut", "box_PostFx_v3_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_9();
    l0 = self.box_PlayerSpeedModifier_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|2037646567", "2037646567", "LT03_010_B10_Boundary_Player2", "box_OutputOrder_v2_11.Out", "box_PlayerSpeedModifier_v3_9.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_14();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|188420738", "188420738", "LT03_010_B10_Boundary_Player2", "box_OutputOrder_v2_11.Out", "box_Compare_Boolean_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerLookAtModifier_v3_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_5();
    l0 = self.box_PlayerLookAtModifier_v3_6;
    l1 = self.box_PostFx_v3_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|2062391143", "2062391143", "LT03_010_B10_Boundary_Player2", "box_PlayerLookAtModifier_v3_6.Started", "box_PostFx_v3_5.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_7()
    local params;
    params = {
        -- Pawns,
        [0] = self.player_who_left,
        -- PostFxName,
        [1] = "bloomfadetowhiteslow",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = self.player_who_left,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "248315507",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_13()
    local params;
    params = {
        -- Group,
        [0] = self.player_who_left,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1913563929",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_5()
    local params;
    params = {
        -- Pawns,
        [0] = self.player_who_left,
        -- PostFxName,
        [1] = "bloomfadetowhiteslow",
    };
    return params;
end;

function export:OnEnter_box_Switch_3()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = self.player_who_left,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3688699080",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_8()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.35,
        -- Players,
        [2] = self.player_who_left,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|1093561868");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_14_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bBoundaryDialogActive,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_10()
    local params;
    params = {
        -- Group,
        [0] = self.player_who_left,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1638197647",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_12()
    local params;
    params = {
        -- Group,
        [0] = self.player_who_left,
        -- RelevancyTime,
        [1] = 0,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3833670976",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_9()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = self.player_who_left,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_010\\LT03_010_B10.domino|@LT03_010_B10_Boundary_Player2|2049706304");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayerLookAtModifier_v3_6()
    local params;
    params = {
        -- blendOutTime,
        [0] = 0,
        -- blendTime,
        [1] = 0,
        -- lockPlayer,
        [2] = false,
        -- lockTime,
        [3] = 3,
        -- lookTarget,
        [4] = "2104076571739472072",
        -- Pawns,
        [5] = self.player_who_left,
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
	<DatasIn>
		<DataIn Name="bBoundaryDialogActive" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="player_who_left" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
