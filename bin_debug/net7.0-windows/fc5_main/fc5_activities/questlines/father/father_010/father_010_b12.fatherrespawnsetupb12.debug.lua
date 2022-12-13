LUACx6 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b12.domino
-- User graph: FatherRespawnSetupB12
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
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GetFromGroup.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EnableIgnitorEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetGroup.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2066079282.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3633615523.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3630723295.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2033743972.bnk]], "CSoundResource");
        cboxRes:LoadResource([[49160522.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B12.FatherRespawnSetupB12.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableListener",
            },
            [1] = {
                name = "NormalStart",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FatherKilled",
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")] = {
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
                name = "Pawns",
                type = "list",
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
    metadataTable[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")] = {
        stateless = true,
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/HealthModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Damage",
            },
            [1] = {
                name = "Heal",
            },
            [2] = {
                name = "RemoveCritical",
            },
            [3] = {
                name = "Set",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Damaged",
                delayed = false,
            },
            [1] = {
                name = "Healed",
                delayed = false,
            },
            [2] = {
                name = "OnRemoveCritical",
                delayed = false,
            },
            [3] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "damageWithStim",
                type = "int",
            },
            [1] = {
                name = "origin",
                type = "entity",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "value",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ListReader.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Read",
            },
            [1] = {
                name = "ResetRead",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "EndOfList",
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
                name = "Index",
                type = "int",
            },
            [1] = {
                name = "Input",
                type = "list",
            },
            [2] = {
                name = "Loop",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "CursorPos",
                type = "int",
            },
            [1] = {
                name = "Data",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/SoundModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Started",
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
                name = "SoundId",
                type = "Sound",
            },
            [2] = {
                name = "SoundType",
                type = "SoundType",
            },
            [3] = {
                name = "StopFadeOut",
                type = "float",
            },
            [4] = {
                name = "UseSubtitles",
                type = "bool",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
            },
        },
        controlInCount = 3,
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
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
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
    self._name = "FatherRespawnSetupB12";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12";
    self.FatherKilled = DummyFunction;
    self.FatherPawnGroupChosen = "#4702C99F";
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|51673886");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_GroupSizeListener_v5_25 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|107313457");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_25_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_25_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_25_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_25_MemberRemoved,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|167005742");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_Gate_v3_9 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|208907795");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_9_Out,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|235319884");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_6_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_Random_47 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|342702788");
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
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_47_Output_0,
                [2] = self.f_box_Random_47_Output_2,
                [4] = self.f_box_Random_47_Output_4,
                [6] = self.f_box_Random_47_Output_6,
                [8] = self.f_box_Random_47_Output_8,
            },
            count = 9,
        },
    });
    self.box_Gate_v3_39 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|365755315");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_39_Out,
    });
    self.box_Gate_v3_40 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|468429106");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_40_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|507791471");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_SoundModifier_v2_44 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|637223917");
    l0:SetConnections({
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|690620241");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_SoundModifier_v2_38 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|776559242");
    l0:SetConnections({
    });
    self.box_SpawnAI_17 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|851078429");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_17_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_17_Spawned,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1010926640");
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
    self.box_Random_18 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1011489591");
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
        -- None,
        [0] = self.f_box_Random_18_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_18_Output_0,
                [1] = self.f_box_Random_18_Output_1,
                [2] = self.f_box_Random_18_Output_2,
                [3] = self.f_box_Random_18_Output_3,
            },
            count = 4,
        },
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1032114413");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1192614434");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1315936192");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_14_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_14_Spawned,
    });
    self.box_GroupSizeListener_v5_13 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1361834621");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_13_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_13_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_13_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_13_MemberRemoved,
    });
    self.box_SoundModifier_v2_48 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1371765943");
    l0:SetConnections({
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1408784441");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_SoundModifier_v2_49 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1429029930");
    l0:SetConnections({
    });
    self.box_ListReader_16 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1627230715");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_16_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_16_Out,
    });
    self.box_Gate_v3_46 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1656962114");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_46_Out,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1665170738");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_21_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_21_Spawned,
    });
    self.box_Gate_v3_31 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1691338544");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_31_Out,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1728799489");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1892956171");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_10_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_10_Spawned,
    });
    self.box_Gate_v3_41 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1989333965");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_41_Out,
    });
    self.box_SoundModifier_v2_45 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1994003494");
    l0:SetConnections({
    });
end;

function export:DisableListener()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_40();
    l0 = self.box_Gate_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1137932243", "1137932243", "FatherRespawnSetupB12", "DisableListener", "box_Gate_v3_40.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v5_13();
    l0 = self.box_GroupSizeListener_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|190031515", "190031515", "FatherRespawnSetupB12", "DisableListener", "box_GroupSizeListener_v5_13.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_39();
    l0 = self.box_Gate_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|859200387", "859200387", "FatherRespawnSetupB12", "DisableListener", "box_Gate_v3_39.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1963892306", "1963892306", "FatherRespawnSetupB12", "DisableListener", "box_Gate_v3_9.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1842911069", "1842911069", "FatherRespawnSetupB12", "DisableListener", "box_Gate_v3_41.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_31();
    l0 = self.box_Gate_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|678683340", "678683340", "FatherRespawnSetupB12", "DisableListener", "box_Gate_v3_31.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_46();
    l0 = self.box_Gate_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|374213082", "374213082", "FatherRespawnSetupB12", "DisableListener", "box_Gate_v3_46.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:NormalStart()
    local l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1088378706", "1088378706", "FatherRespawnSetupB12", "NormalStart", "box_MultipleOR_4.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_18();
    l0 = self.box_Random_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|928025149", "928025149", "FatherRespawnSetupB12", "box_Simple_Node_22.Out", "box_Random_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_7_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1607195803", "1607195803", "FatherRespawnSetupB12", "box_Compare_Integers_7.A_eq_B", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_7_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_5();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1353804480", "1353804480", "FatherRespawnSetupB12", "box_Compare_Integers_7.A_gt_B", "box_HealthModifier_v2_5.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1441823118", "1441823118", "FatherRespawnSetupB12", "box_MultipleOR_1.Out", "FatherKilled", l0:GetLuaBox(), self);
    self:FatherKilled();
end;

function export:f_box_GroupSizeListener_v5_25_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_25;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1364358923", "1364358923", "FatherRespawnSetupB12", "box_GroupSizeListener_v5_25.Enabled", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_25_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_25;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|21158776", "21158776", "FatherRespawnSetupB12", "box_GroupSizeListener_v5_25.MemberRemoved", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_40();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_Gate_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1688613663", "1688613663", "FatherRespawnSetupB12", "box_Delay_v5_29.TimeElapsed", "box_Gate_v3_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_Gate_v3_9;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|644773630", "644773630", "FatherRespawnSetupB12", "box_Gate_v3_9.Out", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|688166870", "688166870", "FatherRespawnSetupB12", "box_Delay_v5_6.Started", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1733817259", "1733817259", "FatherRespawnSetupB12", "box_Delay_v5_6.TimeElapsed", "box_Gate_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_47_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_45();
    l0 = self.box_Random_47;
    l1 = self.box_SoundModifier_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|322031451", "322031451", "FatherRespawnSetupB12", "box_Random_47.Output", "box_SoundModifier_v2_45.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_47_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_38();
    l0 = self.box_Random_47;
    l1 = self.box_SoundModifier_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|643099577", "643099577", "FatherRespawnSetupB12", "box_Random_47.Output", "box_SoundModifier_v2_38.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_47_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_48();
    l0 = self.box_Random_47;
    l1 = self.box_SoundModifier_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|185991111", "185991111", "FatherRespawnSetupB12", "box_Random_47.Output", "box_SoundModifier_v2_48.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_47_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_44();
    l0 = self.box_Random_47;
    l1 = self.box_SoundModifier_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1092653324", "1092653324", "FatherRespawnSetupB12", "box_Random_47.Output", "box_SoundModifier_v2_44.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_47_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_49();
    l0 = self.box_Random_47;
    l1 = self.box_SoundModifier_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1505159484", "1505159484", "FatherRespawnSetupB12", "box_Random_47.Output", "box_SoundModifier_v2_49.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_Gate_v3_39;
    l1 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1983307665", "1983307665", "FatherRespawnSetupB12", "box_Gate_v3_39.Out", "box_SpawnAI_21.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetGroup_2_Out()
    local l0;
    self:OnExit_box_SetGroup_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|665774880", "665774880", "FatherRespawnSetupB12", "box_SetGroup_2.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Gate_v3_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_Gate_v3_40;
    l1 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|260122595", "260122595", "FatherRespawnSetupB12", "box_Gate_v3_40.Out", "box_SpawnAI_10.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EnableIgnitorEntityBox_v2_19_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|185698912", "185698912", "FatherRespawnSetupB12", "box_EnableIgnitorEntityBox_v2_19.Disabled", "box_TaggingModifier_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetFromGroup_20();
    l0 = self.box_MultipleOR_3;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1959901077", "1959901077", "FatherRespawnSetupB12", "box_MultipleOR_3.Out", "box_GetFromGroup_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_24_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1413510998", "1413510998", "FatherRespawnSetupB12", "box_Compare_Integers_24.A_eq_B", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetGroup_11_Out()
    local l0;
    self:OnExit_box_SetGroup_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|811173488", "811173488", "FatherRespawnSetupB12", "box_SetGroup_11.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_39();
    l0 = self.box_Delay_v5_27;
    l1 = self.box_Gate_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|306515404", "306515404", "FatherRespawnSetupB12", "box_Delay_v5_27.TimeElapsed", "box_Gate_v3_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetGroup_8_Out()
    local l0;
    self:OnExit_box_SetGroup_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1707943731", "1707943731", "FatherRespawnSetupB12", "box_SetGroup_8.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_17_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_SpawnAI_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1360485292", "1360485292", "FatherRespawnSetupB12", "box_SpawnAI_17.Fail", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_17_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_2();
    l0 = self.box_SpawnAI_17;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1926853126", "1926853126", "FatherRespawnSetupB12", "box_SpawnAI_17.Spawned", "box_SetGroup_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_25();
    l0 = self.box_MultipleOR_4;
    l1 = self.box_GroupSizeListener_v5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|469102192", "469102192", "FatherRespawnSetupB12", "box_MultipleOR_4.Out", "box_GroupSizeListener_v5_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Random_18_None()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_Random_18;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|2076219406", "2076219406", "FatherRespawnSetupB12", "box_Random_18.None", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_18_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Random_18;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1015306850", "1015306850", "FatherRespawnSetupB12", "box_Random_18.Output", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_18_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Random_18;
    l1 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1797732025", "1797732025", "FatherRespawnSetupB12", "box_Random_18.Output", "box_Delay_v5_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_18_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Random_18;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|100003191", "100003191", "FatherRespawnSetupB12", "box_Random_18.Output", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_18_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Random_18;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|153941697", "153941697", "FatherRespawnSetupB12", "box_Random_18.Output", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_31();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_Gate_v3_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|2022777654", "2022777654", "FatherRespawnSetupB12", "box_Delay_v5_28.TimeElapsed", "box_Gate_v3_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_HealthModifier_v2_5_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|850664642", "850664642", "FatherRespawnSetupB12", "box_HealthModifier_v2_5.Damaged", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_24();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|417047217", "417047217", "FatherRespawnSetupB12", "box_MultipleOR_15.Out", "box_Compare_Integers_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetFromGroup_20_Out()
    local params, l0;
    self:OnExit_box_GetFromGroup_20_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_16();
    l0 = self.box_ListReader_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1758604673", "1758604673", "FatherRespawnSetupB12", "box_GetFromGroup_20.Out", "box_ListReader_16.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_14_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_SpawnAI_14;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1881749037", "1881749037", "FatherRespawnSetupB12", "box_SpawnAI_14.Fail", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_14_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_11();
    l0 = self.box_SpawnAI_14;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1484189246", "1484189246", "FatherRespawnSetupB12", "box_SpawnAI_14.Spawned", "box_SetGroup_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_7();
    l0 = self.box_GroupSizeListener_v5_13;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1433199222", "1433199222", "FatherRespawnSetupB12", "box_GroupSizeListener_v5_13.Enabled", "box_Compare_Integers_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1932395193", "1932395193", "FatherRespawnSetupB12", "box_Delay_v5_30.TimeElapsed", "box_Gate_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_TaggingModifier_v3_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_23();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1538519188", "1538519188", "FatherRespawnSetupB12", "box_TaggingModifier_v3_23.Enabled", "box_TaggingModifier_v3_23.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_23_Tagged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|314162356", "314162356", "FatherRespawnSetupB12", "box_TaggingModifier_v3_23.Tagged", "box_MultipleOR_4.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ListReader_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_19();
    l0 = self.box_ListReader_16;
    l1 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1846074263", "1846074263", "FatherRespawnSetupB12", "box_ListReader_16.Out", "box_EnableIgnitorEntityBox_v2_19.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_47();
    l0 = self.box_Gate_v3_46;
    l1 = self.box_Random_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|515917962", "515917962", "FatherRespawnSetupB12", "box_Gate_v3_46.Out", "box_Random_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_21_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_SpawnAI_21;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1759143780", "1759143780", "FatherRespawnSetupB12", "box_SpawnAI_21.Fail", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_21_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_8();
    l0 = self.box_SpawnAI_21;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|72115088", "72115088", "FatherRespawnSetupB12", "box_SpawnAI_21.Spawned", "box_SetGroup_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_Gate_v3_31;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1514732785", "1514732785", "FatherRespawnSetupB12", "box_Gate_v3_31.Out", "box_SpawnAI_14.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_46();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_Gate_v3_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|623782397", "623782397", "FatherRespawnSetupB12", "box_Delay_v5_43.TimeElapsed", "box_Gate_v3_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_10_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_SpawnAI_10;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1517934664", "1517934664", "FatherRespawnSetupB12", "box_SpawnAI_10.Fail", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_10_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_12();
    l0 = self.box_SpawnAI_10;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1195963300", "1195963300", "FatherRespawnSetupB12", "box_SpawnAI_10.Spawned", "box_SetGroup_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetGroup_12_Out()
    local l0;
    self:OnExit_box_SetGroup_12_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|464489373", "464489373", "FatherRespawnSetupB12", "box_SetGroup_12.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_Gate_v3_41;
    l1 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1686497157", "1686497157", "FatherRespawnSetupB12", "box_Gate_v3_41.Out", "box_SpawnAI_17.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|@FailedSpawnRetry");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|35475304");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_7_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_7_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_13;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.FatherPawnGroupChosen,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_9()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Random_47()
    local params;
    params = {
        -- AutoReset,
        [0] = true,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 9,
        },
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

function export:OnEnter_box_SetGroup_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|377467216");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_2_Out,
    });
    params = {
        -- Group,
        [0] = "#C4D3F893",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_40()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_19()
    local params, l0;
    DrawTextToScreen("Comment: We do not want Father to take Fire Damage for Difficulty Curve", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EnableIgnitorEntityBox_v2')-- Comment: We do not want Father to take Fire Damage for Difficulty Curve");
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|487678843");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EnableIgnitorEntityBox_v2_19_Disabled,
    });
    l0 = self.box_ListReader_16;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|561756466");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_24_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_25;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_44()
    local params;
    DrawTextToScreen("Comment: Father (Ethereal) - Be gone, demon!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Father (Ethereal) - Be gone, demon!");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2033743972",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetGroup_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|655482174");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_11_Out,
    });
    params = {
        -- Group,
        [0] = "#B4B90C1C",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SetGroup_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|752515112");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_8_Out,
    });
    params = {
        -- Group,
        [0] = "#2DB05DA6",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_38()
    local params;
    DrawTextToScreen("Comment: Father (Ethereal) - Mine is the face of truth.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Father (Ethereal) - Mine is the face of truth.");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3633615523",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_17()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105048880767870267",
    };
    return params;
end;

function export:OnEnter_box_Random_18()
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

function export:OnEnter_box_Delay_v5_28()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1116597777");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_5_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#FC8CECFC",
        -- value,
        [3] = 100,
    };
    return params;
end;

function export:OnEnter_box_GetFromGroup_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetFromGroup_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1224945461");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetFromGroup_20_Out,
    });
    params = {
        -- Group,
        [0] = self.FatherPawnGroupChosen,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_14()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105048886065276301",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#FC8CECFC",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_48()
    local params;
    DrawTextToScreen("Comment: Father (Ethereal) - The hands of many are stronger than a few.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Father (Ethereal) - The hands of many are stronger than a few.");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3630723295",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_49()
    local params;
    DrawTextToScreen("Comment: Father - Should be Sound and Ethereal - You will feel the full fury of the Lord! - UNUSED FOR NOW", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Father - Should be Sound and Ethereal - You will feel the full fury of the Lord! - UNUSED FOR NOW");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2066079282",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1441721765");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_23_Enabled,
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_23_Tagged,
    });
    l0 = self.box_ListReader_16;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ListReader_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_46()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105048838600434340",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_31()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105048856099071017",
    };
    return params;
end;

function export:OnEnter_box_SetGroup_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B12.domino|@FatherRespawnSetupB12|1916269169");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_12_Out,
    });
    params = {
        -- Group,
        [0] = "#5AB76D30",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_41()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_45()
    local params;
    DrawTextToScreen("Comment: Father (Ethereal) - Together, we are one", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: Father (Ethereal) - Together, we are one");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "49160522",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = true,
    };
    return params;
end;

function export:OnExit_box_SetGroup_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetFromGroup_20_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l1 = self.box_ListReader_16;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_12_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:FatherKilled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="DisableListener" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="NormalStart" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="FatherKilled" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
