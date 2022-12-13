LUACFh -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/specialists/mis_435/mis_435_b20.domino
-- User graph: MIS_435_Global_Racer_Handling
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[654938376.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3726203737.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2242301769.bnk]], "CSoundResource");
        cboxRes:LoadResource([[146710309.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3962817325.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3616059250.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2742290104.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1673901629.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4262900784.bnk]], "CSoundResource");
        cboxRes:LoadResource([[835704804.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3461909389.bnk]], "CSoundResource");
        cboxRes:LoadResource([[350145562.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2038438138.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1895529461.bnk]], "CSoundResource");
        cboxRes:LoadResource([[770735177.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3475381030.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1050010642.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Global_Racer_Handling.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua")] = {
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
                name = "Detected",
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
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "group",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "genericdb",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua")] = {
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
                name = "e_protectedDriver",
                type = "entity",
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
    self._name = "MIS_435_Global_Racer_Handling";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling";
    self.Out = DummyFunction;
    self.e_racerKilled = nil;
    self.i_racers = 0;
    self.e_Gina = nil;
    self.b_playerDetected = false;
    self.box_Switch_31 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|@s_announcerCall");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 14,
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
                [0] = self.f_box_Switch_31_Output_0,
                [1] = self.f_box_Switch_31_Output_1,
                [2] = self.f_box_Switch_31_Output_2,
                [3] = self.f_box_Switch_31_Output_3,
                [4] = self.f_box_Switch_31_Output_4,
                [5] = self.f_box_Switch_31_Output_5,
                [6] = self.f_box_Switch_31_Output_6,
                [7] = self.f_box_Switch_31_Output_7,
                [8] = self.f_box_Switch_31_Output_8,
                [9] = self.f_box_Switch_31_Output_9,
                [10] = self.f_box_Switch_31_Output_10,
                [11] = self.f_box_Switch_31_Output_11,
                [12] = self.f_box_Switch_31_Output_12,
                [13] = self.f_box_Switch_31_Output_13,
            },
            count = 14,
        },
    });
    self.box_Switch_52 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|@s_announcerUndetected");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
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
                [0] = self.f_box_Switch_52_Output_0,
                [1] = self.f_box_Switch_52_Output_1,
                [2] = self.f_box_Switch_52_Output_2,
            },
            count = 3,
        },
    });
    self.box_OnceOnly_v3_47 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|7381188");
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
                [0] = self.f_box_OnceOnly_v3_47_Out_0,
            },
            count = 2,
        },
    });
    self.box_CharacterLoadedIdListener_v2_15 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|40000281");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_15_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_15_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_15_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived,
    });
    self.box_PlayDialog_v6_21 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|42032016");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_13 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|42987539");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_14 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|57001292");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_23 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|249526538");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_23_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_23_FinishedInterrupted,
    });
    self.box_MIS_435_Car_Destruction_18 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|372799980");
    l0:SetConnections({
    });
    self.box_Delay_v5_44 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|394507751");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_44_TimeElapsed,
    });
    self.box_Gate_v3_46 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|412533861");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_46_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_46_Out,
    });
    self.box_PlayDialog_v6_27 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|435552515");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_24 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|485336275");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_49 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|491845593");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_35 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|541858616");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_30 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|550058865");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_11 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|673091286");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_45 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|711827383");
    l0:SetConnections({
    });
    self.box_PlayerFullyDetected_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Quest_Common.PlayerFullyDetected.debug.lua");
    l0 = self.box_PlayerFullyDetected_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerFullyDetected_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|766360694");
    l0:SetConnections({
        -- Detected,
        [0] = self.f_box_PlayerFullyDetected_41_Detected,
    });
    self.box_PlayDialog_v6_28 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|769451320");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|890705574");
    l0:SetConnections({
    });
    self.box_Delay_v5_32 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|903343814");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_32_TimeElapsed,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|938318946");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|964356445");
    l0:SetConnections({
    });
    self.box_Gate_v3_39 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1014017480");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_39_Out,
    });
    self.box_MIS_435_Car_Destruction_19 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1180681391");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_16 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1204189234");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_20 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1243165683");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_29 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1306729265");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_38 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1360419299");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_48 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1398141737");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_6 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1432008618");
    l0:SetConnections({
    });
    self.box_MultipleOR_50 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1486988997");
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
        [0] = self.f_box_MultipleOR_50_Out,
    });
    self.box_Switch_7 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1561949531");
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
        [0] = self.f_box_Switch_7_None,
        -- Out,
        [1] = self.f_box_Switch_7_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_7_Output_0,
                [1] = self.f_box_Switch_7_Output_1,
                [2] = self.f_box_Switch_7_Output_2,
                [3] = self.f_box_Switch_7_Output_3,
                [4] = self.f_box_Switch_7_Output_4,
                [5] = self.f_box_Switch_7_Output_5,
                [6] = self.f_box_Switch_7_Output_6,
                [7] = self.f_box_Switch_7_Output_7,
                [8] = self.f_box_Switch_7_Output_8,
                [9] = self.f_box_Switch_7_Output_9,
                [10] = self.f_box_Switch_7_Output_10,
                [11] = self.f_box_Switch_7_Output_11,
                [12] = self.f_box_Switch_7_Output_12,
                [13] = self.f_box_Switch_7_Output_13,
                [14] = self.f_box_Switch_7_Output_14,
            },
            count = 15,
        },
    });
    self.box_MIS_435_Car_Destruction_5 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1567913136");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1583321168");
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
                [0] = self.f_box_OnceOnly_v3_33_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v6_1 = cbox:CreateBox("Domino/System/GroupSizeListener_v6.lua");
    l0 = self.box_GroupSizeListener_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v6_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1630295579");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v6_1_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v6_1_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v6_1_MemberAdded,
        -- MemberDied,
        [3] = self.f_box_GroupSizeListener_v6_1_MemberDied,
        -- MemberRemoved,
        [4] = self.f_box_GroupSizeListener_v6_1_MemberRemoved,
        -- MemberSpawned,
        [5] = self.f_box_GroupSizeListener_v6_1_MemberSpawned,
    });
    self.box_PlayDialog_v6_37 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1687170900");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_9 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1886283094");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_17 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1899673970");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_36 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1970510802");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_12 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1989185679");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_8 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2022187612");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_26 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2115931967");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_3 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2136987444");
    l0:SetConnections({
    });
    self.box_MIS_435_Car_Destruction_4 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/Specialists/MIS_435/MIS_435_B20.MIS_435_Car_Destruction.debug.lua");
    l0 = self.box_MIS_435_Car_Destruction_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_435_Car_Destruction_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2144078377");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1866140745", "1866140745", "MIS_435_Global_Racer_Handling", "In", "box_OutputOrder_v2_10.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_51_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_39();
    l0 = self.box_Gate_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2365365", "2365365", "MIS_435_Global_Racer_Handling", "box_Simple_Node_51.Out", "box_Gate_v3_39.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_46();
    l0 = self.box_Gate_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2124899325", "2124899325", "MIS_435_Global_Racer_Handling", "box_Simple_Node_51.Out", "box_Gate_v3_46.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Switch_31_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|852422629", "852422629", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_23.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_24();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1985855167", "1985855167", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_24.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2039925685", "2039925685", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_30.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_28();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1412323268", "1412323268", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_28.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1353865099", "1353865099", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_26.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_29();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|73583696", "73583696", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_29.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_27();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|801207701", "801207701", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_27.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1243871581", "1243871581", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_25.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1251389532", "1251389532", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_21.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1185942800", "1185942800", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_22.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_37();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1063845613", "1063845613", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_37.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_38();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2068492868", "2068492868", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_38.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_35();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1853193608", "1853193608", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_35.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_31_Output_13()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_36();
    l0 = self.box_Switch_31;
    l1 = self.box_PlayDialog_v6_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|29054346", "29054346", "MIS_435_Global_Racer_Handling", "box_Switch_31.Output", "box_PlayDialog_v6_36.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_52_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_48();
    l0 = self.box_Switch_52;
    l1 = self.box_PlayDialog_v6_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|856962267", "856962267", "MIS_435_Global_Racer_Handling", "box_Switch_52.Output", "box_PlayDialog_v6_48.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_52_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_45();
    l0 = self.box_Switch_52;
    l1 = self.box_PlayDialog_v6_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1701846699", "1701846699", "MIS_435_Global_Racer_Handling", "box_Switch_52.Output", "box_PlayDialog_v6_45.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_52_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = self.box_Switch_52;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|78785858", "78785858", "MIS_435_Global_Racer_Handling", "box_Switch_52.Output", "box_Simple_Node_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_47_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_44();
    l0 = self.box_OnceOnly_v3_47;
    l1 = self.box_Delay_v5_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|818983333", "818983333", "MIS_435_Global_Racer_Handling", "box_OnceOnly_v3_47.Out", "box_Delay_v5_44.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived();
    params = self:OnEnter_box_GroupSizeListener_v6_1();
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    l1 = self.box_GroupSizeListener_v6_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|354649613", "354649613", "MIS_435_Global_Racer_Handling", "box_CharacterLoadedIdListener_v2_15.LoadedIdReceived", "box_GroupSizeListener_v6_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_23_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_23;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1135617106", "1135617106", "MIS_435_Global_Racer_Handling", "box_PlayDialog_v6_23.Finished", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_23_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_23;
    l1 = self.box_MultipleOR_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1904938427", "1904938427", "MIS_435_Global_Racer_Handling", "box_PlayDialog_v6_23.FinishedInterrupted", "box_MultipleOR_50.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_44_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = self.box_Delay_v5_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1733480053", "1733480053", "MIS_435_Global_Racer_Handling", "box_Delay_v5_44.TimeElapsed", "box_OutputOrder_v2_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_46_Opened()
    local l0, l1;
    l0 = self.box_Gate_v3_46;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2006281405", "2006281405", "MIS_435_Global_Racer_Handling", "box_Gate_v3_46.Opened", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_46_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_46;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|586947055", "586947055", "MIS_435_Global_Racer_Handling", "box_Gate_v3_46.Out", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_39();
    l0 = self.box_Gate_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1721198885", "1721198885", "MIS_435_Global_Racer_Handling", "box_OutputOrder_v2_43.Out", "box_Gate_v3_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_46();
    l0 = self.box_Gate_v3_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1711822772", "1711822772", "MIS_435_Global_Racer_Handling", "box_OutputOrder_v2_43.Out", "box_Gate_v3_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|341824429", "341824429", "MIS_435_Global_Racer_Handling", "box_OutputOrder_v2_10.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_15();
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|212387530", "212387530", "MIS_435_Global_Racer_Handling", "box_OutputOrder_v2_10.Out", "box_CharacterLoadedIdListener_v2_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerFullyDetected_41();
    l0 = self.box_PlayerFullyDetected_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1737135264", "1737135264", "MIS_435_Global_Racer_Handling", "box_OutputOrder_v2_10.Out", "box_PlayerFullyDetected_41.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayerFullyDetected_41_Detected()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_51();
    l0 = self.box_PlayerFullyDetected_41;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|70914734", "70914734", "MIS_435_Global_Racer_Handling", "box_PlayerFullyDetected_41.Detected", "box_Simple_Node_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_32_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_Delay_v5_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|135716641", "135716641", "MIS_435_Global_Racer_Handling", "box_Delay_v5_32.TimeElapsed", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_42_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_42;
    l1 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|221511793", "221511793", "MIS_435_Global_Racer_Handling", "box_MultipleOR_42.Out", "box_OnceOnly_v3_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_31();
    l0 = self.box_Switch_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2102469123", "2102469123", "MIS_435_Global_Racer_Handling", "box_OutputOrder_v2_40.Out", "box_Switch_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1495861012", "1495861012", "MIS_435_Global_Racer_Handling", "box_OutputOrder_v2_40.Out", "box_OnceOnly_v3_47.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Gate_v3_39_Out()
    local l0, l1;
    l0 = self.box_Gate_v3_39;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1369995107", "1369995107", "MIS_435_Global_Racer_Handling", "box_Gate_v3_39.Out", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_52();
    l0 = self.box_Switch_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|149764151", "149764151", "MIS_435_Global_Racer_Handling", "box_OutputOrder_v2_34.Out", "box_Switch_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|570273075", "570273075", "MIS_435_Global_Racer_Handling", "box_OutputOrder_v2_34.Out", "box_OnceOnly_v3_33.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_MultipleOR_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_49();
    l0 = self.box_MultipleOR_50;
    l1 = self.box_PlayDialog_v6_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1057483888", "1057483888", "MIS_435_Global_Racer_Handling", "box_MultipleOR_50.Out", "box_PlayDialog_v6_49.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_2();
    l0 = self.box_Switch_7;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|866759154", "866759154", "MIS_435_Global_Racer_Handling", "box_Switch_7.Out", "box_Print_v2_2.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_7_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_20();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|589086320", "589086320", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_19();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1996640815", "1996640815", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_18();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1481505013", "1481505013", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_17();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|973460144", "973460144", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_16();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1416124024", "1416124024", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_14();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|631582343", "631582343", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_13();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|235934149", "235934149", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_12();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1786315982", "1786315982", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_11();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1114339089", "1114339089", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_9();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1938637410", "1938637410", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_8();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2081632861", "2081632861", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_6();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1985653096", "1985653096", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_5();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|2002070006", "2002070006", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_13()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_4();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|906417413", "906417413", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Switch_7_Output_14()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_435_Car_Destruction_3();
    l0 = self.box_Switch_7;
    l1 = self.box_MIS_435_Car_Destruction_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1623006835", "1623006835", "MIS_435_Global_Racer_Handling", "box_Switch_7.Output", "box_MIS_435_Car_Destruction_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_32();
    l0 = self.box_OnceOnly_v3_33;
    l1 = self.box_Delay_v5_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1637427787", "1637427787", "MIS_435_Global_Racer_Handling", "box_OnceOnly_v3_33.Out", "box_Delay_v5_32.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v6_1_Enabled()
    self:OnExit_box_GroupSizeListener_v6_1_Enabled();
end;

function export:f_box_GroupSizeListener_v6_1_MemberAdded()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_1_MemberAdded();
    params = self:OnEnter_box_Switch_7();
    l0 = self.box_GroupSizeListener_v6_1;
    l1 = self.box_Switch_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|770608083", "770608083", "MIS_435_Global_Racer_Handling", "box_GroupSizeListener_v6_1.MemberAdded", "box_Switch_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v6_1_MemberDied()
    self:OnExit_box_GroupSizeListener_v6_1_MemberDied();
end;

function export:f_box_GroupSizeListener_v6_1_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v6_1_MemberRemoved();
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_GroupSizeListener_v6_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|555523270", "555523270", "MIS_435_Global_Racer_Handling", "box_GroupSizeListener_v6_1.MemberRemoved", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v6_1_MemberSpawned()
    self:OnExit_box_GroupSizeListener_v6_1_MemberSpawned();
end;

function export:OnEnter_box_Simple_Node_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|@n_playerDetected");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_51_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_31()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Switch_52()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015328871120802",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_21()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2242301769",
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_13()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_14()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_23()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1050010642",
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_18()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_44()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_46()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_27()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "146710309",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_24()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "654938376",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_49()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3726203737",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|534502178");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_35()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3962817325",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_30()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1673901629",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|601285456");
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

function export:OnEnter_box_MIS_435_Car_Destruction_11()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_45()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1895529461",
    };
    return params;
end;

function export:OnEnter_box_PlayerFullyDetected_41()
    local params;
    params = {
        -- group,
        [0] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_28()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2742290104",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "350145562",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_32()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2038438138",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1006015657");
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
                [0] = self.f_box_OutputOrder_v2_40_Out_0,
                [1] = self.f_box_OutputOrder_v2_40_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_39()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1019221287");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_19()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_16()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\Specialists\\MIS_435\\MIS_435_B20.domino|@MIS_435_Global_Racer_Handling|1231308461");
    l0:SetConnections({
    });
    l0 = self.box_Switch_7;
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

function export:OnEnter_box_MIS_435_Car_Destruction_20()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_29()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "835704804",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_38()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3475381030",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_48()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3616059250",
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_6()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_Switch_7()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_5()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v6_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = self.RacerGroup,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_37()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "770735177",
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_9()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_17()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_36()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3461909389",
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_12()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_8()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_26()
    local params;
    params = {
        -- Group,
        [0] = "2109111895366584663",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4262900784",
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_3()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnEnter_box_MIS_435_Car_Destruction_4()
    local params;
    params = {
        -- Driver,
        [0] = self.e_racerKilled,
        -- e_protectedDriver,
        [1] = self.e_Gina,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_15_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_15;
    self.e_Gina = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_1_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v6_1;
    self.i_racers = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v6_1_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v6_1;
    self.i_racers = l0:GetDataOutValue(1);
    self.e_racerKilled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_1_MemberDied()
    local l0;
    l0 = self.box_GroupSizeListener_v6_1;
    self.i_racers = l0:GetDataOutValue(1);
    self.e_racerKilled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_1_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v6_1;
    self.i_racers = l0:GetDataOutValue(1);
    self.e_racerKilled = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v6_1_MemberSpawned()
    local l0;
    l0 = self.box_GroupSizeListener_v6_1;
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
