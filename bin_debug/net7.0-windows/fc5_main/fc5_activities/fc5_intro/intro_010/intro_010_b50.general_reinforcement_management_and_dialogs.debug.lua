LUAC�8 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b50.domino
-- User graph: General_Reinforcement_Management_And_Dialogs
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetGroup.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B50.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3578815073.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2575577545.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2390352351.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2143316478.bnk]], "CSoundResource");
        cboxRes:LoadResource([[956050322.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2818971080.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1477497426.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1963730888.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.INTRO_010_B50 = nil;
    Globals.INTRO_010_B50 = {
        TutorialPlayed = false,
        player = nil,
        Players = nil,
        bReloaded = false,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B50.General_Reinforcement_Management_And_Dialogs.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "memberCountInState",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua")] = {
        stateless = false,
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
            [3] = {
                name = "Enable",
            },
        },
        controlInCount = 4,
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
            [3] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Mission_Flow/MissionAckTriggerListener.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
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
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
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
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetGroup.lua")] = {
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
                name = "Group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "group",
            },
        },
        dataOutCount = 1,
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
    self._name = "General_Reinforcement_Management_And_Dialogs";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs";
    self.diag_group = nil;
    self.box_OnceOnly_v3_64 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|28491709");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_64_Out_0,
            },
            count = 1,
        },
    });
    self.box_BaseMissionBlock_v2_2 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|56688130");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_2_Activated,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|93761055");
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
    self.box_GroupSizeListener_v5_50 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|241152011");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_50_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_50_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_50_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_50_MemberRemoved,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|263291806");
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
        [0] = self.f_box_MultipleOR_43_Out,
    });
    self.box_GroupSizeListener_v5_15 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|273485709");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_15_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_15_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_15_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_15_MemberRemoved,
    });
    self.box_Delay_v5_59 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|363122349");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_59_TimeElapsed,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|389414110");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|393171613");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_45_Started,
    });
    self.box_GroupSizeListener_v5_17 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|500806348");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_17_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_17_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_17_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_17_MemberRemoved,
    });
    self.box_RemoveEntity_v2_53 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|526292380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_53_Out,
    });
    self.box_StateListener_v2_62 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|530514040");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_62_Disabled,
        -- Enabled,
        [1] = self.f_box_StateListener_v2_62_Enabled,
        -- MemberInState,
        [2] = self.f_box_StateListener_v2_62_MemberInState,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|565672823");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_RemoveEntity_v2_57 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|594792321");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_57_Out,
    });
    self.box_MultipleOR_41 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|616641632");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 7,
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
        [0] = self.f_box_MultipleOR_41_Out,
    });
    self.box_PlayDialog_v6_18 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|625181018");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_18_Started,
    });
    self.box_MissionAckTriggerListener_52 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|646932210");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MissionAckTriggerListener_52_Disabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_52_Enter,
        -- Leave,
        [3] = self.f_box_MissionAckTriggerListener_52_Leave,
    });
    self.box_PlayDialog_v6_70 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|754111793");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_70_Started,
    });
    self.box_MissionAckTriggerListener_11 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|825557437");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MissionAckTriggerListener_11_Disabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_11_Enter,
        -- Leave,
        [3] = self.f_box_MissionAckTriggerListener_11_Leave,
    });
    self.box_ProximityRadiusListener_v3_22 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|826027790");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_22_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_22_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_22_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_22_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_22_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_22_SomeoneNear,
    });
    self.box_StateListener_v2_21 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|836197813");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_21_Disabled,
        -- Enabled,
        [1] = self.f_box_StateListener_v2_21_Enabled,
        -- MemberInState,
        [2] = self.f_box_StateListener_v2_21_MemberInState,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|855428967");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_ProximityRadiusListener_v3_27 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|923288748");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_27_AllFar,
    });
    self.box_ProximityRadiusListener_v3_49 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|955189894");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_49_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_49_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_49_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_49_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_49_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_49_SomeoneNear,
    });
    self.box_StateListener_v2_10 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|995485833");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_10_Disabled,
        -- Enabled,
        [1] = self.f_box_StateListener_v2_10_Enabled,
        -- MemberInState,
        [2] = self.f_box_StateListener_v2_10_MemberInState,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1010213551");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_RemoveEntity_v2_63 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1027554554");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_63_Out,
    });
    self.box_PlayDialog_v6_76 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1079297791");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_76_Started,
    });
    self.box_PlayDialog_v6_19 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1094284841");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_19_Started,
    });
    self.box_PlayDialog_v6_12 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1096942882");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_12_Started,
    });
    self.box_MultipleOR_65 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1117310146");
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
        [0] = self.f_box_MultipleOR_65_Out,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1122230833");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_ProximityRadiusListener_v3_14 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1174249528");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_14_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_14_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_14_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_14_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_14_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_14_SomeoneNear,
    });
    self.box_MissionAckTriggerListener_38 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1178128062");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MissionAckTriggerListener_38_Disabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_38_Enter,
        -- Leave,
        [3] = self.f_box_MissionAckTriggerListener_38_Leave,
    });
    self.box_ProximityRadiusListener_v3_42 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1207276718");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_42_AllFar,
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_42_AllNear,
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_42_Disabled,
        -- Enabled,
        [3] = self.f_box_ProximityRadiusListener_v3_42_Enabled,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_42_SomeoneFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_42_SomeoneNear,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1309104431");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_StateListener_v2_67 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1344061725");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StateListener_v2_67_Disabled,
        -- Enabled,
        [1] = self.f_box_StateListener_v2_67_Enabled,
        -- MemberInState,
        [2] = self.f_box_StateListener_v2_67_MemberInState,
    });
    self.box_MultipleOR_74 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1459803278");
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
        [0] = self.f_box_MultipleOR_74_Out,
    });
    self.box_RemoveEntity_v2_31 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1470969707");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_31_Out,
    });
    self.box_MissionAckTriggerListener_32 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1473363552");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_MissionAckTriggerListener_32_Disabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_32_Enter,
        -- Leave,
        [3] = self.f_box_MissionAckTriggerListener_32_Leave,
    });
    self.box_OnceOnly_v3_6 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1506354323");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_6_Out_0,
            },
            count = 1,
        },
    });
    self.box_GroupSizeListener_v5_75 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1513865690");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_75_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_75_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_75_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_75_MemberRemoved,
    });
    self.box_BaseMissionBlock_v2_66 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1521120756");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_66_Activated,
    });
    self.box_MultipleOR_61 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1699441457");
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
        [0] = self.f_box_MultipleOR_61_Out,
    });
    self.box_ProximityRadiusListener_v3_56 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1776087700");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_56_AllFar,
    });
    self.box_Switch_55 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1787020784");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 7,
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
                [0] = self.f_box_Switch_55_Output_0,
                [1] = self.f_box_Switch_55_Output_1,
                [2] = self.f_box_Switch_55_Output_2,
                [3] = self.f_box_Switch_55_Output_3,
                [4] = self.f_box_Switch_55_Output_4,
                [5] = self.f_box_Switch_55_Output_5,
                [6] = self.f_box_Switch_55_Output_6,
            },
            count = 7,
        },
    });
    self.box_ProximityRadiusListener_v3_71 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1794433800");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_71_AllFar,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1808839531");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1883402515");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_16_Started,
    });
    self.box_ProximityRadiusListener_v3_1 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1999764917");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_1_AllFar,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2012517417");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_MultipleOR_46 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2110119071");
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
        [0] = self.f_box_MultipleOR_46_Out,
    });
    self.box_PlayDialog_v6_4 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2114065722");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_4_Started,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2142034346");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1065085821", "1065085821", "General_Reinforcement_Management_And_Dialogs", "In", "box_OutputOrder_v2_73.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_64_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_66();
    l0 = self.box_OnceOnly_v3_64;
    l1 = self.box_BaseMissionBlock_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1239290052", "1239290052", "General_Reinforcement_Management_And_Dialogs", "box_OnceOnly_v3_64.Out", "box_BaseMissionBlock_v2_66.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_34_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_50();
    l0 = self.box_GroupSizeListener_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|492763659", "492763659", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_34.Activated", "box_GroupSizeListener_v5_50.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_34_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_1();
    l0 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|251025185", "251025185", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_34.Deactivated", "box_ProximityRadiusListener_v3_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_34_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_50();
    l0 = self.box_GroupSizeListener_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2114939772", "2114939772", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_34.Disabled", "box_GroupSizeListener_v5_50.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_BaseMissionBlock_v2_2_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_BaseMissionBlock_v2_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1468626669", "1468626669", "General_Reinforcement_Management_And_Dialogs", "box_BaseMissionBlock_v2_2.Activated", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_52();
    l0 = self.box_MultipleOR_9;
    l1 = self.box_MissionAckTriggerListener_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1769255019", "1769255019", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_9.Out", "box_MissionAckTriggerListener_52.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_50_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_31();
    l0 = self.box_GroupSizeListener_v5_50;
    l1 = self.box_RemoveEntity_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|500073238", "500073238", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_50.Disabled", "box_RemoveEntity_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_50_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_21();
    l0 = self.box_GroupSizeListener_v5_50;
    l1 = self.box_StateListener_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1163929683", "1163929683", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_50.Enabled", "box_StateListener_v2_21.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_50_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_50;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1371274441", "1371274441", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_50.MemberRemoved", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_62();
    l0 = self.box_MultipleOR_43;
    l1 = self.box_StateListener_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1521785823", "1521785823", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_43.Out", "box_StateListener_v2_62.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(3, params);
end;

function export:f_box_GroupSizeListener_v5_15_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_53();
    l0 = self.box_GroupSizeListener_v5_15;
    l1 = self.box_RemoveEntity_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|767994719", "767994719", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_15.Disabled", "box_RemoveEntity_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_67();
    l0 = self.box_GroupSizeListener_v5_15;
    l1 = self.box_StateListener_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1862307238", "1862307238", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_15.Enabled", "box_StateListener_v2_67.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_15_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_15;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|501423921", "501423921", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_15.MemberRemoved", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_59_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_59;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|220248336", "220248336", "General_Reinforcement_Management_And_Dialogs", "box_Delay_v5_59.TimeElapsed", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_MultipleOR_33;
    l1 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|989718915", "989718915", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_33.Out", "box_Delay_v5_59.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_45_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_45;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1406211915", "1406211915", "General_Reinforcement_Management_And_Dialogs", "box_PlayDialog_v6_45.Started", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_MissionBlockLayer_48_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_17();
    l0 = self.box_GroupSizeListener_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|842270251", "842270251", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_48.Activated", "box_GroupSizeListener_v5_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_48_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_71();
    l0 = self.box_ProximityRadiusListener_v3_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1313312221", "1313312221", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_48.Deactivated", "box_ProximityRadiusListener_v3_71.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_48_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_17();
    l0 = self.box_GroupSizeListener_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|743385110", "743385110", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_48.Disabled", "box_GroupSizeListener_v5_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1785610805", "1785610805", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_73.Out", "box_Delay_v5_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_35();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1727152636", "1727152636", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_73.Out", "box_GetActivityFact_35.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_72();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1092529226", "1092529226", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_73.Out", "box_GetActivityFact_72.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_73_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1886564997", "1886564997", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_73.Out", "box_Delay_v5_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v5_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_57();
    l0 = self.box_GroupSizeListener_v5_17;
    l1 = self.box_RemoveEntity_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2103205431", "2103205431", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_17.Disabled", "box_RemoveEntity_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_17_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_62();
    l0 = self.box_GroupSizeListener_v5_17;
    l1 = self.box_StateListener_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|315963581", "315963581", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_17.Enabled", "box_StateListener_v2_62.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_17_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_17;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1325518900", "1325518900", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_17.MemberRemoved", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_53_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_53;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|274611186", "274611186", "General_Reinforcement_Management_And_Dialogs", "box_RemoveEntity_v2_53.Out", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StateListener_v2_62_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_14();
    l0 = self.box_StateListener_v2_62;
    l1 = self.box_ProximityRadiusListener_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1875746711", "1875746711", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_62.Disabled", "box_ProximityRadiusListener_v3_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_62_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_14();
    l0 = self.box_StateListener_v2_62;
    l1 = self.box_ProximityRadiusListener_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|392847692", "392847692", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_62.Enabled", "box_ProximityRadiusListener_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_62_MemberInState()
    local l0, l1;
    l0 = self.box_StateListener_v2_62;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|902138410", "902138410", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_62.MemberInState", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_54_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|550872701", "550872701", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_54.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_54_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1733176518", "1733176518", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_54.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1782101107", "1782101107", "General_Reinforcement_Management_And_Dialogs", "box_Delay_v5_30.TimeElapsed", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_57_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_57;
    l1 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1093795870", "1093795870", "General_Reinforcement_Management_And_Dialogs", "box_RemoveEntity_v2_57.Out", "box_MultipleOR_46.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_59();
    l0 = self.box_MultipleOR_41;
    l1 = self.box_Delay_v5_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1646005937", "1646005937", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_41.Out", "box_Delay_v5_59.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_18_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_18;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|122695940", "122695940", "General_Reinforcement_Management_And_Dialogs", "box_PlayDialog_v6_18.Started", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MissionAckTriggerListener_52_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_60();
    l0 = self.box_MissionAckTriggerListener_52;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|283428621", "283428621", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_52.Disabled", "box_MissionBlockLayer_60.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_52_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_60();
    l0 = self.box_MissionAckTriggerListener_52;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|295235490", "295235490", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_52.Enter", "box_MissionBlockLayer_60.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_52_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_56();
    l0 = self.box_MissionAckTriggerListener_52;
    l1 = self.box_ProximityRadiusListener_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2078781559", "2078781559", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_52.Leave", "box_ProximityRadiusListener_v3_56.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1185954388", "1185954388", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_77.Out", "box_MultipleOR_37.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2097173977", "2097173977", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_77.Out", "box_MultipleOR_46.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_70_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_70;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1356906677", "1356906677", "General_Reinforcement_Management_And_Dialogs", "box_PlayDialog_v6_70.Started", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionAckTriggerListener_11_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_48();
    l0 = self.box_MissionAckTriggerListener_11;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|927637237", "927637237", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_11.Disabled", "box_MissionBlockLayer_48.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_11_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_48();
    l0 = self.box_MissionAckTriggerListener_11;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|797891461", "797891461", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_11.Enter", "box_MissionBlockLayer_48.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_11_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_71();
    l0 = self.box_MissionAckTriggerListener_11;
    l1 = self.box_ProximityRadiusListener_v3_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2067789919", "2067789919", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_11.Leave", "box_ProximityRadiusListener_v3_71.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_22_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_22;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1302128772", "1302128772", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_22.Disabled", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ProximityRadiusListener_v3_22_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_29();
    l0 = self.box_ProximityRadiusListener_v3_22;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1878377577", "1878377577", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_22.SomeoneNear", "box_SetGroup_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_21_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_42();
    l0 = self.box_StateListener_v2_21;
    l1 = self.box_ProximityRadiusListener_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|628490476", "628490476", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_21.Disabled", "box_ProximityRadiusListener_v3_42.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_21_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_42();
    l0 = self.box_StateListener_v2_21;
    l1 = self.box_ProximityRadiusListener_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1655215180", "1655215180", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_21.Enabled", "box_ProximityRadiusListener_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_21_MemberInState()
    local l0, l1;
    l0 = self.box_StateListener_v2_21;
    l1 = self.box_MultipleOR_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1647579334", "1647579334", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_21.MemberInState", "box_MultipleOR_65.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_38();
    l0 = self.box_MultipleOR_5;
    l1 = self.box_MissionAckTriggerListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|683932537", "683932537", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_5.Out", "box_MissionAckTriggerListener_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_60_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_75();
    l0 = self.box_GroupSizeListener_v5_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|971279988", "971279988", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_60.Activated", "box_GroupSizeListener_v5_75.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_60_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_56();
    l0 = self.box_ProximityRadiusListener_v3_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|930332723", "930332723", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_60.Deactivated", "box_ProximityRadiusListener_v3_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_60_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_75();
    l0 = self.box_GroupSizeListener_v5_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|395553283", "395553283", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_60.Disabled", "box_GroupSizeListener_v5_75.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_GetActivityFact_35_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2129688674", "2129688674", "General_Reinforcement_Management_And_Dialogs", "box_GetActivityFact_35.FactSet", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_27_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_40();
    l0 = self.box_ProximityRadiusListener_v3_27;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|842822808", "842822808", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_27.AllFar", "box_MissionBlockLayer_40.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_49_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_49;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1731809484", "1731809484", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_49.Disabled", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_49_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_13();
    l0 = self.box_ProximityRadiusListener_v3_49;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2102552300", "2102552300", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_49.SomeoneNear", "box_SetGroup_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StateListener_v2_10_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_22();
    l0 = self.box_StateListener_v2_10;
    l1 = self.box_ProximityRadiusListener_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|123689645", "123689645", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_10.Disabled", "box_ProximityRadiusListener_v3_22.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_10_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_22();
    l0 = self.box_StateListener_v2_10;
    l1 = self.box_ProximityRadiusListener_v3_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|78623436", "78623436", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_10.Enabled", "box_ProximityRadiusListener_v3_22.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_10_MemberInState()
    local l0, l1;
    l0 = self.box_StateListener_v2_10;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1826741727", "1826741727", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_10.MemberInState", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_10();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_StateListener_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|936981202", "936981202", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_3.Out", "box_StateListener_v2_10.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(3, params);
end;

function export:f_box_RemoveEntity_v2_63_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_63;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1207257365", "1207257365", "General_Reinforcement_Management_And_Dialogs", "box_RemoveEntity_v2_63.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_76_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_76;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|235172547", "235172547", "General_Reinforcement_Management_And_Dialogs", "box_PlayDialog_v6_76.Started", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_PlayDialog_v6_19;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|271271178", "271271178", "General_Reinforcement_Management_And_Dialogs", "box_PlayDialog_v6_19.Started", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_12_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_12;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|116737319", "116737319", "General_Reinforcement_Management_And_Dialogs", "box_PlayDialog_v6_12.Started", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1682801206", "1682801206", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_58.Out", "box_MultipleOR_41.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_55();
    l0 = self.box_Switch_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1632688149", "1632688149", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_58.Out", "box_Switch_55.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_21();
    l0 = self.box_MultipleOR_65;
    l1 = self.box_StateListener_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|505794536", "505794536", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_65.Out", "box_StateListener_v2_21.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(3, params);
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_32();
    l0 = self.box_MultipleOR_37;
    l1 = self.box_MissionAckTriggerListener_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1122759597", "1122759597", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_37.Out", "box_MissionAckTriggerListener_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1986605297", "1986605297", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_47.Out", "box_MultipleOR_61.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|325511409", "325511409", "General_Reinforcement_Management_And_Dialogs", "box_OutputOrder_v2_47.Out", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityRadiusListener_v3_14_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|262669633", "262669633", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_14.Disabled", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_14_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_23();
    l0 = self.box_ProximityRadiusListener_v3_14;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|64963693", "64963693", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_14.SomeoneNear", "box_SetGroup_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetGroup_8_Out()
    local l0;
    self:OnExit_box_SetGroup_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1650613092", "1650613092", "General_Reinforcement_Management_And_Dialogs", "box_SetGroup_8.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MissionAckTriggerListener_38_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = self.box_MissionAckTriggerListener_38;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1819497324", "1819497324", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_38.Disabled", "box_MissionBlockLayer_34.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_38_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = self.box_MissionAckTriggerListener_38;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|37176178", "37176178", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_38.Enter", "box_MissionBlockLayer_34.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_38_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_1();
    l0 = self.box_MissionAckTriggerListener_38;
    l1 = self.box_ProximityRadiusListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|485357261", "485357261", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_38.Leave", "box_ProximityRadiusListener_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_42_Disabled()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_42;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|573632539", "573632539", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_42.Disabled", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityRadiusListener_v3_42_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_8();
    l0 = self.box_ProximityRadiusListener_v3_42;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|146544395", "146544395", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_42.SomeoneNear", "box_SetGroup_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_20;
    l1 = self.box_MultipleOR_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1746651507", "1746651507", "General_Reinforcement_Management_And_Dialogs", "box_Delay_v5_20.TimeElapsed", "box_MultipleOR_61.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StateListener_v2_67_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_49();
    l0 = self.box_StateListener_v2_67;
    l1 = self.box_ProximityRadiusListener_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|334630640", "334630640", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_67.Disabled", "box_ProximityRadiusListener_v3_49.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StateListener_v2_67_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_49();
    l0 = self.box_StateListener_v2_67;
    l1 = self.box_ProximityRadiusListener_v3_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|441709857", "441709857", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_67.Enabled", "box_ProximityRadiusListener_v3_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StateListener_v2_67_MemberInState()
    local l0, l1;
    l0 = self.box_StateListener_v2_67;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|603919426", "603919426", "General_Reinforcement_Management_And_Dialogs", "box_StateListener_v2_67.MemberInState", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityFact_72_FactSet()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1019114164", "1019114164", "General_Reinforcement_Management_And_Dialogs", "box_GetActivityFact_72.FactSet", "box_MultipleOR_74.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_74_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_74;
    l1 = self.box_OnceOnly_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1428005894", "1428005894", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_74.Out", "box_OnceOnly_v3_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_31_Out()
    local l0, l1;
    l0 = self.box_RemoveEntity_v2_31;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1614837491", "1614837491", "General_Reinforcement_Management_And_Dialogs", "box_RemoveEntity_v2_31.Out", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionAckTriggerListener_32_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_40();
    l0 = self.box_MissionAckTriggerListener_32;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1844139479", "1844139479", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_32.Disabled", "box_MissionBlockLayer_40.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_32_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_40();
    l0 = self.box_MissionAckTriggerListener_32;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1651304074", "1651304074", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_32.Enter", "box_MissionBlockLayer_40.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_32_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_27();
    l0 = self.box_MissionAckTriggerListener_32;
    l1 = self.box_ProximityRadiusListener_v3_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|91007674", "91007674", "General_Reinforcement_Management_And_Dialogs", "box_MissionAckTriggerListener_32.Leave", "box_ProximityRadiusListener_v3_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetGroup_23_Out()
    local l0;
    self:OnExit_box_SetGroup_23_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1214653061", "1214653061", "General_Reinforcement_Management_And_Dialogs", "box_SetGroup_23.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OnceOnly_v3_6_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_2();
    l0 = self.box_OnceOnly_v3_6;
    l1 = self.box_BaseMissionBlock_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|394930025", "394930025", "General_Reinforcement_Management_And_Dialogs", "box_OnceOnly_v3_6.Out", "box_BaseMissionBlock_v2_2.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_75_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_63();
    l0 = self.box_GroupSizeListener_v5_75;
    l1 = self.box_RemoveEntity_v2_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|13181145", "13181145", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_75.Disabled", "box_RemoveEntity_v2_63.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_75_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_10();
    l0 = self.box_GroupSizeListener_v5_75;
    l1 = self.box_StateListener_v2_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|51248335", "51248335", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_75.Enabled", "box_StateListener_v2_10.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_75_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_75;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1377739470", "1377739470", "General_Reinforcement_Management_And_Dialogs", "box_GroupSizeListener_v5_75.MemberRemoved", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetGroup_13_Out()
    local l0;
    self:OnExit_box_SetGroup_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1286249334", "1286249334", "General_Reinforcement_Management_And_Dialogs", "box_SetGroup_13.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_BaseMissionBlock_v2_66_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_54();
    l0 = self.box_BaseMissionBlock_v2_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1416561631", "1416561631", "General_Reinforcement_Management_And_Dialogs", "box_BaseMissionBlock_v2_66.Activated", "box_OutputOrder_v2_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_61_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_61;
    l1 = self.box_OnceOnly_v3_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|187444195", "187444195", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_61.Out", "box_OnceOnly_v3_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityRadiusListener_v3_56_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_60();
    l0 = self.box_ProximityRadiusListener_v3_56;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1169488842", "1169488842", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_56.AllFar", "box_MissionBlockLayer_60.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_55_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_19();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|382600149", "382600149", "General_Reinforcement_Management_And_Dialogs", "box_Switch_55.Output", "box_PlayDialog_v6_19.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_55_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_12();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|259963795", "259963795", "General_Reinforcement_Management_And_Dialogs", "box_Switch_55.Output", "box_PlayDialog_v6_12.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_55_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_70();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2058925393", "2058925393", "General_Reinforcement_Management_And_Dialogs", "box_Switch_55.Output", "box_PlayDialog_v6_70.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_55_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_76();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1345185072", "1345185072", "General_Reinforcement_Management_And_Dialogs", "box_Switch_55.Output", "box_PlayDialog_v6_76.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_55_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_18();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1299934823", "1299934823", "General_Reinforcement_Management_And_Dialogs", "box_Switch_55.Output", "box_PlayDialog_v6_18.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_55_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1052518028", "1052518028", "General_Reinforcement_Management_And_Dialogs", "box_Switch_55.Output", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_55_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_Switch_55;
    l1 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1535721565", "1535721565", "General_Reinforcement_Management_And_Dialogs", "box_Switch_55.Output", "box_PlayDialog_v6_4.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_71_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_48();
    l0 = self.box_ProximityRadiusListener_v3_71;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|816278795", "816278795", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_71.AllFar", "box_MissionBlockLayer_48.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_67();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_StateListener_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|344908582", "344908582", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_36.Out", "box_StateListener_v2_67.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(3, params);
end;

function export:f_box_PlayDialog_v6_16_Started()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_MultipleOR_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|525347668", "525347668", "General_Reinforcement_Management_And_Dialogs", "box_PlayDialog_v6_16.Started", "box_MultipleOR_41.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_ProximityRadiusListener_v3_1_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_34();
    l0 = self.box_ProximityRadiusListener_v3_1;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|675319928", "675319928", "General_Reinforcement_Management_And_Dialogs", "box_ProximityRadiusListener_v3_1.AllFar", "box_MissionBlockLayer_34.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_24;
    l1 = self.box_MultipleOR_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1675013234", "1675013234", "General_Reinforcement_Management_And_Dialogs", "box_Delay_v5_24.TimeElapsed", "box_MultipleOR_74.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_40_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_15();
    l0 = self.box_GroupSizeListener_v5_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|808202933", "808202933", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_40.Activated", "box_GroupSizeListener_v5_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_40_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_27();
    l0 = self.box_ProximityRadiusListener_v3_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1733159279", "1733159279", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_40.Deactivated", "box_ProximityRadiusListener_v3_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_40_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_15();
    l0 = self.box_GroupSizeListener_v5_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1969840617", "1969840617", "General_Reinforcement_Management_And_Dialogs", "box_MissionBlockLayer_40.Disabled", "box_GroupSizeListener_v5_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_SetGroup_29_Out()
    local l0;
    self:OnExit_box_SetGroup_29_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|418714349", "418714349", "General_Reinforcement_Management_And_Dialogs", "box_SetGroup_29.Out", "box_MultipleOR_26.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_11();
    l0 = self.box_MultipleOR_46;
    l1 = self.box_MissionAckTriggerListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1734611394", "1734611394", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_46.Out", "box_MissionAckTriggerListener_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = self.box_PlayDialog_v6_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1643536039", "1643536039", "General_Reinforcement_Management_And_Dialogs", "box_PlayDialog_v6_4.Started", "box_OutputOrder_v2_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_55();
    l0 = self.box_MultipleOR_26;
    l1 = self.box_Switch_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1801971100", "1801971100", "General_Reinforcement_Management_And_Dialogs", "box_MultipleOR_26.Out", "box_Switch_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:OnEnter_box_MissionBlockLayer_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|31073059");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_34_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_34_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_34_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160237840559016",
        -- missionLayerId,
        [1] = "36167437095300008",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_2()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160237793676771",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_50()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#D0FB9621",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_15()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#B86756BD",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_59()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 20,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    params = {
        -- Group,
        [0] = self.diag_group,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2143316478",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|448824903");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_48_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_48_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_48_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160237793676771",
        -- missionLayerId,
        [1] = "36167437048417764",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|456086760");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 4,
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
                [2] = self.f_box_OutputOrder_v2_73_Out_2,
                [3] = self.f_box_OutputOrder_v2_73_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_17()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#49F2C79B",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_53()
    local params;
    params = {
        -- Group,
        [0] = "#B86756BD",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#49F2C79B",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|564514888");
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
                [0] = self.f_box_OutputOrder_v2_54_Out_0,
                [1] = self.f_box_OutputOrder_v2_54_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_57()
    local params;
    params = {
        -- Group,
        [0] = "#49F2C79B",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_18()
    local params;
    params = {
        -- Group,
        [0] = self.diag_group,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2818971080",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2104229088832021872",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|733724764");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_70()
    local params;
    params = {
        -- Group,
        [0] = self.diag_group,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1477497426",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2104229141556520371",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_22()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#216E0707",
        -- id2,
        [3] = Globals.INTRO_010_B50.player,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#D0FB9621",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|866981370");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_60_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_60_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_60_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160237840559016",
        -- missionLayerId,
        [1] = "81203436789897132",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|910741316");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_35_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015279344707945",
        -- Fact,
        [1] = "INTRO_010_B53_NPC_DEAD",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#B86756BD",
        -- farZone,
        [2] = 100,
        -- id2,
        [3] = Globals.INTRO_010_B50.player,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#B86756BD",
        -- id2,
        [3] = Globals.INTRO_010_B50.player,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#216E0707",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_63()
    local params;
    params = {
        -- Group,
        [0] = "#216E0707",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_76()
    local params;
    params = {
        -- Group,
        [0] = self.diag_group,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2390352351",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_19()
    local params;
    params = {
        -- Group,
        [0] = self.diag_group,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1963730888",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_12()
    local params;
    params = {
        -- Group,
        [0] = self.diag_group,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "956050322",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1108194752");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1160890712");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_14()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#49F2C79B",
        -- id2,
        [3] = Globals.INTRO_010_B50.player,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_SetGroup_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1174466871");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_8_Out,
    });
    l0 = self.box_ProximityRadiusListener_v3_42;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2104229141556520371",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_42()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#D0FB9621",
        -- id2,
        [3] = Globals.INTRO_010_B50.player,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 120,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_67()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#B86756BD",
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1430160545");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_72_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015279228039041",
        -- Fact,
        [1] = "INTRO_010_B51_NPC_DEAD",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_31()
    local params;
    params = {
        -- Group,
        [0] = "#D0FB9621",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2104229088832021872",
    };
    return params;
end;

function export:OnEnter_box_SetGroup_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1486145050");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_23_Out,
    });
    l0 = self.box_ProximityRadiusListener_v3_14;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_75()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#216E0707",
    };
    return params;
end;

function export:OnEnter_box_SetGroup_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|1516030915");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_13_Out,
    });
    l0 = self.box_ProximityRadiusListener_v3_49;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_66()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160237840559016",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_56()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#216E0707",
        -- farZone,
        [2] = 100,
        -- id2,
        [3] = Globals.INTRO_010_B50.player,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Switch_55()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_71()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#49F2C79B",
        -- farZone,
        [2] = 100,
        -- id2,
        [3] = Globals.INTRO_010_B50.player,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = self.diag_group,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2575577545",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#D0FB9621",
        -- farZone,
        [2] = 100,
        -- id2,
        [3] = Globals.INTRO_010_B50.player,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 180,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2070018423");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_40_Activated,
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_40_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_40_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160237793676771",
        -- missionLayerId,
        [1] = "72196237529700020",
    };
    return params;
end;

function export:OnEnter_box_SetGroup_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B50.domino|@General_Reinforcement_Management_And_Dialogs|2089712736");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_29_Out,
    });
    l0 = self.box_ProximityRadiusListener_v3_22;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_4()
    local params;
    params = {
        -- Group,
        [0] = self.diag_group,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3578815073",
    };
    return params;
end;

function export:OnExit_box_SetGroup_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.diag_group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.diag_group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.diag_group = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_29_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.diag_group = l0:GetDataOutValue(0);
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
