LUAC�C -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/father/father_010/father_010_b13.domino
-- User graph: FatherRespawnSetupB13
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Father/FATHER_010/FATHER_010_B13.FatherRespawnSetupB13.debug.lua")] = {
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
    self._name = "FatherRespawnSetupB13";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13";
    self.FatherKilled = DummyFunction;
    self.FatherPawnGroupChosen = "#868C165F";
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|20445321");
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
    self.box_SpawnAI_18 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|170558387");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_18_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_18_Spawned,
    });
    self.box_SoundModifier_v2_44 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|191886553");
    l0:SetConnections({
    });
    self.box_Gate_v3_38 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|219501429");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_38_Out,
    });
    self.box_GroupSizeListener_v5_26 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|303850339");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_26_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_26_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_26_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_26_MemberRemoved,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|494235308");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_SoundModifier_v2_47 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|529201934");
    l0:SetConnections({
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|621349769");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_16_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_16_Spawned,
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|712922498");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|723500284");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_Delay_v5_28 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|751575827");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_28_TimeElapsed,
    });
    self.box_SoundModifier_v2_45 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|753514156");
    l0:SetConnections({
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|832419190");
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
    self.box_SpawnAI_1 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|833996838");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_1_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_1_Spawned,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|854428274");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_6_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_Gate_v3_40 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1031748410");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_40_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_40_Out,
    });
    self.box_Gate_v3_9 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1041459427");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_9_Out,
    });
    self.box_Gate_v3_39 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1081460665");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_39_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_39_Out,
    });
    self.box_SoundModifier_v2_43 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1089044209");
    l0:SetConnections({
    });
    self.box_Gate_v3_33 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1137238449");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_33_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_33_Out,
    });
    self.box_Delay_v5_46 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1179891535");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_46_TimeElapsed,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1295193899");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_Random_4 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1296007955");
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
        [0] = self.f_box_Random_4_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_4_Output_0,
                [1] = self.f_box_Random_4_Output_1,
                [2] = self.f_box_Random_4_Output_2,
                [3] = self.f_box_Random_4_Output_3,
            },
            count = 4,
        },
    });
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1445112170");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_Random_48 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1475211255");
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
                [0] = self.f_box_Random_48_Output_0,
                [2] = self.f_box_Random_48_Output_2,
                [4] = self.f_box_Random_48_Output_4,
                [6] = self.f_box_Random_48_Output_6,
                [8] = self.f_box_Random_48_Output_8,
            },
            count = 9,
        },
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1483054567");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_Gate_v3_41 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1668766220");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_41_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_41_Out,
    });
    self.box_GroupSizeListener_v5_2 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1973515583");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_2_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_2_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_2_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_2_MemberRemoved,
    });
    self.box_ListReader_19 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1984486561");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_19_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_19_Out,
    });
    self.box_SoundModifier_v2_49 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|2052718459");
    l0:SetConnections({
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|2102583472");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_12_Fail,
        -- Spawned,
        [2] = self.f_box_SpawnAI_12_Spawned,
    });
end;

function export:DisableListener()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|514335328", "514335328", "FatherRespawnSetupB13", "DisableListener", "box_Gate_v3_41.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|2065505677", "2065505677", "FatherRespawnSetupB13", "DisableListener", "box_Delay_v5_24.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Gate_v3_40();
    l0 = self.box_Gate_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1746970080", "1746970080", "FatherRespawnSetupB13", "DisableListener", "box_Gate_v3_40.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|2000245700", "2000245700", "FatherRespawnSetupB13", "DisableListener", "box_Gate_v3_33.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_39();
    l0 = self.box_Gate_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1548087730", "1548087730", "FatherRespawnSetupB13", "DisableListener", "box_Gate_v3_39.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_38();
    l0 = self.box_Gate_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1284726181", "1284726181", "FatherRespawnSetupB13", "DisableListener", "box_Gate_v3_38.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|2146228409", "2146228409", "FatherRespawnSetupB13", "DisableListener", "box_Gate_v3_9.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:NormalStart()
    local l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|440558049", "440558049", "FatherRespawnSetupB13", "NormalStart", "box_MultipleOR_5.Input", self, l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_4();
    l0 = self.box_Random_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|853459776", "853459776", "FatherRespawnSetupB13", "box_Simple_Node_22.Out", "box_Random_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_7_Out()
    local l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|628822208", "628822208", "FatherRespawnSetupB13", "box_MultipleOR_7.Out", "FatherKilled", l0:GetLuaBox(), self);
    self:FatherKilled();
end;

function export:f_box_SpawnAI_18_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_SpawnAI_18;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1618845243", "1618845243", "FatherRespawnSetupB13", "box_SpawnAI_18.Fail", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_18_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_14();
    l0 = self.box_SpawnAI_18;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|687737309", "687737309", "FatherRespawnSetupB13", "box_SpawnAI_18.Spawned", "box_SetGroup_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Random_48();
    l0 = self.box_Gate_v3_38;
    l1 = self.box_Random_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|554299483", "554299483", "FatherRespawnSetupB13", "box_Gate_v3_38.Out", "box_Random_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_26_Enabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_26;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1061607069", "1061607069", "FatherRespawnSetupB13", "box_GroupSizeListener_v5_26.Enabled", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_26_MemberRemoved()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_26;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|2085469307", "2085469307", "FatherRespawnSetupB13", "box_GroupSizeListener_v5_26.MemberRemoved", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_8_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1770960339", "1770960339", "FatherRespawnSetupB13", "box_Compare_Integers_8.A_eq_B", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_8_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_3();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1384622591", "1384622591", "FatherRespawnSetupB13", "box_Compare_Integers_8.A_gt_B", "box_HealthModifier_v2_3.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_39();
    l0 = self.box_Delay_v5_27;
    l1 = self.box_Gate_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1401829561", "1401829561", "FatherRespawnSetupB13", "box_Delay_v5_27.TimeElapsed", "box_Gate_v3_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_TaggingModifier_v3_23_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_23();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|670942652", "670942652", "FatherRespawnSetupB13", "box_TaggingModifier_v3_23.Enabled", "box_TaggingModifier_v3_23.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TaggingModifier_v3_23_Tagged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|659352842", "659352842", "FatherRespawnSetupB13", "box_TaggingModifier_v3_23.Tagged", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthModifier_v2_3_Damaged()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|655431294", "655431294", "FatherRespawnSetupB13", "box_HealthModifier_v2_3.Damaged", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_25_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1783741732", "1783741732", "FatherRespawnSetupB13", "box_Compare_Integers_25.A_eq_B", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_16_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_SpawnAI_16;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|178365531", "178365531", "FatherRespawnSetupB13", "box_SpawnAI_16.Fail", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_16_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_15();
    l0 = self.box_SpawnAI_16;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1596741025", "1596741025", "FatherRespawnSetupB13", "box_SpawnAI_16.Spawned", "box_SetGroup_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_25();
    l0 = self.box_MultipleOR_17;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|735635637", "735635637", "FatherRespawnSetupB13", "box_MultipleOR_17.Out", "box_Compare_Integers_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_2();
    l0 = self.box_Delay_v5_24;
    l1 = self.box_GroupSizeListener_v5_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|899329555", "899329555", "FatherRespawnSetupB13", "box_Delay_v5_24.TimeElapsed", "box_GroupSizeListener_v5_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_28_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_Delay_v5_28;
    l1 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|956594411", "956594411", "FatherRespawnSetupB13", "box_Delay_v5_28.TimeElapsed", "box_Gate_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_26();
    l0 = self.box_MultipleOR_5;
    l1 = self.box_GroupSizeListener_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|378135630", "378135630", "FatherRespawnSetupB13", "box_MultipleOR_5.Out", "box_GroupSizeListener_v5_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_1_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_SpawnAI_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1730288743", "1730288743", "FatherRespawnSetupB13", "box_SpawnAI_1.Fail", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_1_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_10();
    l0 = self.box_SpawnAI_1;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1098022133", "1098022133", "FatherRespawnSetupB13", "box_SpawnAI_1.Spawned", "box_SetGroup_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_6_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_46();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_Delay_v5_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1025434447", "1025434447", "FatherRespawnSetupB13", "box_Delay_v5_6.Started", "box_Delay_v5_46.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_9();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_Gate_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|798932932", "798932932", "FatherRespawnSetupB13", "box_Delay_v5_6.TimeElapsed", "box_Gate_v3_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetGroup_13_Out()
    local l0;
    self:OnExit_box_SetGroup_13_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1595079283", "1595079283", "FatherRespawnSetupB13", "box_SetGroup_13.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Gate_v3_40_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_Gate_v3_40;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1863233090", "1863233090", "FatherRespawnSetupB13", "box_Gate_v3_40.Closed", "box_SpawnAI_12.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_Gate_v3_40;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1858961958", "1858961958", "FatherRespawnSetupB13", "box_Gate_v3_40.Out", "box_SpawnAI_12.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_Gate_v3_9;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1675523053", "1675523053", "FatherRespawnSetupB13", "box_Gate_v3_9.Out", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EnableIgnitorEntityBox_v2_20_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_23();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|16792461", "16792461", "FatherRespawnSetupB13", "box_EnableIgnitorEntityBox_v2_20.Disabled", "box_TaggingModifier_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_39_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_Gate_v3_39;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1228154916", "1228154916", "FatherRespawnSetupB13", "box_Gate_v3_39.Closed", "box_SpawnAI_16.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_Gate_v3_39;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|2113731207", "2113731207", "FatherRespawnSetupB13", "box_Gate_v3_39.Out", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_33_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_1();
    l0 = self.box_Gate_v3_33;
    l1 = self.box_SpawnAI_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1069781420", "1069781420", "FatherRespawnSetupB13", "box_Gate_v3_33.Closed", "box_SpawnAI_1.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_1();
    l0 = self.box_Gate_v3_33;
    l1 = self.box_SpawnAI_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1024546670", "1024546670", "FatherRespawnSetupB13", "box_Gate_v3_33.Out", "box_SpawnAI_1.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_46_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_38();
    l0 = self.box_Delay_v5_46;
    l1 = self.box_Gate_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|2103675998", "2103675998", "FatherRespawnSetupB13", "box_Delay_v5_46.TimeElapsed", "box_Gate_v3_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_40();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_Gate_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1669118934", "1669118934", "FatherRespawnSetupB13", "box_Delay_v5_29.TimeElapsed", "box_Gate_v3_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_4_None()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_Random_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1711346911", "1711346911", "FatherRespawnSetupB13", "box_Random_4.None", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Random_4_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_28();
    l0 = self.box_Random_4;
    l1 = self.box_Delay_v5_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1885204780", "1885204780", "FatherRespawnSetupB13", "box_Random_4.Output", "box_Delay_v5_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_4_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_Random_4;
    l1 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1349132405", "1349132405", "FatherRespawnSetupB13", "box_Random_4.Output", "box_Delay_v5_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_4_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Random_4;
    l1 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|257831362", "257831362", "FatherRespawnSetupB13", "box_Random_4.Output", "box_Delay_v5_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Random_4_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Random_4;
    l1 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1126742212", "1126742212", "FatherRespawnSetupB13", "box_Random_4.Output", "box_Delay_v5_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_41();
    l0 = self.box_Delay_v5_30;
    l1 = self.box_Gate_v3_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|269110136", "269110136", "FatherRespawnSetupB13", "box_Delay_v5_30.TimeElapsed", "box_Gate_v3_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Random_48_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_44();
    l0 = self.box_Random_48;
    l1 = self.box_SoundModifier_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|584361438", "584361438", "FatherRespawnSetupB13", "box_Random_48.Output", "box_SoundModifier_v2_44.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_48_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_45();
    l0 = self.box_Random_48;
    l1 = self.box_SoundModifier_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1731420015", "1731420015", "FatherRespawnSetupB13", "box_Random_48.Output", "box_SoundModifier_v2_45.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_48_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_43();
    l0 = self.box_Random_48;
    l1 = self.box_SoundModifier_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1101861278", "1101861278", "FatherRespawnSetupB13", "box_Random_48.Output", "box_SoundModifier_v2_43.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_48_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_47();
    l0 = self.box_Random_48;
    l1 = self.box_SoundModifier_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1543405895", "1543405895", "FatherRespawnSetupB13", "box_Random_48.Output", "box_SoundModifier_v2_47.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Random_48_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_49();
    l0 = self.box_Random_48;
    l1 = self.box_SoundModifier_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1719419879", "1719419879", "FatherRespawnSetupB13", "box_Random_48.Output", "box_SoundModifier_v2_49.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetFromGroup_21();
    l0 = self.box_MultipleOR_11;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1469805523", "1469805523", "FatherRespawnSetupB13", "box_MultipleOR_11.Out", "box_GetFromGroup_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetGroup_14_Out()
    local l0;
    self:OnExit_box_SetGroup_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1349349360", "1349349360", "FatherRespawnSetupB13", "box_SetGroup_14.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Gate_v3_41_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_Gate_v3_41;
    l1 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|271719526", "271719526", "FatherRespawnSetupB13", "box_Gate_v3_41.Closed", "box_SpawnAI_18.Cancel", l0:GetLuaBox(), l1:GetLuaBox());
    -- Cancel
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_Gate_v3_41;
    l1 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|442368137", "442368137", "FatherRespawnSetupB13", "box_Gate_v3_41.Out", "box_SpawnAI_18.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetGroup_10_Out()
    local l0;
    self:OnExit_box_SetGroup_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1398313439", "1398313439", "FatherRespawnSetupB13", "box_SetGroup_10.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetFromGroup_21_Out()
    local params, l0;
    self:OnExit_box_GetFromGroup_21_Out();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListReader_19();
    l0 = self.box_ListReader_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1492003575", "1492003575", "FatherRespawnSetupB13", "box_GetFromGroup_21.Out", "box_ListReader_19.Read", clone:GetLuaBox(), l0:GetLuaBox());
    -- Read
    l0:Exec(0, params);
end;

function export:f_box_SetGroup_15_Out()
    local l0;
    self:OnExit_box_SetGroup_15_Out();
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1616183969", "1616183969", "FatherRespawnSetupB13", "box_SetGroup_15.Out", "box_MultipleOR_11.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_2_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_8();
    l0 = self.box_GroupSizeListener_v5_2;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|2045340645", "2045340645", "FatherRespawnSetupB13", "box_GroupSizeListener_v5_2.Enabled", "box_Compare_Integers_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReader_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EnableIgnitorEntityBox_v2_20();
    l0 = self.box_ListReader_19;
    l1 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1227581112", "1227581112", "FatherRespawnSetupB13", "box_ListReader_19.Out", "box_EnableIgnitorEntityBox_v2_20.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_12_Fail()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_22();
    l0 = self.box_SpawnAI_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1269915424", "1269915424", "FatherRespawnSetupB13", "box_SpawnAI_12.Fail", "box_Simple_Node_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_12_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetGroup_13();
    l0 = self.box_SpawnAI_12;
    l1 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|502868712", "502868712", "FatherRespawnSetupB13", "box_SpawnAI_12.Spawned", "box_SetGroup_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|@FailedSpawnRetry");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_22_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_18()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105049052333779645",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_44()
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

function export:OnEnter_box_Gate_v3_38()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.FatherPawnGroupChosen,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|371504219");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_8_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_8_A_gt_B,
    });
    l0 = self.box_GroupSizeListener_v5_2;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
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

function export:OnEnter_box_TaggingModifier_v3_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|509724476");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_TaggingModifier_v3_23_Enabled,
        -- Tagged,
        [2] = self.f_box_TaggingModifier_v3_23_Tagged,
    });
    l0 = self.box_ListReader_19;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|517535943");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_3_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#8B8BDC6A",
        -- value,
        [3] = 10000,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_47()
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

function export:OnEnter_box_Compare_Integers_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|560957137");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_25_A_eq_B,
    });
    l0 = self.box_GroupSizeListener_v5_26;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105049042999355929",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
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

function export:OnEnter_box_SoundModifier_v2_45()
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

function export:OnEnter_box_SpawnAI_1()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105049025112746287",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetGroup_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|980821452");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_13_Out,
    });
    params = {
        -- Group,
        [0] = "#4DCC7973",
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

function export:OnEnter_box_Gate_v3_9()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EnableIgnitorEntityBox_v2_20()
    local params, l0;
    DrawTextToScreen("Comment: We do not want Father to take Fire Damage for Difficulty Curve", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'EnableIgnitorEntityBox_v2')-- Comment: We do not want Father to take Fire Damage for Difficulty Curve");
    l0 = Boxes[GetPathID("Domino/System/EnableIgnitorEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EnableIgnitorEntityBox_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1044448298");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EnableIgnitorEntityBox_v2_20_Disabled,
    });
    l0 = self.box_ListReader_19;
    params = {
        -- Entity,
        [0] = l0:GetDataOutValue(1),
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

function export:OnEnter_box_SoundModifier_v2_43()
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

function export:OnEnter_box_Gate_v3_33()
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

function export:OnEnter_box_Random_4()
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

function export:OnEnter_box_Random_48()
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

function export:OnEnter_box_SetGroup_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1549935224");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_14_Out,
    });
    params = {
        -- Group,
        [0] = "#D3A8ECD0",
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

function export:OnEnter_box_SetGroup_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1747848294");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_10_Out,
    });
    params = {
        -- Group,
        [0] = "#A3C2185F",
    };
    return params;
end;

function export:OnEnter_box_GetFromGroup_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetFromGroup_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1833651659");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetFromGroup_21_Out,
    });
    params = {
        -- Group,
        [0] = self.FatherPawnGroupChosen,
    };
    return params;
end;

function export:OnEnter_box_SetGroup_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetGroup_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Father\\FATHER_010\\FATHER_010_B13.domino|@FatherRespawnSetupB13|1844881232");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetGroup_15_Out,
    });
    params = {
        -- Group,
        [0] = "#3ACB49E5",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#8B8BDC6A",
    };
    return params;
end;

function export:OnEnter_box_ListReader_19()
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

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105049048670055028",
    };
    return params;
end;

function export:OnExit_box_SetGroup_13_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetGroup.lua")];
    self.FatherPawnGroupChosen = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetFromGroup_21_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GetFromGroup.lua")];
    l1 = self.box_ListReader_19;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetGroup_15_Out()
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
