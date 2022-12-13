LUAC�6 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b11.domino
-- User graph: FatherRespawnSetupB11
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B11.FatherRespawnSetupB11.debug.lua")] = {
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
    self._name = "FatherRespawnSetupB11";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11";
    self.FatherKilled = DummyFunction;
    self.WaitIfLastSpawn = 0;
    self.FatherPawnGroupChosen = "#DEE0AF9E";
    self.box_Delay_v5_31 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|115433021");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_31_TimeElapsed,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|116623113");
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
    self.box_Random_12 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|240148363");
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
        [0] = self.f_box_Random_12_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_12_Output_0,
                [1] = self.f_box_Random_12_Output_1,
                [2] = self.f_box_Random_12_Output_2,
                [3] = self.f_box_Random_12_Output_3,
            },
            count = 4,
        },
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|253738389");
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
    self.box_SpawnAI_6 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|263997296");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_6_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_6_Spawned,
    });
    self.box_Delay_v5_4 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|455098325");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_4_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_4_TimeElapsed,
    });
    self.box_GroupSizeListener_v5_28 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|490893185");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_28_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_28_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_28_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_28_MemberRemoved,
    });
    self.box_Gate_v3_17 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|544521202");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_17_Out,
    });
    self.box_Gate_v3_42 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|617339428");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_42_Out,
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|636189202");
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
        [0] = self.f_box_MultipleOR_2_Out,
    });
    self.box_GroupSizeListener_v5_11 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|661632680");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_11_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_11_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_11_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_11_MemberRemoved,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|707423494");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_Delay_v5_36 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|804739154");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_36_TimeElapsed,
    });
    self.box_Gate_v3_43 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|830609304");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_43_Out,
    });
    self.box_ListReader_24 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|990882291");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_24_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_24_Out,
    });
    self.box_SoundModifier_v2_38 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1102512274");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_39 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1202722961");
    l0:SetConnections({
    });
    self.box_Delay_v5_37 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1333433085");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_37_TimeElapsed,
    });
    self.box_SpawnAI_5 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1352800698");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_5_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_5_Spawned,
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1440359851");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_Random_8 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1544896032");
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
                [0] = self.f_box_Random_8_Output_0,
                [2] = self.f_box_Random_8_Output_2,
                [4] = self.f_box_Random_8_Output_4,
                [6] = self.f_box_Random_8_Output_6,
                [8] = self.f_box_Random_8_Output_8,
            },
            count = 9,
        },
    });
    self.box_SoundModifier_v2_19 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1576703987");
    l0:SetConnections({
    });
    self.box_Gate_v3_41 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1586594839");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_41_Out,
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1701065993");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_16_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_16_Spawned,
    });
    self.box_SoundModifier_v2_49 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1766812777");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_13 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1812603912");
    l0:SetConnections({
    });
    self.box_Gate_v3_44 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1833327874");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_44_Out,
    });
    self.box_Gate_v3_40 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1837130995");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_40_Out,
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1840706451");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|2020869086");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_15_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_15_Spawned,
    });
end;

function export:DisableListener()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_44();
    l0 = self.box_Gate_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|132623335", "132623335", "FatherRespawnSetupB11", "DisableListener", "box_Gate_v3_44.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_17();
    l0 = self.box_Gate_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|944569645", "944569645", "FatherRespawnSetupB11", "DisableListener", "box_Gate_v3_17.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_40();
    l0 = self.box_Gate_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|350731180", "350731180", "FatherRespawnSetupB11", "DisableListener", "box_Gate_v3_40.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_43();
    l0 = self.box_Gate_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1523592807", "1523592807", "FatherRespawnSetupB11", "DisableListener", "box_Gate_v3_43.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1671107921", "1671107921", "FatherRespawnSetupB11", "DisableListener", "box_Gate_v3_41.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v5_11();
    l0 = self.box_GroupSizeListener_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1644798037", "1644798037", "FatherRespawnSetupB11", "DisableListener", "box_GroupSizeListener_v5_11.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_42();
    l0 = self.box_Gate_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|235525920", "235525920", "FatherRespawnSetupB11", "DisableListener", "box_Gate_v3_42.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:NormalStart()
    local l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1217314104", "1217314104", "FatherRespawnSetupB11", "NormalStart", "box_MultipleOR_7.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_12();
    l0 = self.box_Random_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1460911635", "1460911635", "FatherRespawnSetupB11", "box_Simple_Node_21.Out", "box_Random_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GetFromGroup_23_Out()
    local params, l0;
    self:OnExit_box_GetFromGroup_23_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_24();
    l0 = self.box_ListReader_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1286033577", "1286033577", "FatherRespawnSetupB11", "box_GetFromGroup_23.Out", "box_ListReader_24.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_31_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_42();
    l0 = self.box_Delay_v5_31;
    l1 = self.box_Gate_v3_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1042470218", "1042470218", "FatherRespawnSetupB11", "box_Delay_v5_31.TimeElapsed", "box_Gate_v3_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_28();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_GroupSizeListener_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1341845285", "1341845285", "FatherRespawnSetupB11", "box_MultipleOR_7.Out", "box_GroupSizeListener_v5_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Random_12_None()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Random_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|999351703", "999351703", "FatherRespawnSetupB11", "box_Random_12.None", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_12_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Random_12;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1148069006", "1148069006", "FatherRespawnSetupB11", "box_Random_12.Output", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_12_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_31();
    l0 = self.box_Random_12;
    l1 = self.box_Delay_v5_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|363734214", "363734214", "FatherRespawnSetupB11", "box_Random_12.Output", "box_Delay_v5_31.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_12_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_36();
    l0 = self.box_Random_12;
    l1 = self.box_Delay_v5_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1620786337", "1620786337", "FatherRespawnSetupB11", "box_Random_12.Output", "box_Delay_v5_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_12_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_37();
    l0 = self.box_Random_12;
    l1 = self.box_Delay_v5_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|560538834", "560538834", "FatherRespawnSetupB11", "box_Random_12.Output", "box_Delay_v5_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_27();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|546210550", "546210550", "FatherRespawnSetupB11", "box_MultipleOR_22.Out", "box_Compare_Integers_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_6_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_SpawnAI_6;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1036158294", "1036158294", "FatherRespawnSetupB11", "box_SpawnAI_6.Fail", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_6_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_3();
    l0 = self.box_SpawnAI_6;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|982328243", "982328243", "FatherRespawnSetupB11", "box_SpawnAI_6.Spawned", "box_SetGroup_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetGroup_10_Out()
    local l0;
    self:OnExit_box_SetGroup_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|2021639173", "2021639173", "FatherRespawnSetupB11", "box_SetGroup_10.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Delay_v5_4_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|442814159", "442814159", "FatherRespawnSetupB11", "box_Delay_v5_4.Started", "box_Delay_v5_46.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_4_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_17();
    l0 = self.box_Delay_v5_4;
    l1 = self.box_Gate_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1534595708", "1534595708", "FatherRespawnSetupB11", "box_Delay_v5_4.TimeElapsed", "box_Gate_v3_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_28_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_28;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|2049850145", "2049850145", "FatherRespawnSetupB11", "box_GroupSizeListener_v5_28.Enabled", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_28_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_28;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1703224462", "1703224462", "FatherRespawnSetupB11", "box_GroupSizeListener_v5_28.MemberRemoved", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_Gate_v3_17;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1819038233", "1819038233", "FatherRespawnSetupB11", "box_Gate_v3_17.Out", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_Gate_v3_42;
    l1 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1686587718", "1686587718", "FatherRespawnSetupB11", "box_Gate_v3_42.Out", "box_SpawnAI_15.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_2_Out()
    local l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1498469571", "1498469571", "FatherRespawnSetupB11", "box_MultipleOR_2.Out", "FatherKilled", l0:GetLuaBox(), self);
    self:FatherKilled();
end;

function export:f_box_GroupSizeListener_v5_11_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_18();
    l0 = self.box_GroupSizeListener_v5_11;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|2078097164", "2078097164", "FatherRespawnSetupB11", "box_GroupSizeListener_v5_11.Enabled", "box_Compare_Integers_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetFromGroup_23();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|818207120", "818207120", "FatherRespawnSetupB11", "box_MultipleOR_20.Out", "box_GetFromGroup_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EnableIgnitorEntityBox_v2_26_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_25();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|2075842040", "2075842040", "FatherRespawnSetupB11", "box_EnableIgnitorEntityBox_v2_26.Disabled", "box_TaggingModifier_v3_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_36_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_43();
    l0 = self.box_Delay_v5_36;
    l1 = self.box_Gate_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|940983710", "940983710", "FatherRespawnSetupB11", "box_Delay_v5_36.TimeElapsed", "box_Gate_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_Gate_v3_43;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|193963625", "193963625", "FatherRespawnSetupB11", "box_Gate_v3_43.Out", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ListReader_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_26();
    l0 = self.box_ListReader_24;
    l1 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1057181032", "1057181032", "FatherRespawnSetupB11", "box_ListReader_24.Out", "box_EnableIgnitorEntityBox_v2_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_27_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_4();
    l0 = self.box_Delay_v5_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|602993774", "602993774", "FatherRespawnSetupB11", "box_Compare_Integers_27.A_eq_B", "box_Delay_v5_4.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SetGroup_1_Out()
    local l0;
    self:OnExit_box_SetGroup_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|458153115", "458153115", "FatherRespawnSetupB11", "box_SetGroup_1.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetGroup_9_Out()
    local l0;
    self:OnExit_box_SetGroup_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1407081584", "1407081584", "FatherRespawnSetupB11", "box_SetGroup_9.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Delay_v5_37_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_44();
    l0 = self.box_Delay_v5_37;
    l1 = self.box_Gate_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1434728175", "1434728175", "FatherRespawnSetupB11", "box_Delay_v5_37.TimeElapsed", "box_Gate_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_5_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_SpawnAI_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1401830589", "1401830589", "FatherRespawnSetupB11", "box_SpawnAI_5.Fail", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_5_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_9();
    l0 = self.box_SpawnAI_5;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1950076779", "1950076779", "FatherRespawnSetupB11", "box_SpawnAI_5.Spawned", "box_SetGroup_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_18_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1369689074", "1369689074", "FatherRespawnSetupB11", "box_Compare_Integers_18.A_eq_B", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_18_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_14();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|2048576029", "2048576029", "FatherRespawnSetupB11", "box_Compare_Integers_18.A_gt_B", "box_HealthModifier_v2_14.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|768712789", "768712789", "FatherRespawnSetupB11", "box_Delay_v5_30.TimeElapsed", "box_Gate_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_8_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_38();
    l0 = self.box_Random_8;
    l1 = self.box_SoundModifier_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|951443129", "951443129", "FatherRespawnSetupB11", "box_Random_8.Output", "box_SoundModifier_v2_38.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_8_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_39();
    l0 = self.box_Random_8;
    l1 = self.box_SoundModifier_v2_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1693775438", "1693775438", "FatherRespawnSetupB11", "box_Random_8.Output", "box_SoundModifier_v2_39.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_8_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_13();
    l0 = self.box_Random_8;
    l1 = self.box_SoundModifier_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1492489931", "1492489931", "FatherRespawnSetupB11", "box_Random_8.Output", "box_SoundModifier_v2_13.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_8_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_19();
    l0 = self.box_Random_8;
    l1 = self.box_SoundModifier_v2_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|738547026", "738547026", "FatherRespawnSetupB11", "box_Random_8.Output", "box_SoundModifier_v2_19.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_8_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_49();
    l0 = self.box_Random_8;
    l1 = self.box_SoundModifier_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1214778256", "1214778256", "FatherRespawnSetupB11", "box_Random_8.Output", "box_SoundModifier_v2_49.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_6();
    l0 = self.box_Gate_v3_41;
    l1 = self.box_SpawnAI_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1600102043", "1600102043", "FatherRespawnSetupB11", "box_Gate_v3_41.Out", "box_SpawnAI_6.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_16_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_SpawnAI_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|509580009", "509580009", "FatherRespawnSetupB11", "box_SpawnAI_16.Fail", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_16_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_10();
    l0 = self.box_SpawnAI_16;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1974623487", "1974623487", "FatherRespawnSetupB11", "box_SpawnAI_16.Spawned", "box_SetGroup_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetGroup_3_Out()
    local l0;
    self:OnExit_box_SetGroup_3_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1987143611", "1987143611", "FatherRespawnSetupB11", "box_SetGroup_3.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthModifier_v2_14_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|978560543", "978560543", "FatherRespawnSetupB11", "box_HealthModifier_v2_14.Damaged", "box_MultipleOR_2.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_5();
    l0 = self.box_Gate_v3_44;
    l1 = self.box_SpawnAI_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|919592373", "919592373", "FatherRespawnSetupB11", "box_Gate_v3_44.Out", "box_SpawnAI_5.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_8();
    l0 = self.box_Gate_v3_40;
    l1 = self.box_Random_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|138457954", "138457954", "FatherRespawnSetupB11", "box_Gate_v3_40.Out", "box_Random_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_40();
    l0 = self.box_Delay_v5_46;
    l1 = self.box_Gate_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1805756125", "1805756125", "FatherRespawnSetupB11", "box_Delay_v5_46.TimeElapsed", "box_Gate_v3_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_15_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_21();
    l0 = self.box_SpawnAI_15;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|874797540", "874797540", "FatherRespawnSetupB11", "box_SpawnAI_15.Fail", "box_Simple_Node_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_15_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_1();
    l0 = self.box_SpawnAI_15;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1120635918", "1120635918", "FatherRespawnSetupB11", "box_SpawnAI_15.Spawned", "box_SetGroup_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_25_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_25();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|2012891279", "2012891279", "FatherRespawnSetupB11", "box_TaggingModifier_v3_25.Enabled", "box_TaggingModifier_v3_25.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_25_Tagged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1397256049", "1397256049", "FatherRespawnSetupB11", "box_TaggingModifier_v3_25.Tagged", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|@FailedSpawnRetry");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_21_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetFromGroup_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetFromGroup_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|45175428");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetFromGroup_23_Out,
    });
    params = {
        -- Group,
        [0] = self.FatherPawnGroupChosen,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_31()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Random_12()
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

function export:OnEnter_box_SpawnAI_6()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105048770373787951",
    };
    return params;
end;

function export:OnEnter_box_SetGroup_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|272336214");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_10_Out,
    });
    params = {
        -- Group,
        [0] = "#633A51F5",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_4()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3.5,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_28()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.FatherPawnGroupChosen,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_17()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_42()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_11()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#6585BD46",
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_26()
    local params, l0;
    DrawTextToScreen("Comment: We do not want Father to take Fire Damage for Difficulty Curve", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EnableIgnitorEntityBox_v2')-- Comment: We do not want Father to take Fire Damage for Difficulty Curve");
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|716924894");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EnableIgnitorEntityBox_v2_26_Disabled,
    });
    l0 = self.box_ListReader_24;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_36()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_43()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ListReader_24()
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

function export:OnEnter_box_Compare_Integers_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1091100911");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_27_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_28;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_38()
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

function export:OnEnter_box_SetGroup_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1154751055");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_1_Out,
    });
    params = {
        -- Group,
        [0] = "#143D6163",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_39()
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

function export:OnEnter_box_SetGroup_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1331885881");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_9_Out,
    });
    params = {
        -- Group,
        [0] = "#FD5EC456",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_37()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_5()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105048796353307050",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1410471821");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_18_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_18_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_11;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
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

function export:OnEnter_box_Random_8()
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

function export:OnEnter_box_SoundModifier_v2_19()
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
        [4] = true,
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

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105048378741136733",
    };
    return params;
end;

function export:OnEnter_box_SetGroup_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1725788424");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_3_Out,
    });
    params = {
        -- Group,
        [0] = "#8D3430D9",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|1731188706");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_14_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#6585BD46",
        -- value,
        [3] = 100,
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

function export:OnEnter_box_SoundModifier_v2_13()
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

function export:OnEnter_box_Gate_v3_44()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
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

function export:OnEnter_box_Delay_v5_46()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105048733969325991",
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B11.domino|@FatherRespawnSetupB11|2089867264");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_25_Enabled,
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_25_Tagged,
    });
    l0 = self.box_ListReader_24;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_GetFromGroup_23_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l1 = self.box_ListReader_24;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_3_Out()
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
