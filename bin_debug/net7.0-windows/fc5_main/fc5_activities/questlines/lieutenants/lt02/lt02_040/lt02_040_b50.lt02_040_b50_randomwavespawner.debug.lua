LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_040/lt02_040_b50.domino
-- User graph: LT02_040_B50_RandomWaveSpawner
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="eSpawner01" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner02" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner03" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner04" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner05" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner06" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner07" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner08" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner09" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner10" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner11" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner12" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner13" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner14" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner15" Type="Nomad|entity{}" />
    <DataIn Name="fMinDistance" Type="Core|float" />
    <DataIn Name="fMaxDistance" Type="Core|float" />
    <DataIn Name="eSpawner16" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner17" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner18" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner19" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner20" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner21" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner22" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner23" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner24" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner25" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner26" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner27" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner28" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner29" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner30" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner31" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner32" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner33" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner34" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner35" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner36" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner37" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner38" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner39" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner40" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner41" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner42" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner43" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner44" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner45" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner46" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner47" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner48" Type="Nomad|entity{}" />
    <DataIn Name="eSpawner49" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/System/Coop/List/ListAddToList.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/ListGetRandom.lua");
        cboxRes:RegisterBox("Domino/System/ListLength_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetFloat_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_CheckSpawner.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_RandomWaveSpawner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "Spawn",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
            [1] = {
                name = "NoneValid",
                delayed = false,
            },
            [2] = {
                name = "Spawned",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "eSpawner01",
                type = "entity",
            },
            [1] = {
                name = "eSpawner02",
                type = "entity",
            },
            [2] = {
                name = "eSpawner03",
                type = "entity",
            },
            [3] = {
                name = "eSpawner04",
                type = "entity",
            },
            [4] = {
                name = "eSpawner05",
                type = "entity",
            },
            [5] = {
                name = "eSpawner06",
                type = "entity",
            },
            [6] = {
                name = "eSpawner07",
                type = "entity",
            },
            [7] = {
                name = "eSpawner08",
                type = "entity",
            },
            [8] = {
                name = "eSpawner09",
                type = "entity",
            },
            [9] = {
                name = "eSpawner10",
                type = "entity",
            },
            [10] = {
                name = "eSpawner11",
                type = "entity",
            },
            [11] = {
                name = "eSpawner12",
                type = "entity",
            },
            [12] = {
                name = "eSpawner13",
                type = "entity",
            },
            [13] = {
                name = "eSpawner14",
                type = "entity",
            },
            [14] = {
                name = "eSpawner15",
                type = "entity",
            },
            [15] = {
                name = "eSpawner16",
                type = "entity",
            },
            [16] = {
                name = "eSpawner17",
                type = "entity",
            },
            [17] = {
                name = "eSpawner18",
                type = "entity",
            },
            [18] = {
                name = "eSpawner19",
                type = "entity",
            },
            [19] = {
                name = "eSpawner20",
                type = "entity",
            },
            [20] = {
                name = "eSpawner21",
                type = "entity",
            },
            [21] = {
                name = "eSpawner22",
                type = "entity",
            },
            [22] = {
                name = "eSpawner23",
                type = "entity",
            },
            [23] = {
                name = "eSpawner24",
                type = "entity",
            },
            [24] = {
                name = "eSpawner25",
                type = "entity",
            },
            [25] = {
                name = "eSpawner26",
                type = "entity",
            },
            [26] = {
                name = "eSpawner27",
                type = "entity",
            },
            [27] = {
                name = "eSpawner28",
                type = "entity",
            },
            [28] = {
                name = "eSpawner29",
                type = "entity",
            },
            [29] = {
                name = "eSpawner30",
                type = "entity",
            },
            [30] = {
                name = "eSpawner31",
                type = "entity",
            },
            [31] = {
                name = "eSpawner32",
                type = "entity",
            },
            [32] = {
                name = "eSpawner33",
                type = "entity",
            },
            [33] = {
                name = "eSpawner34",
                type = "entity",
            },
            [34] = {
                name = "eSpawner35",
                type = "entity",
            },
            [35] = {
                name = "eSpawner36",
                type = "entity",
            },
            [36] = {
                name = "eSpawner37",
                type = "entity",
            },
            [37] = {
                name = "eSpawner38",
                type = "entity",
            },
            [38] = {
                name = "eSpawner39",
                type = "entity",
            },
            [39] = {
                name = "eSpawner40",
                type = "entity",
            },
            [40] = {
                name = "eSpawner41",
                type = "entity",
            },
            [41] = {
                name = "eSpawner42",
                type = "entity",
            },
            [42] = {
                name = "eSpawner43",
                type = "entity",
            },
            [43] = {
                name = "eSpawner44",
                type = "entity",
            },
            [44] = {
                name = "eSpawner45",
                type = "entity",
            },
            [45] = {
                name = "eSpawner46",
                type = "entity",
            },
            [46] = {
                name = "eSpawner47",
                type = "entity",
            },
            [47] = {
                name = "eSpawner48",
                type = "entity",
            },
            [48] = {
                name = "eSpawner49",
                type = "entity",
            },
            [49] = {
                name = "fMaxDistance",
                type = "float",
            },
            [50] = {
                name = "fMinDistance",
                type = "float",
            },
        },
        dataInCount = 51,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/List/ListAddToList.lua")] = {
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
                name = "ListA",
                type = "list",
            },
            [1] = {
                name = "ListB",
                type = "list",
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
    metadataTable[GetPathID("Domino/System/ListGetRandom.lua")] = {
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
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Data",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ListLength_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetLength",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Empty",
                delayed = false,
            },
            [1] = {
                name = "NotEmpty",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Length",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/SetFloat_v2.lua")] = {
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
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "Target",
                type = "float",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "NilValue",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eList",
                type = "list",
            },
            [1] = {
                name = "eObject",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_CheckSpawner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Spawn",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Spawned",
                delayed = false,
            },
            [1] = {
                name = "TryAgain",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "eSpawner",
                type = "entity",
            },
            [1] = {
                name = "fMaxDistance",
                type = "float",
            },
            [2] = {
                name = "fMinDistance",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_040_B50_RandomWaveSpawner";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner";
    self.NoneValid = DummyFunction;
    self.Spawned = DummyFunction;
    self.Enabled = DummyFunction;
    self.lAllSpawners = {
    };
    self.lValidSpawners = {
    };
    self.eCurrentSpawner = nil;
    self.fLocalMinDistance = 0;
    self.fLocalMaxDistance = 0;
    self.gAllSpawners = nil;
    self.box_MultipleOR_8 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|130086378");
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
        [0] = self.f_box_MultipleOR_8_Out,
    });
    self.box_LT02_040_B50_AddNonNilToList_23 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|134621894");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_22 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|158322271");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_45 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|266167867");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_34 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|269998586");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_35 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|295608647");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_40 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|418252219");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_20 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|487872330");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_42 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|500168656");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_44 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|636745626");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_CheckSpawner_10 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_CheckSpawner.debug.lua");
    l0 = self.box_LT02_040_B50_CheckSpawner_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_CheckSpawner_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|642318516");
    l0:SetConnections({
        -- Spawned,
        [0] = self.f_box_LT02_040_B50_CheckSpawner_10_Spawned,
        -- TryAgain,
        [1] = self.f_box_LT02_040_B50_CheckSpawner_10_TryAgain,
    });
    self.box_LT02_040_B50_AddNonNilToList_47 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|647752733");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_49 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|650660229");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_33 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|702456668");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_50 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|706329440");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_56 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|764105372");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_26 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|805602220");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_38 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|813227961");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_41 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|815077204");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_36 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|858853763");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_52 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|859513700");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_7 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|885777298");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_32 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|903880571");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_59 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|924038428");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_24 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|939655937");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_21 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|950722422");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_31 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|962188436");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_51 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|972610135");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_58 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1201854995");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_54 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1204390557");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_46 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1208727430");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_30 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1348195662");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_39 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1491573760");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_61 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1524256669");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_19 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1528637971");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_37 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1530451359");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_18 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1665874817");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_60 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1711269982");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_55 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1748261327");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_48 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1784674983");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_53 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1803916185");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_12 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1830303829");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_29 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1901740026");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_63 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1904966208");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_13 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1927028169");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_57 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1980443242");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_14 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1999455360");
    l0:SetConnections({
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2007346929");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_LT02_040_B50_AddNonNilToList_62 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2043582744");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_25 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2081808669");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_27 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2084237657");
    l0:SetConnections({
    });
    self.box_LT02_040_B50_AddNonNilToList_43 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B50.LT02_040_B50_AddNonNilToList.debug.lua");
    l0 = self.box_LT02_040_B50_AddNonNilToList_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_040_B50_AddNonNilToList_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2143405070");
    l0:SetConnections({
    });
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1053743651", "1053743651", "LT02_040_B50_RandomWaveSpawner", "Enable", "box_OutputOrder_v2_28.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Spawn()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1630439953", "1630439953", "LT02_040_B50_RandomWaveSpawner", "Spawn", "box_Simple_Node_11.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListLength_v2_17();
    l0 = self.box_MultipleOR_8;
    l1 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2122556579", "2122556579", "LT02_040_B50_RandomWaveSpawner", "box_MultipleOR_8.Out", "box_ListLength_v2_17.GetLength", l0:GetLuaBox(), l1:GetLuaBox());
    -- GetLength
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_9_Removed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_4();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1556083728", "1556083728", "LT02_040_B50_RandomWaveSpawner", "box_ListWriter_v2_9.Removed", "box_Simple_Node_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListAddToList_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|522795822", "522795822", "LT02_040_B50_RandomWaveSpawner", "box_ListAddToList_6.Out", "box_MultipleOR_8.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetFloat_v2_2_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1809426419", "1809426419", "LT02_040_B50_RandomWaveSpawner", "box_SetFloat_v2_2.Out", "box_SetFloat_v2_1.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT02_040_B50_CheckSpawner_10_Spawned()
    local l0;
    l0 = self.box_LT02_040_B50_CheckSpawner_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|571227991", "571227991", "LT02_040_B50_RandomWaveSpawner", "box_LT02_040_B50_CheckSpawner_10.Spawned", "Spawned", l0:GetLuaBox(), self);
    self:Spawned();
end;

function export:f_box_LT02_040_B50_CheckSpawner_10_TryAgain()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_9();
    l0 = self.box_LT02_040_B50_CheckSpawner_10;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|521342036", "521342036", "LT02_040_B50_RandomWaveSpawner", "box_LT02_040_B50_CheckSpawner_10.TryAgain", "box_ListWriter_v2_9.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_4_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1215496627", "1215496627", "LT02_040_B50_RandomWaveSpawner", "box_Simple_Node_4.Out", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_20();
    l0 = self.box_LT02_040_B50_AddNonNilToList_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1138901851", "1138901851", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_20.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_23();
    l0 = self.box_LT02_040_B50_AddNonNilToList_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|811783769", "811783769", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_23.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_22();
    l0 = self.box_LT02_040_B50_AddNonNilToList_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1972189923", "1972189923", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_22.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_24();
    l0 = self.box_LT02_040_B50_AddNonNilToList_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1817247650", "1817247650", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_24.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_21();
    l0 = self.box_LT02_040_B50_AddNonNilToList_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|915117179", "915117179", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_21.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_25();
    l0 = self.box_LT02_040_B50_AddNonNilToList_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1389942427", "1389942427", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_25.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_26();
    l0 = self.box_LT02_040_B50_AddNonNilToList_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|357049978", "357049978", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_26.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_27();
    l0 = self.box_LT02_040_B50_AddNonNilToList_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|654085", "654085", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_27.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_29();
    l0 = self.box_LT02_040_B50_AddNonNilToList_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1048932164", "1048932164", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_29.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_19();
    l0 = self.box_LT02_040_B50_AddNonNilToList_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1332302221", "1332302221", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_19.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_33();
    l0 = self.box_LT02_040_B50_AddNonNilToList_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|154683616", "154683616", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_33.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_35();
    l0 = self.box_LT02_040_B50_AddNonNilToList_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1885918722", "1885918722", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_35.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_37();
    l0 = self.box_LT02_040_B50_AddNonNilToList_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1954711546", "1954711546", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_37.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_34();
    l0 = self.box_LT02_040_B50_AddNonNilToList_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1442315127", "1442315127", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_34.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_36();
    l0 = self.box_LT02_040_B50_AddNonNilToList_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1500891834", "1500891834", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_36.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_13();
    l0 = self.box_LT02_040_B50_AddNonNilToList_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1899591143", "1899591143", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_13.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_38();
    l0 = self.box_LT02_040_B50_AddNonNilToList_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|142899801", "142899801", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_38.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_39();
    l0 = self.box_LT02_040_B50_AddNonNilToList_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2142532108", "2142532108", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_39.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_40();
    l0 = self.box_LT02_040_B50_AddNonNilToList_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|177296213", "177296213", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_40.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_41();
    l0 = self.box_LT02_040_B50_AddNonNilToList_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|518451987", "518451987", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_41.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_42();
    l0 = self.box_LT02_040_B50_AddNonNilToList_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|482997322", "482997322", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_42.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_43();
    l0 = self.box_LT02_040_B50_AddNonNilToList_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1210979652", "1210979652", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_43.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_44();
    l0 = self.box_LT02_040_B50_AddNonNilToList_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|257145719", "257145719", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_44.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_45();
    l0 = self.box_LT02_040_B50_AddNonNilToList_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1950018664", "1950018664", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_45.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_46();
    l0 = self.box_LT02_040_B50_AddNonNilToList_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|459608017", "459608017", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_46.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_47();
    l0 = self.box_LT02_040_B50_AddNonNilToList_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1494349709", "1494349709", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_47.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_48();
    l0 = self.box_LT02_040_B50_AddNonNilToList_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|156814404", "156814404", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_48.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_49();
    l0 = self.box_LT02_040_B50_AddNonNilToList_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2060298833", "2060298833", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_49.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_50();
    l0 = self.box_LT02_040_B50_AddNonNilToList_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|630581399", "630581399", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_50.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_51();
    l0 = self.box_LT02_040_B50_AddNonNilToList_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1195472270", "1195472270", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_51.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_7();
    l0 = self.box_LT02_040_B50_AddNonNilToList_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1403602329", "1403602329", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_7.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_12();
    l0 = self.box_LT02_040_B50_AddNonNilToList_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2138675592", "2138675592", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_12.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_14();
    l0 = self.box_LT02_040_B50_AddNonNilToList_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|947933374", "947933374", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_14.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_18();
    l0 = self.box_LT02_040_B50_AddNonNilToList_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2113219356", "2113219356", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_18.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_30();
    l0 = self.box_LT02_040_B50_AddNonNilToList_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|932693255", "932693255", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_30.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_31();
    l0 = self.box_LT02_040_B50_AddNonNilToList_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1407518503", "1407518503", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_31.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_32();
    l0 = self.box_LT02_040_B50_AddNonNilToList_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1133088622", "1133088622", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_32.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_52();
    l0 = self.box_LT02_040_B50_AddNonNilToList_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|473899116", "473899116", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_52.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_53();
    l0 = self.box_LT02_040_B50_AddNonNilToList_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|255138446", "255138446", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_53.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_54();
    l0 = self.box_LT02_040_B50_AddNonNilToList_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|683452347", "683452347", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_54.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_55();
    l0 = self.box_LT02_040_B50_AddNonNilToList_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1793069118", "1793069118", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_55.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_56();
    l0 = self.box_LT02_040_B50_AddNonNilToList_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|584179285", "584179285", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_56.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_57();
    l0 = self.box_LT02_040_B50_AddNonNilToList_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|2038077014", "2038077014", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_57.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_58();
    l0 = self.box_LT02_040_B50_AddNonNilToList_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|253021940", "253021940", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_58.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_59();
    l0 = self.box_LT02_040_B50_AddNonNilToList_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|984970019", "984970019", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_59.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_60();
    l0 = self.box_LT02_040_B50_AddNonNilToList_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|350178496", "350178496", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_60.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_61();
    l0 = self.box_LT02_040_B50_AddNonNilToList_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1012275498", "1012275498", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_61.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_62();
    l0 = self.box_LT02_040_B50_AddNonNilToList_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1515464478", "1515464478", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_62.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_AddNonNilToList_63();
    l0 = self.box_LT02_040_B50_AddNonNilToList_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|823945491", "823945491", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "box_LT02_040_B50_AddNonNilToList_63.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_49()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1596322662", "1596322662", "LT02_040_B50_RandomWaveSpawner", "box_OutputOrder_v2_28.Out", "Enabled", clone:GetLuaBox(), self);
    self:Enabled();
end;

function export:f_box_ListGetRandom_5_Out()
    local params, l0;
    self:OnExit_box_ListGetRandom_5_Out();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT02_040_B50_CheckSpawner_10();
    l0 = self.box_LT02_040_B50_CheckSpawner_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1250442993", "1250442993", "LT02_040_B50_RandomWaveSpawner", "box_ListGetRandom_5.Out", "box_LT02_040_B50_CheckSpawner_10.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(0, params);
end;

function export:f_box_ListLength_v2_17_Empty()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|823962907", "823962907", "LT02_040_B50_RandomWaveSpawner", "box_ListLength_v2_17.Empty", "NoneValid", clone:GetLuaBox(), self);
    self:NoneValid();
end;

function export:f_box_ListLength_v2_17_NotEmpty()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListGetRandom_5();
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1800289835", "1800289835", "LT02_040_B50_RandomWaveSpawner", "box_ListLength_v2_17.NotEmpty", "box_ListGetRandom_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetFloat_v2_1_Out()
    local params, l0;
    self:OnExit_box_SetFloat_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListAddToList_6();
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1296422868", "1296422868", "LT02_040_B50_RandomWaveSpawner", "box_SetFloat_v2_1.Out", "box_ListAddToList_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetFloat_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1529961737", "1529961737", "LT02_040_B50_RandomWaveSpawner", "box_Simple_Node_11.Out", "box_SetFloat_v2_2.FromFloat", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromFloat
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_3;
    l1 = self.box_MultipleOR_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1445886528", "1445886528", "LT02_040_B50_RandomWaveSpawner", "box_Delay_v5_3.TimeElapsed", "box_MultipleOR_8.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_23()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner02,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|138966180");
    l0:SetConnections({
        -- Removed,
        [1] = self.f_box_ListWriter_v2_9_Removed,
    });
    params = {
        -- Data,
        [0] = self.eCurrentSpawner,
        -- Input,
        [2] = self.lValidSpawners,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_22()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner03,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_45()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner24,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_34()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner14,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_35()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner12,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_40()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner19,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_20()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner01,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_42()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner21,
    };
    return params;
end;

function export:OnEnter_box_ListAddToList_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/List/ListAddToList.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListAddToList_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|517229772");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListAddToList_6_Out,
    });
    params = {
        -- ListA,
        [0] = self.lAllSpawners,
        -- ListB,
        [1] = self.lValidSpawners,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|539273375");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_2_Out,
    });
    params = {
        -- Float,
        [0] = self.fMinDistance,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_44()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner23,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_CheckSpawner_10()
    local params;
    params = {
        -- eSpawner,
        [0] = self.eCurrentSpawner,
        -- fMaxDistance,
        [1] = self.fLocalMaxDistance,
        -- fMinDistance,
        [2] = self.fLocalMinDistance,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_47()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner26,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_49()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner28,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_33()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner11,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_50()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner29,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_56()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner42,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_26()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner07,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_38()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner17,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_41()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner20,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_36()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner15,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_52()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner38,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_7()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner31,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_32()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner37,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_59()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner45,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_24()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner04,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_21()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner05,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_31()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner36,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_51()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner30,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_58()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner44,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_54()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner40,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_46()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner25,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_30()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner35,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1372974857");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1490273742");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 50,
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
                [3] = self.f_box_OutputOrder_v2_28_Out_3,
                [4] = self.f_box_OutputOrder_v2_28_Out_4,
                [5] = self.f_box_OutputOrder_v2_28_Out_5,
                [6] = self.f_box_OutputOrder_v2_28_Out_6,
                [7] = self.f_box_OutputOrder_v2_28_Out_7,
                [8] = self.f_box_OutputOrder_v2_28_Out_8,
                [9] = self.f_box_OutputOrder_v2_28_Out_9,
                [10] = self.f_box_OutputOrder_v2_28_Out_10,
                [11] = self.f_box_OutputOrder_v2_28_Out_11,
                [12] = self.f_box_OutputOrder_v2_28_Out_12,
                [13] = self.f_box_OutputOrder_v2_28_Out_13,
                [14] = self.f_box_OutputOrder_v2_28_Out_14,
                [15] = self.f_box_OutputOrder_v2_28_Out_15,
                [16] = self.f_box_OutputOrder_v2_28_Out_16,
                [17] = self.f_box_OutputOrder_v2_28_Out_17,
                [18] = self.f_box_OutputOrder_v2_28_Out_18,
                [19] = self.f_box_OutputOrder_v2_28_Out_19,
                [20] = self.f_box_OutputOrder_v2_28_Out_20,
                [21] = self.f_box_OutputOrder_v2_28_Out_21,
                [22] = self.f_box_OutputOrder_v2_28_Out_22,
                [23] = self.f_box_OutputOrder_v2_28_Out_23,
                [24] = self.f_box_OutputOrder_v2_28_Out_24,
                [25] = self.f_box_OutputOrder_v2_28_Out_25,
                [26] = self.f_box_OutputOrder_v2_28_Out_26,
                [27] = self.f_box_OutputOrder_v2_28_Out_27,
                [28] = self.f_box_OutputOrder_v2_28_Out_28,
                [29] = self.f_box_OutputOrder_v2_28_Out_29,
                [30] = self.f_box_OutputOrder_v2_28_Out_30,
                [31] = self.f_box_OutputOrder_v2_28_Out_31,
                [32] = self.f_box_OutputOrder_v2_28_Out_32,
                [33] = self.f_box_OutputOrder_v2_28_Out_33,
                [34] = self.f_box_OutputOrder_v2_28_Out_34,
                [35] = self.f_box_OutputOrder_v2_28_Out_35,
                [36] = self.f_box_OutputOrder_v2_28_Out_36,
                [37] = self.f_box_OutputOrder_v2_28_Out_37,
                [38] = self.f_box_OutputOrder_v2_28_Out_38,
                [39] = self.f_box_OutputOrder_v2_28_Out_39,
                [40] = self.f_box_OutputOrder_v2_28_Out_40,
                [41] = self.f_box_OutputOrder_v2_28_Out_41,
                [42] = self.f_box_OutputOrder_v2_28_Out_42,
                [43] = self.f_box_OutputOrder_v2_28_Out_43,
                [44] = self.f_box_OutputOrder_v2_28_Out_44,
                [45] = self.f_box_OutputOrder_v2_28_Out_45,
                [46] = self.f_box_OutputOrder_v2_28_Out_46,
                [47] = self.f_box_OutputOrder_v2_28_Out_47,
                [48] = self.f_box_OutputOrder_v2_28_Out_48,
                [49] = self.f_box_OutputOrder_v2_28_Out_49,
            },
            count = 50,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_39()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner18,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_61()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner47,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_19()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner10,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_37()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner13,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_18()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner34,
    };
    return params;
end;

function export:OnEnter_box_ListGetRandom_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListGetRandom_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1665960918");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ListGetRandom_5_Out,
    });
    params = {
        -- Input,
        [0] = self.lValidSpawners,
    };
    return params;
end;

function export:OnEnter_box_ListLength_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListLength_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListLength_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1683185996");
    l0:SetConnections({
        -- Empty,
        [0] = self.f_box_ListLength_v2_17_Empty,
        -- NotEmpty,
        [1] = self.f_box_ListLength_v2_17_NotEmpty,
    });
    params = {
        -- Input,
        [0] = self.lValidSpawners,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_60()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner46,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_55()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner41,
    };
    return params;
end;

function export:OnEnter_box_SetFloat_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetFloat_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1748782781");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetFloat_v2_1_Out,
    });
    params = {
        -- Float,
        [0] = self.fMaxDistance,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_11()
    local params, l0;
    DrawTextToScreen("Comment: spawn Called", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: spawn Called");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B50.domino|@LT02_040_B50_RandomWaveSpawner|1765815725");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_11_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_48()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner27,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_53()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner39,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_12()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner32,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_29()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner09,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_63()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner49,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_13()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner16,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_57()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner43,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_14()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner33,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.05,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_62()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner48,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_25()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner06,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_27()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner08,
    };
    return params;
end;

function export:OnEnter_box_LT02_040_B50_AddNonNilToList_43()
    local params;
    params = {
        -- eList,
        [0] = self.lAllSpawners,
        -- eObject,
        [1] = self.eSpawner22,
    };
    return params;
end;

function export:OnExit_box_SetFloat_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fLocalMinDistance = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ListGetRandom_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/ListGetRandom.lua")];
    self.eCurrentSpawner = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetFloat_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetFloat_v2.lua")];
    self.fLocalMaxDistance = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:NoneValid()
    
end;
function export:Spawned()
    
end;
function export:Enabled()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Spawn" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Enabled" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="NoneValid" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Spawned" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="eSpawner01" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner02" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner03" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner04" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner05" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner06" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner07" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner08" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner09" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner10" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner11" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner12" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner13" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner14" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner15" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner16" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner17" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner18" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner19" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner20" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner21" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner22" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner23" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner24" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner25" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner26" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner27" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner28" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner29" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner30" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner31" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner32" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner33" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner34" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner35" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner36" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner37" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner38" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner39" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner40" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner41" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner42" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner43" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner44" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner45" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner46" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner47" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner48" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="eSpawner49" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="fMaxDistance" AnchorDynType="0" DataTypeID="float" />
		<DataIn Name="fMinDistance" AnchorDynType="0" DataTypeID="float" />
	</DatasIn>
	<DatasOut />
</DominoMetadata>
