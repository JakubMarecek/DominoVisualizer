LUAC�H -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_040/lt03_040_b10.domino
-- User graph: LT03_040_B10_Sounds_and_VOs
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
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3162818195.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3967884928.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2314369886.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2202680895.bnk]], "CSoundResource");
        cboxRes:LoadResource([[580552342.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2424237087.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2669078383.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1596418830.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1930893664.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1021139095.bnk]], "CSoundResource");
        cboxRes:LoadResource([[844509488.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3017338243.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2878209264.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1204233986.bnk]], "CSoundResource");
        cboxRes:LoadResource([[129035707.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1835053147.bnk]], "CSoundResource");
        cboxRes:LoadResource([[620414411.bnk]], "CSoundResource");
        cboxRes:LoadResource([[948514448.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1746776139.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1405359550.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2851143320.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2618250348.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3526029009.bnk]], "CSoundResource");
        cboxRes:LoadResource([[850744205.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1774590103.bnk]], "CSoundResource");
        cboxRes:LoadResource([[277291778.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.LT03_040_B10 = nil;
    Globals.LT03_040_B10 = {
        eRealFaith = nil,
        fCurrentHealth = 100,
        eRealFaithDialogPoint = nil,
        RealFaith_2 = false,
        RealFaith_1 = false,
        RealFaith_3 = false,
        RealFaith_4 = false,
        RealFaith_5 = false,
        RealFaith_6 = false,
        RealFaith_7 = false,
        ePlayerAttacking = nil,
        iFaithProgress = 100,
        iFaithNumber = 3,
        Faith_Invisible = {
        },
        Faith_Visible = {
        },
        fAngelWaveIntervale = 15,
        bFaithHintTimer = 0.1,
        fBuildUp_Timer = 21,
        fMortarFrequency = 17,
        iNbrMortarPerAttack = 2,
        iFaithTeleportNbr = 2,
        bFaithTeleport = false,
        Faith_Circle = {
        },
        Faith_Random = {
        },
        fProjectileSpeed = 15,
        fTeleportTimer = 13.5,
        bActivateMarker = false,
        RealFaith_8 = false,
        RealFaith_9 = false,
        RealFaith_10 = false,
        eFaithTeleport_FX = "2104423650397529717",
        eLocalPlayer = nil,
        fThresholdHealth = 85,
        iAngelNbr = 0,
        RealFaith_Start = true,
        fTeleportDuration = 2,
        ePlayer1 = nil,
        ePlayer2 = nil,
        PlayersToTarget = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Sounds_and_VOs.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Clone_Killed",
            },
            [1] = {
                name = "Faith_Found",
            },
            [2] = {
                name = "Faith_Spawned",
            },
            [3] = {
                name = "Reset_VO",
            },
        },
        controlInCount = 4,
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
    metadataTable[GetPathID("Domino/System/CompareIntegers.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_eq_B",
                delayed = false,
            },
            [1] = {
                name = "A_ge_B",
                delayed = false,
            },
            [2] = {
                name = "A_gt_B",
                delayed = false,
            },
            [3] = {
                name = "A_le_B",
                delayed = false,
            },
            [4] = {
                name = "A_lt_B",
                delayed = false,
            },
            [5] = {
                name = "A_ne_B",
                delayed = false,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "A",
                type = "int",
            },
            [1] = {
                name = "B",
                type = "int",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/SetInteger_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromFloat",
            },
            [1] = {
                name = "FromInteger",
            },
            [2] = {
                name = "FromString",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Float",
                type = "float",
            },
            [1] = {
                name = "Integer",
                type = "int",
            },
            [2] = {
                name = "String",
                type = "string",
            },
            [3] = {
                name = "UseFloor",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "Target",
                type = "int",
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
    self._name = "LT03_040_B10_Sounds_and_VOs";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs";
    self.iCounterVO1 = 0;
    self.iCounterVO2 = 0;
    self.box_Gate_v3_10 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|12678427");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_10_Out,
    });
    self.box_PlayDialog_v6_18 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|88088981");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_4 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|241830228");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_4_Finished,
    });
    self.box_PlayDialog_v6_21 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|263947526");
    l0:SetConnections({
    });
    self.box_MultipleOR_39 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|294912667");
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
        [0] = self.f_box_MultipleOR_39_Out,
    });
    self.box_PlayDialog_v6_5 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|315654780");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_5_Finished,
    });
    self.box_PlayDialog_v6_1 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|406258240");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_16 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|448775323");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_16_Finished,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|652269449");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 9,
        },
        controlOut = {
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_2 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|690140523");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_2_Finished,
    });
    self.box_PlayDialog_v6_33 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|753647814");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_33_Finished,
    });
    self.box_PlayDialog_v6_9 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|766049051");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_6 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|799868819");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_20 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|822753174");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_20_Finished,
    });
    self.box_PlayDialog_v6_19 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|845405131");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_19_Finished,
    });
    self.box_PlayDialog_v6_14 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|894445504");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_11 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1026941993");
    l0:SetConnections({
    });
    self.box_IndexList_v2_13 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1047355474");
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
        -- Output,
        [0] = {
            connections = {
                [1] = self.f_box_IndexList_v2_13_Output_1,
                [2] = self.f_box_IndexList_v2_13_Output_2,
                [3] = self.f_box_IndexList_v2_13_Output_3,
            },
            count = 4,
        },
    });
    self.box_PlayDialog_v6_30 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1054573228");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_30_Finished,
    });
    self.box_OnceOnly_v3_3 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1055483072");
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
                [0] = self.f_box_OnceOnly_v3_3_Out_0,
            },
            count = 2,
        },
    });
    self.box_IndexList_v2_7 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1214446771");
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
        -- Output,
        [0] = {
            connections = {
                [1] = self.f_box_IndexList_v2_7_Output_1,
                [2] = self.f_box_IndexList_v2_7_Output_2,
                [3] = self.f_box_IndexList_v2_7_Output_3,
            },
            count = 4,
        },
    });
    self.box_PlayDialog_v6_8 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1239866839");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_32 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1441519703");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_23 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1549585072");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_26 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1557266721");
    l0:SetConnections({
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1625962648");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_PlayDialog_v6_22 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1632788630");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_34 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1696610214");
    l0:SetConnections({
    });
    self.box_Random_28 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1842566088");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 9,
        },
        dataIn = {
            [1] = 9,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Random_28_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_28_Output_0,
                [1] = self.f_box_Random_28_Output_1,
                [2] = self.f_box_Random_28_Output_2,
                [3] = self.f_box_Random_28_Output_3,
                [4] = self.f_box_Random_28_Output_4,
                [5] = self.f_box_Random_28_Output_5,
                [6] = self.f_box_Random_28_Output_6,
                [7] = self.f_box_Random_28_Output_7,
                [8] = self.f_box_Random_28_Output_8,
            },
            count = 9,
        },
    });
    self.box_PlayDialog_v6_31 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1881559998");
    l0:SetConnections({
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1934565227");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_35_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_PlayDialog_v6_17 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1985047334");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_15 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1998074358");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2044539939");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_25_Finished,
    });
    self.box_Random_27 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2084653243");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 17,
        },
        dataIn = {
            [1] = 17,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Random_27_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_27_Output_0,
                [1] = self.f_box_Random_27_Output_1,
                [2] = self.f_box_Random_27_Output_2,
                [3] = self.f_box_Random_27_Output_3,
                [4] = self.f_box_Random_27_Output_4,
                [5] = self.f_box_Random_27_Output_5,
                [6] = self.f_box_Random_27_Output_6,
                [7] = self.f_box_Random_27_Output_7,
                [8] = self.f_box_Random_27_Output_8,
                [9] = self.f_box_Random_27_Output_9,
                [10] = self.f_box_Random_27_Output_10,
                [11] = self.f_box_Random_27_Output_11,
                [12] = self.f_box_Random_27_Output_12,
                [13] = self.f_box_Random_27_Output_13,
                [14] = self.f_box_Random_27_Output_14,
                [15] = self.f_box_Random_27_Output_15,
                [16] = self.f_box_Random_27_Output_16,
            },
            count = 17,
        },
    });
    self.box_PlayDialog_v6_12 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2145553561");
    l0:SetConnections({
    });
end;

function export:Clone_Killed()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|121219963", "121219963", "LT03_040_B10_Sounds_and_VOs", "Clone_Killed", "box_Simple_Node_38.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Faith_Found()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|518907111", "518907111", "LT03_040_B10_Sounds_and_VOs", "Faith_Found", "box_Delay_v5_35.Stop", self, l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:Faith_Spawned()
    local l0;
    l0 = self.box_OnceOnly_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|393000269", "393000269", "LT03_040_B10_Sounds_and_VOs", "Faith_Spawned", "box_OnceOnly_v3_3.In", self, l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:Reset_VO()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|320060666", "320060666", "LT03_040_B10_Sounds_and_VOs", "Reset_VO", "box_Gate_v3_10.Open", self, l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
    l0 = self.box_OnceOnly_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|444367505", "444367505", "LT03_040_B10_Sounds_and_VOs", "Reset_VO", "box_OnceOnly_v3_3.Reset", self, l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_13();
    l0 = self.box_IndexList_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1495448545", "1495448545", "LT03_040_B10_Sounds_and_VOs", "box_Simple_Node_38.Out", "box_IndexList_v2_13.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_7();
    l0 = self.box_IndexList_v2_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|491294830", "491294830", "LT03_040_B10_Sounds_and_VOs", "box_Simple_Node_36.Out", "box_IndexList_v2_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Gate_v3_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_27();
    l0 = self.box_Gate_v3_10;
    l1 = self.box_Random_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|952112806", "952112806", "LT03_040_B10_Sounds_and_VOs", "box_Gate_v3_10.Out", "box_Random_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayDialog_v6_4_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_4;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1291006711", "1291006711", "LT03_040_B10_Sounds_and_VOs", "box_PlayDialog_v6_4.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_MultipleOR_39;
    l1 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1076786048", "1076786048", "LT03_040_B10_Sounds_and_VOs", "box_MultipleOR_39.Out", "box_Delay_v5_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlayDialog_v6_5_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_5;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|994148306", "994148306", "LT03_040_B10_Sounds_and_VOs", "box_PlayDialog_v6_5.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_16_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_16;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1277175985", "1277175985", "LT03_040_B10_Sounds_and_VOs", "box_PlayDialog_v6_16.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_Compare_Integers_42_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_41();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|339479681", "339479681", "LT03_040_B10_Sounds_and_VOs", "box_Compare_Integers_42.A_ge_B", "box_SetInteger_v2_41.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_2_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_2;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1555362030", "1555362030", "LT03_040_B10_Sounds_and_VOs", "box_PlayDialog_v6_2.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_33_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_33;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|148251301", "148251301", "LT03_040_B10_Sounds_and_VOs", "box_PlayDialog_v6_33.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_PlayDialog_v6_20_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_20;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|419183929", "419183929", "LT03_040_B10_Sounds_and_VOs", "box_PlayDialog_v6_20.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_19_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_19;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1378762757", "1378762757", "LT03_040_B10_Sounds_and_VOs", "box_PlayDialog_v6_19.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_IndexList_v2_13_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_13;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1357748563", "1357748563", "LT03_040_B10_Sounds_and_VOs", "box_IndexList_v2_13.Output", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_13_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_13;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1989565052", "1989565052", "LT03_040_B10_Sounds_and_VOs", "box_IndexList_v2_13.Output", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_13_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_13;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|609536684", "609536684", "LT03_040_B10_Sounds_and_VOs", "box_IndexList_v2_13.Output", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_30_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_30;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2031138542", "2031138542", "LT03_040_B10_Sounds_and_VOs", "box_PlayDialog_v6_30.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_OnceOnly_v3_3_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_OnceOnly_v3_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1813529652", "1813529652", "LT03_040_B10_Sounds_and_VOs", "box_OnceOnly_v3_3.Out", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_7_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_7;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1667444001", "1667444001", "LT03_040_B10_Sounds_and_VOs", "box_IndexList_v2_7.Output", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_7_Output_2()
    local l0, l1;
    l0 = self.box_IndexList_v2_7;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|608432911", "608432911", "LT03_040_B10_Sounds_and_VOs", "box_IndexList_v2_7.Output", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_7_Output_3()
    local l0, l1;
    l0 = self.box_IndexList_v2_7;
    l1 = self.box_MultipleOR_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|935186281", "935186281", "LT03_040_B10_Sounds_and_VOs", "box_IndexList_v2_7.Output", "box_MultipleOR_39.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_28();
    l0 = self.box_MultipleOR_29;
    l1 = self.box_Random_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1305629036", "1305629036", "LT03_040_B10_Sounds_and_VOs", "box_MultipleOR_29.Out", "box_Random_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SetInteger_v2_44_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_44_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_28();
    l0 = self.box_Random_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|947023889", "947023889", "LT03_040_B10_Sounds_and_VOs", "box_SetInteger_v2_44.Out", "box_Random_28.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_Random_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_45();
    l0 = self.box_Random_28;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|841263383", "841263383", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Out", "box_IntegerArithmetics_v2_45.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_28_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_5();
    l0 = self.box_Random_28;
    l1 = self.box_PlayDialog_v6_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1870253356", "1870253356", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Output", "box_PlayDialog_v6_5.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_28_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_20();
    l0 = self.box_Random_28;
    l1 = self.box_PlayDialog_v6_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2103368343", "2103368343", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Output", "box_PlayDialog_v6_20.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_28_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_2();
    l0 = self.box_Random_28;
    l1 = self.box_PlayDialog_v6_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1561879023", "1561879023", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Output", "box_PlayDialog_v6_2.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_28_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_4();
    l0 = self.box_Random_28;
    l1 = self.box_PlayDialog_v6_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1581861885", "1581861885", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Output", "box_PlayDialog_v6_4.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_28_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_30();
    l0 = self.box_Random_28;
    l1 = self.box_PlayDialog_v6_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1706263306", "1706263306", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Output", "box_PlayDialog_v6_30.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_28_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_19();
    l0 = self.box_Random_28;
    l1 = self.box_PlayDialog_v6_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|173595878", "173595878", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Output", "box_PlayDialog_v6_19.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_28_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_Random_28;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|848543815", "848543815", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Output", "box_PlayDialog_v6_25.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_28_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_16();
    l0 = self.box_Random_28;
    l1 = self.box_PlayDialog_v6_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1882665201", "1882665201", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Output", "box_PlayDialog_v6_16.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_28_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_33();
    l0 = self.box_Random_28;
    l1 = self.box_PlayDialog_v6_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|704064526", "704064526", "LT03_040_B10_Sounds_and_VOs", "box_Random_28.Output", "box_PlayDialog_v6_33.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_43_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_44();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|275426247", "275426247", "LT03_040_B10_Sounds_and_VOs", "box_Compare_Integers_43.A_ge_B", "box_SetInteger_v2_44.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_35_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Delay_v5_35;
    l1 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|422927346", "422927346", "LT03_040_B10_Sounds_and_VOs", "box_Delay_v5_35.Stopped", "box_Gate_v3_10.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_10();
    l0 = self.box_Delay_v5_35;
    l1 = self.box_Gate_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|746284489", "746284489", "LT03_040_B10_Sounds_and_VOs", "box_Delay_v5_35.TimeElapsed", "box_Gate_v3_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_40_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_40_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_42();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1448045573", "1448045573", "LT03_040_B10_Sounds_and_VOs", "box_IntegerArithmetics_v2_40.Out", "box_Compare_Integers_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_25_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2047690923", "2047690923", "LT03_040_B10_Sounds_and_VOs", "box_PlayDialog_v6_25.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_Random_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_40();
    l0 = self.box_Random_27;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1147451653", "1147451653", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Out", "box_IntegerArithmetics_v2_40.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_27_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_6();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2027024614", "2027024614", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_6.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_31();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1125451820", "1125451820", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_31.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_9();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1617380277", "1617380277", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_9.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_26();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|607058881", "607058881", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_26.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_32();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1144186312", "1144186312", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_32.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_11();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1513037590", "1513037590", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_11.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_23();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|47644776", "47644776", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_23.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_18();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|8814418", "8814418", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_18.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_1();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|857232066", "857232066", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_1.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_9()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_8();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2017307501", "2017307501", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_8.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_10()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_34();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1897841144", "1897841144", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_34.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_11()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_15();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1184811844", "1184811844", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_15.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_12()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_21();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2070961112", "2070961112", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_21.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_13()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_12();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|974138119", "974138119", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_12.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_14()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_22();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2050682250", "2050682250", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_22.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_15()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_14();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1382829839", "1382829839", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_14.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Random_27_Output_16()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_17();
    l0 = self.box_Random_27;
    l1 = self.box_PlayDialog_v6_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|693623154", "693623154", "LT03_040_B10_Sounds_and_VOs", "box_Random_27.Output", "box_PlayDialog_v6_17.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetInteger_v2_41_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_41_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_27();
    l0 = self.box_Random_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|70696679", "70696679", "LT03_040_B10_Sounds_and_VOs", "box_SetInteger_v2_41.Out", "box_Random_27.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_IntegerArithmetics_v2_45_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_45_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_43();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1068967677", "1068967677", "LT03_040_B10_Sounds_and_VOs", "box_IntegerArithmetics_v2_45.Out", "box_Compare_Integers_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|@Play_Taunts_VO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|@Play_Whispers_VO");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_10()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_18()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1835053147",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_4()
    local params;
    params = {
        -- Group,
        [0] = "2104454558745973412",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1204233986",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_21()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2851143320",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_5()
    local params;
    params = {
        -- Group,
        [0] = "2104454558745973412",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "620414411",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_1()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2424237087",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_16()
    local params;
    params = {
        -- Group,
        [0] = "2104454558745973412",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1596418830",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|633628471");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_42_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iCounterVO2,
        -- B,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_2()
    local params;
    params = {
        -- Group,
        [0] = "2104454558745973412",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3162818195",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_33()
    local params;
    params = {
        -- Group,
        [0] = "2104454558745973412",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1746776139",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_9()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "850744205",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_6()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3017338243",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_20()
    local params;
    params = {
        -- Group,
        [0] = "2104454558745973412",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "277291778",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_19()
    local params;
    params = {
        -- Group,
        [0] = "2104454558745973412",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3526029009",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_14()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2618250348",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_11()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1021139095",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_13()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_30()
    local params;
    params = {
        -- Group,
        [0] = "2104454558745973412",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2314369886",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_7()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_8()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2202680895",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_32()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2878209264",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_23()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "129035707",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_26()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1930893664",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_22()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "580552342",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_34()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "948514448",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1766750962");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_44_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Random_28()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 9,
        },
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_31()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3967884928",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1922948865");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_43_A_ge_B,
    });
    params = {
        -- A,
        [0] = self.iCounterVO1,
        -- B,
        [1] = 9,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|1947863416");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_40_Out,
    });
    params = {
        -- A,
        [0] = self.iCounterVO2,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_17()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "844509488",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_15()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2669078383",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = "2104454558745973412",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1774590103",
    };
    return params;
end;

function export:OnEnter_box_Random_27()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 17,
        },
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2104706010");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_41_Out,
    });
    params = {
        -- Integer,
        [1] = 0,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Sounds_and_VOs|2110275146");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_45_Out,
    });
    params = {
        -- A,
        [0] = self.iCounterVO1,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_12()
    local params;
    params = {
        -- Group,
        [0] = "2104052582503686365",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1405359550",
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iCounterVO1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_40_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iCounterVO2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_41_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    self.iCounterVO2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_45_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.iCounterVO1 = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Clone_Killed" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Faith_Found" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Faith_Spawned" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Reset_VO" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
