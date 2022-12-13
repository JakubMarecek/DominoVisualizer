LUAC��  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_330/mis_330_b20.domino
-- User graph: MIS_330_Global_Racer_Handling
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="RacerGroup" Type="Nomad|group" />
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
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntitiesOutRange.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[692797550.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3905141508.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2590752001.bnk]], "CSoundResource");
        cboxRes:LoadResource([[171514955.bnk]], "CSoundResource");
        cboxRes:LoadResource([[50528466.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3999079648.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3673116748.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2088849306.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1115568667.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1971031733.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2049455880.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1714152501.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Global_Racer_Handling.debug.lua")] = {
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
                name = "RacerGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v6.lua")] = {
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
                name = "MemberDied",
                delayed = true,
            },
            [4] = {
                name = "MemberRemoved",
                delayed = true,
            },
            [5] = {
                name = "MemberSpawned",
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
    metadataTable[GetPathID("Domino/System/Print_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ToAll",
            },
            [1] = {
                name = "ToConsole",
            },
            [2] = {
                name = "ToFile",
            },
            [3] = {
                name = "ToScreen",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "PrintedToConsole",
                delayed = false,
            },
            [2] = {
                name = "PrintedToFile",
                delayed = false,
            },
            [3] = {
                name = "PrintedToScreen",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bool",
                type = "bool",
            },
            [1] = {
                name = "color",
                type = "string",
            },
            [2] = {
                name = "db",
                type = "genericdb",
            },
            [3] = {
                name = "duration",
                type = "float",
            },
            [4] = {
                name = "float",
                type = "float",
            },
            [5] = {
                name = "id",
                type = "entity",
            },
            [6] = {
                name = "int",
                type = "int",
            },
            [7] = {
                name = "path",
                type = "string",
            },
            [8] = {
                name = "str",
                type = "string",
            },
            [9] = {
                name = "useTimeTag",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Remove",
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
                name = "Range",
                type = "float",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "DriverDead",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Driver",
                type = "entity",
            },
            [1] = {
                name = "RacerGroup",
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
    self._name = "MIS_330_Global_Racer_Handling";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling";
    self.Out = DummyFunction;
    self.i_racers = 0;
    self.e_racerKilled = nil;
    self.box_PlayDialog_v6_27 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|74482189");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_11 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|178496658");
    l0:SetConnections({
    });
    self.box_Switch_35 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|288163041");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 12,
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
                [0] = self.f_box_Switch_35_Output_0,
                [1] = self.f_box_Switch_35_Output_1,
                [2] = self.f_box_Switch_35_Output_2,
                [3] = self.f_box_Switch_35_Output_3,
                [4] = self.f_box_Switch_35_Output_4,
                [5] = self.f_box_Switch_35_Output_5,
                [6] = self.f_box_Switch_35_Output_6,
                [7] = self.f_box_Switch_35_Output_7,
                [8] = self.f_box_Switch_35_Output_8,
                [9] = self.f_box_Switch_35_Output_9,
                [10] = self.f_box_Switch_35_Output_10,
                [11] = self.f_box_Switch_35_Output_11,
            },
            count = 12,
        },
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|348369563");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_7 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|351754659");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_6 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|460631760");
    l0:SetConnections({
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|467133006");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|494129656");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_15 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|500724626");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_12 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|574599616");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_9 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|589613458");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v6_19 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|592200469");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_19_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_19_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_19_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_19_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_19_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_19_MemberSpawned,
    });
    self.box_MIS_330_Car_Destruction_4 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|594133121");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_5 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|645500357");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_33 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|721378583");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_32 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|759713494");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_8 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|761416606");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_26 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|828555075");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_10 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1028874092");
    l0:SetConnections({
    });
    self.box_Switch_13 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1063192413");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 15,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_13_None,
        -- Out,
        [1] = self.f_box_Switch_13_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_13_Output_0,
                [1] = self.f_box_Switch_13_Output_1,
                [2] = self.f_box_Switch_13_Output_2,
                [3] = self.f_box_Switch_13_Output_3,
                [4] = self.f_box_Switch_13_Output_4,
                [5] = self.f_box_Switch_13_Output_5,
                [6] = self.f_box_Switch_13_Output_6,
                [7] = self.f_box_Switch_13_Output_7,
                [8] = self.f_box_Switch_13_Output_8,
                [9] = self.f_box_Switch_13_Output_9,
                [10] = self.f_box_Switch_13_Output_10,
                [11] = self.f_box_Switch_13_Output_11,
                [12] = self.f_box_Switch_13_Output_12,
                [13] = self.f_box_Switch_13_Output_13,
                [14] = self.f_box_Switch_13_Output_14,
            },
            count = 15,
        },
    });
    self.box_PlayDialog_v6_34 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1092037259");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_23 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1101071427");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_14 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1329542610");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_1 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1499397365");
    l0:SetConnections({
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1624437915");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_MIS_330_Car_Destruction_2 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1853172413");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_18 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1878796762");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_30 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1953461289");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1982789679");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_28 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|2094439130");
    l0:SetConnections({
    });
    self.box_MIS_330_Car_Destruction_16 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_330/mis_330_b20.MIS_330_Car_Destruction.debug.lua");
    l0 = self.box_MIS_330_Car_Destruction_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_330_Car_Destruction_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|2101641719");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_31 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|2130077924");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|725008738", "725008738", "MIS_330_Global_Racer_Handling", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_35_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1553488330", "1553488330", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_29.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1846233939", "1846233939", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_31.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|29017497", "29017497", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_30.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_34();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|673134997", "673134997", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_34.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|195352678", "195352678", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1258626215", "1258626215", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_25.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1357009137", "1357009137", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_23.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_32();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1155723630", "1155723630", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_32.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|176819262", "176819262", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_28.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|851367425", "851367425", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_26.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_33();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1645403196", "1645403196", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_33.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_35_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_Switch_35;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|90501700", "90501700", "MIS_330_Global_Racer_Handling", "box_Switch_35.Output", "box_PlayDialog_v6_27.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntityOutRange_20();
    l0 = self.box_Delay_v5_21;
    l1 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|329280095", "329280095", "MIS_330_Global_Racer_Handling", "box_Delay_v5_21.TimeElapsed", "box_RemoveEntityOutRange_20.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_19_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v6_19_Enabled();
    l0 = self.box_GroupSizeListener_v6_19;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|414422805", "414422805", "MIS_330_Global_Racer_Handling", "box_GroupSizeListener_v6_19.Enabled", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v6_19_MemberAdded()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_19_MemberAdded();
    params = self:OnEnter_box_Switch_13();
    l0 = self.box_GroupSizeListener_v6_19;
    l1 = self.box_Switch_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1997806571", "1997806571", "MIS_330_Global_Racer_Handling", "box_GroupSizeListener_v6_19.MemberAdded", "box_Switch_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_19_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_19_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_19_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_19_MemberRemoved();
    params = self:OnEnter_box_Switch_35();
    l0 = self.box_GroupSizeListener_v6_19;
    l1 = self.box_Switch_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|248836420", "248836420", "MIS_330_Global_Racer_Handling", "box_GroupSizeListener_v6_19.MemberRemoved", "box_Switch_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_19_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_19_MemberSpawned();
end;

function export:f_box_Switch_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_17();
    l0 = self.box_Switch_13;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|661131324", "661131324", "MIS_330_Global_Racer_Handling", "box_Switch_13.Out", "box_Print_v2_17.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_13_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_5();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|507724998", "507724998", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_4();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|606107920", "606107920", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_6();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1662458637", "1662458637", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_14();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1109801239", "1109801239", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_9();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1208184161", "1208184161", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_15();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|161495647", "161495647", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_8();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|297400165", "297400165", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_11();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|194329467", "194329467", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_7();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1489487287", "1489487287", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_18();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|630070527", "630070527", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_1();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|295283659", "295283659", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_10();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|438279110", "438279110", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_2();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|2101057618", "2101057618", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_13()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_12();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|787534495", "787534495", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_13_Output_14()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_330_Car_Destruction_16();
    l0 = self.box_Switch_13;
    l1 = self.box_MIS_330_Car_Destruction_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|2129539888", "2129539888", "MIS_330_Global_Racer_Handling", "box_Switch_13.Output", "box_MIS_330_Car_Destruction_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_MultipleOR_22;
    l1 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1474381709", "1474381709", "MIS_330_Global_Racer_Handling", "box_MultipleOR_22.Out", "box_Delay_v5_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntityOutRange_20_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|86458153", "86458153", "MIS_330_Global_Racer_Handling", "box_RemoveEntityOutRange_20.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|702780553", "702780553", "MIS_330_Global_Racer_Handling", "box_OutputOrder_v2_3.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v6_19();
    l0 = self.box_GroupSizeListener_v6_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1934373975", "1934373975", "MIS_330_Global_Racer_Handling", "box_OutputOrder_v2_3.Out", "box_GroupSizeListener_v6_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_PlayDialog_v6_27()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1115568667",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_11()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_Switch_35()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3673116748",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_7()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_6()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3905141508",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_15()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_12()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_9()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_19()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_4()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_5()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_33()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "692797550",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_32()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2049455880",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_8()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_26()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3999079648",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_10()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_Switch_13()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_34()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2590752001",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_23()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1714152501",
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_14()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_1()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1651980263");
    l0:SetConnections({
    });
    l0 = self.box_Switch_13;
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- int,
        [6] = l0:GetDataOutValue(0),
        -- path,
        [7] = "C:\\Print.log",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntityOutRange_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntityOutRange_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|1833981541");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntityOutRange_20_Out,
    });
    params = {
        -- Range,
        [0] = 70,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_2()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_18()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_30()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "171514955",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2088849306",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_28()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1971031733",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_330\\mis_330_b20.domino|@MIS_330_Global_Racer_Handling|2095897126");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_330_Car_Destruction_16()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- RacerGroup,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_31()
    local params;
    params = {
        -- Group,
        [0] = "2108696807960760475",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "50528466",
    };
    return params;
end;

function export:OnExit_box_GroupSizeListener_v6_19_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_19;
    self.i_racers = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_19_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_19;
    self.i_racers = l0:GetDataOutValue(1);
    self.e_racerKilled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_19_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_19;
    self.i_racers = l0:GetDataOutValue(1);
    self.e_racerKilled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_19_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_19;
    self.i_racers = l0:GetDataOutValue(1);
    self.e_racerKilled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_19_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_19;
    self.i_racers = l0:GetDataOutValue(1);
    self.e_racerKilled = l0:GetDataOutValue(0);
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
		<DataIn Name="RacerGroup" AnchorDynType="0" DataTypeID="group" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
