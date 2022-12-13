LUACv- -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni61/uni61_agenda/uni64_agen_f4_homebase.domino
-- User graph: Liners
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="SoundID_08" Type="Nomad|Sound" />
    <DataIn Name="SoundID_09" Type="Nomad|Sound" />
    <DataIn Name="SoundID_04" Type="Nomad|Sound" />
    <DataIn Name="SoundID_01" Type="Nomad|Sound" />
    <DataIn Name="SoundID_06" Type="Nomad|Sound" />
    <DataIn Name="SoundID_02" Type="Nomad|Sound" />
    <DataIn Name="SoundID_03" Type="Nomad|Sound" />
    <DataIn Name="eNPC" Type="Nomad|entity{}" />
    <DataIn Name="SoundID_07" Type="Nomad|Sound" />
    <DataIn Name="SoundID_05" Type="Nomad|Sound" />
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
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetSound_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[771934356.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI61/UNI61_Agenda/UNI64_AGEN_F4_Homebase.Liners.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Play",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = true,
            },
            [1] = {
                name = "Ended",
                delayed = true,
            },
            [2] = {
                name = "Started",
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
                name = "eNPC",
                type = "entity",
            },
            [1] = {
                name = "SoundID_01",
                type = "Sound",
            },
            [2] = {
                name = "SoundID_02",
                type = "Sound",
            },
            [3] = {
                name = "SoundID_03",
                type = "Sound",
            },
            [4] = {
                name = "SoundID_04",
                type = "Sound",
            },
            [5] = {
                name = "SoundID_05",
                type = "Sound",
            },
            [6] = {
                name = "SoundID_06",
                type = "Sound",
            },
            [7] = {
                name = "SoundID_07",
                type = "Sound",
            },
            [8] = {
                name = "SoundID_08",
                type = "Sound",
            },
            [9] = {
                name = "SoundID_09",
                type = "Sound",
            },
        },
        dataInCount = 10,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/SetSound_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromSound",
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
                name = "SoundID",
                type = "Sound",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "Sound",
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
    self._name = "Liners";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners";
    self.Disabled = DummyFunction;
    self.Started = DummyFunction;
    self.Ended = DummyFunction;
    self.Stopped = DummyFunction;
    self.fMin = 2;
    self.sLine = "771934356";
    self.fMax = 3;
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|15978622");
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
        [0] = self.f_box_MultipleOR_31_Out,
    });
    self.box_MultipleOR_26 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|114316087");
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
        [0] = self.f_box_MultipleOR_26_Out,
    });
    self.box_Random_15 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|218250800");
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
                [0] = self.f_box_Random_15_Output_0,
                [1] = self.f_box_Random_15_Output_1,
                [2] = self.f_box_Random_15_Output_2,
                [3] = self.f_box_Random_15_Output_3,
                [4] = self.f_box_Random_15_Output_4,
                [5] = self.f_box_Random_15_Output_5,
                [6] = self.f_box_Random_15_Output_6,
                [7] = self.f_box_Random_15_Output_7,
                [8] = self.f_box_Random_15_Output_8,
            },
            count = 9,
        },
    });
    self.box_MultipleOR_2 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|254134067");
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
    self.box_Gate_v3_20 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|267294552");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_20_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_20_Out,
    });
    self.box_MultipleOR_43 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|676151301");
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
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|922740949");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_PlayDialog_v6_25 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1414294941");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_25_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_25_FinishedInterrupted,
        -- QueueCancelled,
        [2] = self.f_box_PlayDialog_v6_25_QueueCancelled,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_25_StartedPriorityFailed,
        -- Stopped,
        [6] = self.f_box_PlayDialog_v6_25_Stopped,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1553270096");
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
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1569493062");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1613020597");
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
        -- Out,
        [0] = self.f_box_MultipleOR_23_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1702330071");
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
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1809046277");
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
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1913634121");
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
        [0] = self.f_box_MultipleOR_53_Out,
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|2126042466");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1921136941", "1921136941", "Liners", "Disable", "box_Gate_v3_20.Close", self, l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:Play()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_65();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1927695558", "1927695558", "Liners", "Play", "box_Simple_Node_65.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1705306154", "1705306154", "Liners", "box_Simple_Node_64.Out", "box_OutputOrder_v2_44.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|693942865", "693942865", "Liners", "box_Simple_Node_65.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|179746568", "179746568", "Liners", "box_Simple_Node_65.Out", "box_Gate_v3_20.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_31_Out()
    local l0;
    l0 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1657444694", "1657444694", "Liners", "box_MultipleOR_31.Out", "Ended", l0:GetLuaBox(), self);
    self:Ended();
end;

function export:f_box_MultipleOR_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_3();
    l0 = self.box_MultipleOR_26;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|899443702", "899443702", "Liners", "box_MultipleOR_26.Out", "box_IsValueNil_v3_3.Sound", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sound
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_51_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|546436418", "546436418", "Liners", "box_IsValueNil_v3_51.No", "box_SetSound_v2_1.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_51_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1244983627", "1244983627", "Liners", "box_IsValueNil_v3_51.Yes", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Random_15_Output_0()
    local l0, l1;
    l0 = self.box_Random_15;
    l1 = self.box_MultipleOR_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1714416159", "1714416159", "Liners", "box_Random_15.Output", "box_MultipleOR_2.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_15_Output_1()
    local l0, l1;
    l0 = self.box_Random_15;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|586347970", "586347970", "Liners", "box_Random_15.Output", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_15_Output_2()
    local l0, l1;
    l0 = self.box_Random_15;
    l1 = self.box_MultipleOR_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|49126991", "49126991", "Liners", "box_Random_15.Output", "box_MultipleOR_43.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_15_Output_3()
    local l0, l1;
    l0 = self.box_Random_15;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|481026622", "481026622", "Liners", "box_Random_15.Output", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_15_Output_4()
    local l0, l1;
    l0 = self.box_Random_15;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1357097880", "1357097880", "Liners", "box_Random_15.Output", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_15_Output_5()
    local l0, l1;
    l0 = self.box_Random_15;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|533984674", "533984674", "Liners", "box_Random_15.Output", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_15_Output_6()
    local l0, l1;
    l0 = self.box_Random_15;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|444223705", "444223705", "Liners", "box_Random_15.Output", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_15_Output_7()
    local l0, l1;
    l0 = self.box_Random_15;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1051979427", "1051979427", "Liners", "box_Random_15.Output", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Random_15_Output_8()
    local l0, l1;
    l0 = self.box_Random_15;
    l1 = self.box_MultipleOR_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1578652882", "1578652882", "Liners", "box_Random_15.Output", "box_MultipleOR_26.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_30();
    l0 = self.box_MultipleOR_2;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1515270566", "1515270566", "Liners", "box_MultipleOR_2.Out", "box_IsValueNil_v3_30.Sound", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sound
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_20_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_Gate_v3_20;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1844232169", "1844232169", "Liners", "box_Gate_v3_20.Closed", "box_PlayDialog_v6_25.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_25();
    l0 = self.box_Gate_v3_20;
    l1 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|334897819", "334897819", "Liners", "box_Gate_v3_20.Out", "box_PlayDialog_v6_25.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_SetSound_v2_9_Out()
    local l0;
    self:OnExit_box_SetSound_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1024128733", "1024128733", "Liners", "box_SetSound_v2_9.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsValueNil_v3_3_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_59();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|735241675", "735241675", "Liners", "box_IsValueNil_v3_3.No", "box_SetSound_v2_59.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_3_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|258938441", "258938441", "Liners", "box_IsValueNil_v3_3.Yes", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_4_Out()
    local l0;
    self:OnExit_box_SetSound_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|672472128", "672472128", "Liners", "box_SetSound_v2_4.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_IsValueNil_v3_58_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_56();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1136128712", "1136128712", "Liners", "box_IsValueNil_v3_58.No", "box_SetSound_v2_56.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_58_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|633428851", "633428851", "Liners", "box_IsValueNil_v3_58.Yes", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_11_Out()
    local l0;
    self:OnExit_box_SetSound_v2_11_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1900308283", "1900308283", "Liners", "box_SetSound_v2_11.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_SetSound_v2_47_Out()
    local l0;
    self:OnExit_box_SetSound_v2_47_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|2056024660", "2056024660", "Liners", "box_SetSound_v2_47.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_51();
    l0 = self.box_MultipleOR_43;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|956781980", "956781980", "Liners", "box_MultipleOR_43.Out", "box_IsValueNil_v3_51.Sound", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sound
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_18_Out()
    local l0;
    self:OnExit_box_SetSound_v2_18_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1721088379", "1721088379", "Liners", "box_SetSound_v2_18.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetSound_v2_59_Out()
    local l0;
    self:OnExit_box_SetSound_v2_59_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|100513444", "100513444", "Liners", "box_SetSound_v2_59.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_IsValueNil_v3_27_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1029589074", "1029589074", "Liners", "box_IsValueNil_v3_27.No", "box_SetSound_v2_4.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_27_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1449930478", "1449930478", "Liners", "box_IsValueNil_v3_27.Yes", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_22();
    l0 = self.box_MultipleOR_49;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|442630080", "442630080", "Liners", "box_MultipleOR_49.Out", "box_IsValueNil_v3_22.Sound", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sound
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_40_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_10();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1927642431", "1927642431", "Liners", "box_IsValueNil_v3_40.No", "box_SetSound_v2_10.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_40_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1332964741", "1332964741", "Liners", "box_IsValueNil_v3_40.Yes", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_10_Out()
    local l0;
    self:OnExit_box_SetSound_v2_10_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|2125495614", "2125495614", "Liners", "box_SetSound_v2_10.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_PlayDialog_v6_25_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1234331691", "1234331691", "Liners", "box_PlayDialog_v6_25.Finished", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_25_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|2128085021", "2128085021", "Liners", "box_PlayDialog_v6_25.FinishedInterrupted", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_25_QueueCancelled()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1929143283", "1929143283", "Liners", "box_PlayDialog_v6_25.QueueCancelled", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_25_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_25;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|278300925", "278300925", "Liners", "box_PlayDialog_v6_25.StartedPriorityFailed", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlayDialog_v6_25_Stopped()
    local l0;
    l0 = self.box_PlayDialog_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1137115558", "1137115558", "Liners", "box_PlayDialog_v6_25.Stopped", "Stopped", l0:GetLuaBox(), self);
    self:Stopped();
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_15();
    l0 = self.box_Random_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1668036291", "1668036291", "Liners", "box_OutputOrder_v2_21.Out", "box_Random_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1288715769", "1288715769", "Liners", "box_OutputOrder_v2_21.Out", "Started", clone:GetLuaBox(), self);
    self:Started();
end;

function export:f_box_IsValueNil_v3_30_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1726211191", "1726211191", "Liners", "box_IsValueNil_v3_30.No", "box_SetSound_v2_9.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_30_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|482465640", "482465640", "Liners", "box_IsValueNil_v3_30.Yes", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local l0;
    l0 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1429721721", "1429721721", "Liners", "box_MultipleOR_29.Out", "Disabled", l0:GetLuaBox(), self);
    self:Disabled();
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_57();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1821736267", "1821736267", "Liners", "box_MultipleOR_12.Out", "box_IsValueNil_v3_57.Sound", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sound
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_MultipleOR_23;
    l1 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|206823084", "206823084", "Liners", "box_MultipleOR_23.Out", "box_Gate_v3_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SetSound_v2_56_Out()
    local l0;
    self:OnExit_box_SetSound_v2_56_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|854966779", "854966779", "Liners", "box_SetSound_v2_56.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_IsValueNil_v3_22_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_47();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1557350322", "1557350322", "Liners", "box_IsValueNil_v3_22.No", "box_SetSound_v2_47.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_22_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1855953225", "1855953225", "Liners", "box_IsValueNil_v3_22.Yes", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_58();
    l0 = self.box_MultipleOR_5;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|354667438", "354667438", "Liners", "box_MultipleOR_5.Out", "box_IsValueNil_v3_58.Sound", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sound
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_40();
    l0 = self.box_MultipleOR_36;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|792514660", "792514660", "Liners", "box_MultipleOR_36.Out", "box_IsValueNil_v3_40.Sound", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sound
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_57_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_11();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1600105375", "1600105375", "Liners", "box_IsValueNil_v3_57.No", "box_SetSound_v2_11.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_57_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|2116901469", "2116901469", "Liners", "box_IsValueNil_v3_57.Yes", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_19_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetSound_v2_18();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|2131630897", "2131630897", "Liners", "box_IsValueNil_v3_19.No", "box_SetSound_v2_18.FromSound", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromSound
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_19_Yes()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_64();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1196010466", "1196010466", "Liners", "box_IsValueNil_v3_19.Yes", "box_Simple_Node_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_19();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|863890690", "863890690", "Liners", "box_MultipleOR_53.Out", "box_IsValueNil_v3_19.Sound", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sound
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_35();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|300202908", "300202908", "Liners", "box_OutputOrder_v2_44.Out", "box_Print_v2_35.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_63();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|656856486", "656856486", "Liners", "box_OutputOrder_v2_44.Out", "box_Simple_Node_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetSound_v2_1_Out()
    local l0;
    self:OnExit_box_SetSound_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1042115695", "1042115695", "Liners", "box_SetSound_v2_1.Out", "box_MultipleOR_23.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsValueNil_v3_27();
    l0 = self.box_MultipleOR_38;
    l1 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1446406411", "1446406411", "Liners", "box_MultipleOR_38.Out", "box_IsValueNil_v3_27.Sound", l0:GetLuaBox(), l1:GetLuaBox());
    -- Sound
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|@Line Loop");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|@Sound Skipped");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_64_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|@Starter_Restarter");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|164058995");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_51_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_51_Yes,
    });
    params = {
        -- sound,
        [13] = self.SoundID_03,
    };
    return params;
end;

function export:OnEnter_box_Random_15()
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

function export:OnEnter_box_Gate_v3_20()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|314408120");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_9_Out,
    });
    params = {
        -- SoundID,
        [0] = self.SoundID_01,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|378897555");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_3_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_3_Yes,
    });
    params = {
        -- sound,
        [13] = self.SoundID_09,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|467509730");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_4_Out,
    });
    params = {
        -- SoundID,
        [0] = self.SoundID_07,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|488118912");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_58_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_58_Yes,
    });
    params = {
        -- sound,
        [13] = self.SoundID_05,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|556928601");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_11_Out,
    });
    params = {
        -- SoundID,
        [0] = self.SoundID_06,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|592966205");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_47_Out,
    });
    params = {
        -- SoundID,
        [0] = self.SoundID_04,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|851978960");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_18_Out,
    });
    params = {
        -- SoundID,
        [0] = self.SoundID_02,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|904652857");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_59_Out,
    });
    params = {
        -- SoundID,
        [0] = self.SoundID_09,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|921057015");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_27_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_27_Yes,
    });
    params = {
        -- sound,
        [13] = self.SoundID_07,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|966210290");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_40_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_40_Yes,
    });
    params = {
        -- sound,
        [13] = self.SoundID_08,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1053478536");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_10_Out,
    });
    params = {
        -- SoundID,
        [0] = self.SoundID_08,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_25()
    local params;
    params = {
        -- Group,
        [0] = self.eNPC,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = self.sLine,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1513755487");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1551328070");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_30_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_30_Yes,
    });
    params = {
        -- sound,
        [13] = self.SoundID_01,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1616085598");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_56_Out,
    });
    params = {
        -- SoundID,
        [0] = self.SoundID_05,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1621808675");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_22_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_22_Yes,
    });
    params = {
        -- sound,
        [13] = self.SoundID_04,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1847440035");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_57_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_57_Yes,
    });
    params = {
        -- sound,
        [13] = self.SoundID_06,
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1854047553");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_19_No,
        -- Yes,
        [1] = self.f_box_IsValueNil_v3_19_Yes,
    });
    params = {
        -- sound,
        [13] = self.SoundID_02,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1979173524");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|1981205831");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "Orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Line Skipped: no Sound",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetSound_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetSound_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI61\\UNI61_Agenda\\UNI64_AGEN_F4_Homebase.domino|@Liners|2048431130");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetSound_v2_1_Out,
    });
    params = {
        -- SoundID,
        [0] = self.SoundID_03,
    };
    return params;
end;

function export:OnExit_box_SetSound_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_11_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_47_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_18_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_59_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_10_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_56_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sLine = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetSound_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetSound_v2.lua")];
    self.sLine = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Disabled()
    
end;
function export:Started()
    
end;
function export:Ended()
    
end;
function export:Stopped()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Play" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Disabled" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Ended" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="Started" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Stopped" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eNPC" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="SoundID_01" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="SoundID_02" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="SoundID_03" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="SoundID_04" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="SoundID_05" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="SoundID_06" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="SoundID_07" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="SoundID_08" AnchorDynType="0" DataTypeID="Sound" />
		<DataIn Name="SoundID_09" AnchorDynType="0" DataTypeID="Sound" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
