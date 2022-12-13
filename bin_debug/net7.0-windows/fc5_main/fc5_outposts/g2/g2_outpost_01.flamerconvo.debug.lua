LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/g2/g2_outpost_01.domino
-- User graph: FlamerConvo
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/IsEntityLoaded_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RandomFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[294183561.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1453904984.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3572900405.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1756339481.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2496843312.bnk]], "CSoundResource");
        cboxRes:LoadResource([[724889326.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4074944137.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2000148074.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3236103811.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1273669191.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1020226439.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2401286392.bnk]], "CSoundResource");
        cboxRes:LoadResource([[79056621.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1995153059.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1845061633.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2502800456.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1771106939.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3996640175.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.G2_Outpost_01 = nil;
    Globals.G2_Outpost_01 = {
        Veh_List = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Outposts/G2/G2_Outpost_01.FlamerConvo.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
    };
    metadataTable[GetPathID("Domino/System/IsEntityLoaded_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/RandomFloat_v2.lua")] = {
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
                name = "Max",
                type = "float",
            },
            [1] = {
                name = "Min",
                type = "float",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "float",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    self._name = "FlamerConvo";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo";
    self.Out = DummyFunction;
    self.eFlamer = nil;
    self.eNPC = nil;
    self.bInConvo = false;
    self.box_Gate_v3_33 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|5578201");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_33_Out,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|74442602");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_9_Finished,
    });
    self.box_PlayDialog_v6_40 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|185403201");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_40_Finished,
    });
    self.box_PlayDialog_v6_43 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|313663944");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_43_Finished,
    });
    self.box_PlayDialog_v6_41 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|367875227");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_41_Finished,
    });
    self.box_OnceOnly_v3_46 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|415726715");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_46_Out_0,
            },
            count = 2,
        },
    });
    self.box_PlayDialog_v6_13 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|427948182");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_13_Finished,
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|502301837");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_24_Finished,
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|643975727");
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
        [0] = self.f_box_MultipleOR_52_Out,
    });
    self.box_PlayDialog_v6_35 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|680429350");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_35_Finished,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|731897632");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
    self.box_PlayDialog_v6_21 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|795220275");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_21_Finished,
    });
    self.box_ContextualActionListener_48 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|852250176");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_48_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_48_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_48_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_48_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_48_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_48_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_48_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_48_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_48_Start,
    });
    self.box_PlayDialog_v6_36 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|858065111");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_36_Finished,
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|914746914");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_2_Finished,
    });
    self.box_Random_12 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|935176387");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 10,
        },
        dataIn = {
            [1] = 10,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_12_Output_0,
                [1] = self.f_box_Random_12_Output_1,
                [2] = self.f_box_Random_12_Output_2,
                [3] = self.f_box_Random_12_Output_3,
                [4] = self.f_box_Random_12_Output_4,
                [5] = self.f_box_Random_12_Output_5,
                [6] = self.f_box_Random_12_Output_6,
                [7] = self.f_box_Random_12_Output_7,
                [8] = self.f_box_Random_12_Output_8,
                [9] = self.f_box_Random_12_Output_9,
            },
            count = 10,
        },
    });
    self.box_HealthListener_v6_26 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|952073828");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_26_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_26_Killed,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1083863370");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_PlayDialog_v6_42 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1088243341");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_42_Finished,
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1099627216");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_38_Finished,
    });
    self.box_ContextualActionListener_11 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1128529506");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_11_Available,
        -- Disabled,
        [1] = self.f_box_ContextualActionListener_11_Disabled,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_11_Enabled,
        -- End,
        [3] = self.f_box_ContextualActionListener_11_End,
        -- Interrupt,
        [4] = self.f_box_ContextualActionListener_11_Interrupt,
        -- Markup1,
        [5] = self.f_box_ContextualActionListener_11_Markup1,
        -- Markup2,
        [6] = self.f_box_ContextualActionListener_11_Markup2,
        -- Select,
        [7] = self.f_box_ContextualActionListener_11_Select,
        -- Start,
        [8] = self.f_box_ContextualActionListener_11_Start,
    });
    self.box_PlayDialog_v6_23 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1195887755");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_23_Finished,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1223324438");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1237002285");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_20_Finished,
    });
    self.box_ContextualActionListener_8 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1284852933");
    l0:SetConnections({
        -- Start,
        [8] = self.f_box_ContextualActionListener_8_Start,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1363800496");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_Delay_v5_16 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1406135336");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_16_TimeElapsed,
    });
    self.box_PlayDialog_v6_19 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1498194569");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_19_Finished,
    });
    self.box_EntityStatusListener_51 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1514834970");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_51_Loaded,
    });
    self.box_Gate_v3_27 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1535308404");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_27_Out,
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1844861144");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_22_Finished,
    });
    self.box_PlayDialog_v6_14 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1926379558");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_14_Finished,
    });
    self.box_StateListener_v2_1 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1943200870");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_1_StateStart,
    });
    self.box_Random_34 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|2059114411");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
            [1] = 4,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_34_Output_0,
                [1] = self.f_box_Random_34_Output_1,
                [2] = self.f_box_Random_34_Output_2,
                [3] = self.f_box_Random_34_Output_3,
            },
            count = 4,
        },
    });
    self.box_PlayDialog_v6_39 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|2101226182");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_39_Finished,
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|2116163380");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_IsEntityLoaded_v3_45();
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1128569080", "1128569080", "FlamerConvo", "In", "box_IsEntityLoaded_v3_45.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1666861372", "1666861372", "FlamerConvo", "box_Simple_Node_28.Out", "box_Gate_v3_27.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_StateListener_v2_1();
    l0 = self.box_StateListener_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|835913781", "835913781", "FlamerConvo", "box_Simple_Node_28.Out", "box_StateListener_v2_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(3, params);
    params = self:OnEnter_box_HealthListener_v6_26();
    l0 = self.box_HealthListener_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1988907375", "1988907375", "FlamerConvo", "box_Simple_Node_28.Out", "box_HealthListener_v6_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ContextualActionListener_8();
    l0 = self.box_ContextualActionListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|125281789", "125281789", "FlamerConvo", "box_Simple_Node_28.Out", "box_ContextualActionListener_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1434231044", "1434231044", "FlamerConvo", "box_Simple_Node_28.Out", "box_OutputOrder_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1900426032", "1900426032", "FlamerConvo", "box_Simple_Node_18.Out", "box_MultipleOR_25.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_30();
    l0 = self.box_Gate_v3_33;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|727260588", "727260588", "FlamerConvo", "box_Gate_v3_33.Out", "box_SetBoolean_v2_30.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_49_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|916910846", "916910846", "FlamerConvo", "box_Simple_Node_49.Out", "box_Gate_v3_33.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|816745623", "816745623", "FlamerConvo", "box_Simple_Node_6.Out", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_9_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_9;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|43605510", "43605510", "FlamerConvo", "box_PlayDialog_v6_9.Finished", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_3_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1040649975", "1040649975", "FlamerConvo", "box_SetEntity_v2_3.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_40_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_41();
    l0 = self.box_PlayDialog_v6_40;
    l1 = self.box_PlayDialog_v6_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1733911513", "1733911513", "FlamerConvo", "box_PlayDialog_v6_40.Finished", "box_PlayDialog_v6_41.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_49();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|661637258", "661637258", "FlamerConvo", "box_OutputOrder_v2_17.Out", "box_Simple_Node_49.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_11();
    l0 = self.box_ContextualActionListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|2087171255", "2087171255", "FlamerConvo", "box_OutputOrder_v2_17.Out", "box_ContextualActionListener_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_48();
    l0 = self.box_ContextualActionListener_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1445288799", "1445288799", "FlamerConvo", "box_OutputOrder_v2_17.Out", "box_ContextualActionListener_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_43_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_43;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|476775599", "476775599", "FlamerConvo", "box_PlayDialog_v6_43.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_PlayDialog_v6_41_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_41;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|306356287", "306356287", "FlamerConvo", "box_PlayDialog_v6_41.Finished", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_46_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_OnceOnly_v3_46;
    l1 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|826733566", "826733566", "FlamerConvo", "box_OnceOnly_v3_46.Out", "box_Gate_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_13_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_13;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1276453803", "1276453803", "FlamerConvo", "box_PlayDialog_v6_13.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_24_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_24;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1124698004", "1124698004", "FlamerConvo", "box_PlayDialog_v6_24.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_3();
    l0 = self.box_MultipleOR_52;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1239755675", "1239755675", "FlamerConvo", "box_MultipleOR_52.Out", "box_SetEntity_v2_3.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_35_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_PlayDialog_v6_35;
    l1 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|515863816", "515863816", "FlamerConvo", "box_PlayDialog_v6_35.Finished", "box_PlayDialog_v6_36.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RandomFloat_v2_15();
    l0 = self.box_MultipleOR_7;
    l1 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1007536150", "1007536150", "FlamerConvo", "box_MultipleOR_7.Out", "box_RandomFloat_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_26();
    l0 = self.box_HealthListener_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|431526559", "431526559", "FlamerConvo", "box_Simple_Node_5.Out", "box_HealthListener_v6_26.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_21_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_21;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1380039388", "1380039388", "FlamerConvo", "box_PlayDialog_v6_21.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Compare_Boolean_29_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|452828246", "452828246", "FlamerConvo", "box_Compare_Boolean_29.A_is_False", "box_Simple_Node_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_29_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1876129911", "1876129911", "FlamerConvo", "box_Compare_Boolean_29.A_is_True", "box_Delay_v5_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_30_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_30_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_34();
    l0 = self.box_Random_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|716994896", "716994896", "FlamerConvo", "box_SetBoolean_v2_30.Out", "box_Random_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ContextualActionListener_48_End()
    self:OnExit_box_ContextualActionListener_48_End();
end;

function export:f_box_ContextualActionListener_48_Interrupt()
    self:OnExit_box_ContextualActionListener_48_Interrupt();
end;

function export:f_box_ContextualActionListener_48_Markup1()
    self:OnExit_box_ContextualActionListener_48_Markup1();
end;

function export:f_box_ContextualActionListener_48_Markup2()
    self:OnExit_box_ContextualActionListener_48_Markup2();
end;

function export:f_box_ContextualActionListener_48_Select()
    self:OnExit_box_ContextualActionListener_48_Select();
end;

function export:f_box_ContextualActionListener_48_Start()
    local l0, l1;
    self:OnExit_box_ContextualActionListener_48_Start();
    l0 = self.box_ContextualActionListener_48;
    l1 = self.box_OnceOnly_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1199378256", "1199378256", "FlamerConvo", "box_ContextualActionListener_48.Start", "box_OnceOnly_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_36_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_36;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1047151458", "1047151458", "FlamerConvo", "box_PlayDialog_v6_36.Finished", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_2_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1336028275", "1336028275", "FlamerConvo", "box_PlayDialog_v6_2.Finished", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_13();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|318119481", "318119481", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_13.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_14();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|203606300", "203606300", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_14.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_19();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|844430503", "844430503", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_19.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|542645568", "542645568", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_20.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1945848513", "1945848513", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_21.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1678509565", "1678509565", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_22.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|558676677", "558676677", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_23.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|649800553", "649800553", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_42();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|103007722", "103007722", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_42.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_12_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_43();
    l0 = self.box_Random_12;
    l1 = self.box_PlayDialog_v6_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1676393059", "1676393059", "FlamerConvo", "box_Random_12.Output", "box_PlayDialog_v6_43.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_26_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StateListener_v2_1();
    l0 = self.box_HealthListener_v6_26;
    l1 = self.box_StateListener_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1675633275", "1675633275", "FlamerConvo", "box_HealthListener_v6_26.Enabled", "box_StateListener_v2_1.Combat", l0:GetLuaBox(), l1:GetLuaBox());
    -- Combat
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_26_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_26;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|439016663", "439016663", "FlamerConvo", "box_HealthListener_v6_26.Killed", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_8();
    l0 = self.box_ContextualActionListener_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1026367267", "1026367267", "FlamerConvo", "box_OutputOrder_v2_10.Out", "box_ContextualActionListener_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_6();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1944939821", "1944939821", "FlamerConvo", "box_OutputOrder_v2_10.Out", "box_Simple_Node_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_5();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|143586375", "143586375", "FlamerConvo", "box_OutputOrder_v2_10.Out", "box_Simple_Node_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1420026703", "1420026703", "FlamerConvo", "box_OutputOrder_v2_50.Out", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|332356303", "332356303", "FlamerConvo", "box_OutputOrder_v2_50.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_31();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1905095650", "1905095650", "FlamerConvo", "box_MultipleOR_37.Out", "box_SetBoolean_v2_31.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_42_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_42;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1293849535", "1293849535", "FlamerConvo", "box_PlayDialog_v6_42.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_PlayDialog_v6_38_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_39();
    l0 = self.box_PlayDialog_v6_38;
    l1 = self.box_PlayDialog_v6_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|68344047", "68344047", "FlamerConvo", "box_PlayDialog_v6_38.Finished", "box_PlayDialog_v6_39.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ContextualActionListener_11_End()
    self:OnExit_box_ContextualActionListener_11_End();
end;

function export:f_box_ContextualActionListener_11_Interrupt()
    self:OnExit_box_ContextualActionListener_11_Interrupt();
end;

function export:f_box_ContextualActionListener_11_Markup1()
    self:OnExit_box_ContextualActionListener_11_Markup1();
end;

function export:f_box_ContextualActionListener_11_Markup2()
    self:OnExit_box_ContextualActionListener_11_Markup2();
end;

function export:f_box_ContextualActionListener_11_Select()
    self:OnExit_box_ContextualActionListener_11_Select();
end;

function export:f_box_ContextualActionListener_11_Start()
    local l0, l1;
    self:OnExit_box_ContextualActionListener_11_Start();
    l0 = self.box_ContextualActionListener_11;
    l1 = self.box_OnceOnly_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|171727497", "171727497", "FlamerConvo", "box_ContextualActionListener_11.Start", "box_OnceOnly_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RandomFloat_v2_15_Out()
    local params, l0;
    self:OnExit_box_RandomFloat_v2_15_Out();
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_16();
    l0 = self.box_Delay_v5_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1370680671", "1370680671", "FlamerConvo", "box_RandomFloat_v2_15.Out", "box_Delay_v5_16.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_23_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_23;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|885258008", "885258008", "FlamerConvo", "box_PlayDialog_v6_23.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|364979736", "364979736", "FlamerConvo", "box_MultipleOR_4.Out", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_12();
    l0 = self.box_Random_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1248594722", "1248594722", "FlamerConvo", "box_Simple_Node_44.Out", "box_Random_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_20_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1637341166", "1637341166", "FlamerConvo", "box_PlayDialog_v6_20.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_ContextualActionListener_8_Start()
    local l0, l1;
    l0 = self.box_ContextualActionListener_8;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1977368042", "1977368042", "FlamerConvo", "box_ContextualActionListener_8.Start", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_29();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1474330499", "1474330499", "FlamerConvo", "box_MultipleOR_25.Out", "box_Compare_Boolean_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_16_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Delay_v5_16;
    l1 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|372929918", "372929918", "FlamerConvo", "box_Delay_v5_16.TimeElapsed", "box_Gate_v3_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_19_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_19;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|2088230052", "2088230052", "FlamerConvo", "box_PlayDialog_v6_19.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_EntityStatusListener_51_Loaded()
    local l0, l1;
    l0 = self.box_EntityStatusListener_51;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1223457481", "1223457481", "FlamerConvo", "box_EntityStatusListener_51.Loaded", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetBoolean_v2_31_Out()
    self:OnExit_box_SetBoolean_v2_31_Out();
end;

function export:f_box_Gate_v3_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = self.box_Gate_v3_27;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1653737759", "1653737759", "FlamerConvo", "box_Gate_v3_27.Out", "box_Simple_Node_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_22_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_22;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1181045475", "1181045475", "FlamerConvo", "box_PlayDialog_v6_22.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_PlayDialog_v6_14_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_14;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|2013328186", "2013328186", "FlamerConvo", "box_PlayDialog_v6_14.Finished", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_11();
    l0 = self.box_ContextualActionListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|551256231", "551256231", "FlamerConvo", "box_OutputOrder_v2_47.Out", "box_ContextualActionListener_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ContextualActionListener_48();
    l0 = self.box_ContextualActionListener_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|992374106", "992374106", "FlamerConvo", "box_OutputOrder_v2_47.Out", "box_ContextualActionListener_48.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StateListener_v2_1_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_1;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|616896647", "616896647", "FlamerConvo", "box_StateListener_v2_1.StateStart", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_34_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_Random_34;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1477846935", "1477846935", "FlamerConvo", "box_Random_34.Output", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_34_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_40();
    l0 = self.box_Random_34;
    l1 = self.box_PlayDialog_v6_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1608391225", "1608391225", "FlamerConvo", "box_Random_34.Output", "box_PlayDialog_v6_40.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_34_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_35();
    l0 = self.box_Random_34;
    l1 = self.box_PlayDialog_v6_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|861203027", "861203027", "FlamerConvo", "box_Random_34.Output", "box_PlayDialog_v6_35.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_34_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_Random_34;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|474376471", "474376471", "FlamerConvo", "box_Random_34.Output", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_45_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_51();
    l0 = self.box_EntityStatusListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1358834444", "1358834444", "FlamerConvo", "box_IsEntityLoaded_v3_45.False", "box_EntityStatusListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IsEntityLoaded_v3_45_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1414503655", "1414503655", "FlamerConvo", "box_IsEntityLoaded_v3_45.True", "box_MultipleOR_52.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_39_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_39;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|531855289", "531855289", "FlamerConvo", "box_PlayDialog_v6_39.Finished", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_32;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|745138479", "745138479", "FlamerConvo", "box_Delay_v5_32.TimeElapsed", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|@killFlamerConvo");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|@loopBarks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_33()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|15838628");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_49_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|38547896");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1995153059",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|169532876");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_3_Out,
    });
    params = {
        -- Entity,
        [0] = "2097374581632274502",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_40()
    local params;
    params = {
        -- Group,
        [0] = self.eNPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1845061633",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|293443268");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_43()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1020226439",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_41()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1453904984",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_13()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2000148074",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2502800456",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_35()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "294183561",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|777586908");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_5_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_21()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "724889326",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|833566670");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_29_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_29_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bInConvo,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|839599350");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_30_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_48()
    local params;
    DrawTextToScreen("Comment: STP2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ContextualActionListener')-- Comment: STP2");
    params = {
        -- ContextualAction,
        [0] = "2100082190453842809",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_36()
    local params;
    params = {
        -- Group,
        [0] = self.eNPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1756339481",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = self.eNPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3236103811",
    };
    return params;
end;

function export:OnEnter_box_Random_12()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 10,
        },
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_26()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eFlamer,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|958583121");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1000870666");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_42()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4074944137",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3996640175",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_11()
    local params;
    DrawTextToScreen("Comment: STP1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ContextualActionListener')-- Comment: STP1");
    params = {
        -- ContextualAction,
        [0] = "2100071838137758362",
    };
    return params;
end;

function export:OnEnter_box_RandomFloat_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RandomFloat_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1130914465");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RandomFloat_v2_15_Out,
    });
    params = {
        -- Max,
        [0] = 20,
        -- Min,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_23()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1273669191",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1235471109");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2496843312",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_8()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2097374534110810150",
        -- UserFilter,
        [1] = self.eFlamer,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_19()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "79056621",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_51()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2097374581632274502",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1516384336");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_27()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3572900405",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_14()
    local params;
    params = {
        -- Group,
        [0] = self.eFlamer,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1771106939",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|1928211950");
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

function export:OnEnter_box_StateListener_v2_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.eFlamer,
    };
    return params;
end;

function export:OnEnter_box_Random_34()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 4,
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityLoaded_v3_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsEntityLoaded_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityLoaded_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\G2\\G2_Outpost_01.domino|@FlamerConvo|2096584879");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityLoaded_v3_45_False,
        -- True,
        [1] = self.f_box_IsEntityLoaded_v3_45_True,
    });
    params = {
        -- entityId,
        [0] = "2097374581632274502",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_39()
    local params;
    params = {
        -- Group,
        [0] = self.eNPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2401286392",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnExit_box_SetEntity_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.eFlamer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_30_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInConvo = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_48_End()
    local l0;
    l0 = self.box_ContextualActionListener_48;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_48_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_48;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_48_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_48;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_48_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_48;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_48_Select()
    local l0;
    l0 = self.box_ContextualActionListener_48;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_48_Start()
    local l0;
    l0 = self.box_ContextualActionListener_48;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_End()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Interrupt()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Markup1()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Markup2()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Select()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ContextualActionListener_11_Start()
    local l0;
    l0 = self.box_ContextualActionListener_11;
    self.eNPC = l0:GetDataOutValue(0);
end;

function export:OnExit_box_RandomFloat_v2_15_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/RandomFloat_v2.lua")];
    l1 = self.box_Delay_v5_16;
    l1:GetLuaBox().seconds = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_31_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bInConvo = l0:GetDataOutValue(0);
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
