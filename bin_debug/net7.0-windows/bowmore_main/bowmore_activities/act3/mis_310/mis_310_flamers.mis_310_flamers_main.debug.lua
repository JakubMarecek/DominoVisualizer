LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_310/mis_310_flamers.domino
-- User graph: MIS_310_Flamers_Main
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/ExtinguishFireWithinRange.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_CustomRing.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_PingPongTarget.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
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
                name = "othersSpawned",
                type = "list",
            },
            [2] = {
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Extinguish",
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "Range",
                type = "float",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/StimsEmitter_v2.lua")] = {
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
                name = "StimsEmitter",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_CustomRing.debug.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Delay",
                type = "float",
            },
            [1] = {
                name = "Stim",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_PingPongTarget.debug.lua")] = {
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
            [0] = {
                name = "Anchor",
                type = "entity",
            },
            [1] = {
                name = "BlendTime",
                type = "float",
            },
            [2] = {
                name = "X",
                type = "float",
            },
            [3] = {
                name = "Y",
                type = "float",
            },
            [4] = {
                name = "Z",
                type = "float",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_310_Flamers_Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main";
    self.box_ConsoleCommand_v3_69 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|54154678");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_69_Execute,
    });
    self.box_MIS_310_Flamers_PingPongTarget_3 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_PingPongTarget.debug.lua");
    l0 = self.box_MIS_310_Flamers_PingPongTarget_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_PingPongTarget_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|56365903");
    l0:SetConnections({
    });
    self.box_MIS_310_Flamers_PingPongTarget_6 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_PingPongTarget.debug.lua");
    l0 = self.box_MIS_310_Flamers_PingPongTarget_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_PingPongTarget_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|70379656");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_27 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|109433230");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_27_Received,
    });
    self.box_MIS_310_Flamers_CustomRing_34 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_CustomRing.debug.lua");
    l0 = self.box_MIS_310_Flamers_CustomRing_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_CustomRing_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|121126538");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_65 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|288487087");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_65_Execute,
    });
    self.box_Delay_v5_29 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|340468465");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_29_TimeElapsed,
    });
    self.box_MessageListener_v3_52 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|405159461");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_52_Received,
    });
    self.box_MessageListener_v3_39 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|441772269");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_39_Received,
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|450827713");
    l0:SetConnections({
    });
    self.box_MIS_310_Flamers_CustomRing_36 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_CustomRing.debug.lua");
    l0 = self.box_MIS_310_Flamers_CustomRing_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_CustomRing_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|495833526");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_20 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|618927955");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_20_Received,
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|703051710");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_13_Spawned,
    });
    self.box_MIS_310_Flamers_CustomRing_35 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_CustomRing.debug.lua");
    l0 = self.box_MIS_310_Flamers_CustomRing_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_CustomRing_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|707938920");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_310_Flamers_CustomRing_35_Out,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|751842015");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_19_Spawned,
    });
    self.box_MIS_310_Flamers_PingPongTarget_5 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_PingPongTarget.debug.lua");
    l0 = self.box_MIS_310_Flamers_PingPongTarget_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_PingPongTarget_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|758941572");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_63 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|848324075");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_63_Execute,
    });
    self.box_MIS_310_Flamers_CustomRing_37 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_CustomRing.debug.lua");
    l0 = self.box_MIS_310_Flamers_CustomRing_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_CustomRing_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1013965953");
    l0:SetConnections({
    });
    self.box_SpawnAI_25 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1027843557");
    l0:SetConnections({
    });
    self.box_MultipleOR_58 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1295291074");
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
        [0] = self.f_box_MultipleOR_58_Out,
    });
    self.box_RemoveEntity_v2_23 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1375121700");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_70 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1376781905");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_70_Execute,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1466600682");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_MIS_310_Flamers_PingPongTarget_7 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_PingPongTarget.debug.lua");
    l0 = self.box_MIS_310_Flamers_PingPongTarget_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_PingPongTarget_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1536392320");
    l0:SetConnections({
    });
    self.box_ConsoleCommand_v3_60 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1560276780");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_60_Execute,
    });
    self.box_MIS_310_Flamers_CustomRing_38 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_CustomRing.debug.lua");
    l0 = self.box_MIS_310_Flamers_CustomRing_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_CustomRing_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1563475078");
    l0:SetConnections({
    });
    self.box_MultipleOR_56 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1600102043");
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
        [0] = self.f_box_MultipleOR_56_Out,
    });
    self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1602505200");
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
    self.box_MultipleOR_55 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1626013043");
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
        [0] = self.f_box_MultipleOR_55_Out,
    });
    self.box_MIS_310_Flamers_CustomRing_32 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_CustomRing.debug.lua");
    l0 = self.box_MIS_310_Flamers_CustomRing_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_CustomRing_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1705959838");
    l0:SetConnections({
    });
    self.box_MultipleOR_54 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1763865954");
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
        [0] = self.f_box_MultipleOR_54_Out,
    });
    self.box_ConsoleCommand_v3_66 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1891673096");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_66_Execute,
    });
    self.box_Delay_v5_21 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1892423006");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_21_TimeElapsed,
    });
    self.box_MIS_310_Flamers_PingPongTarget_4 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_PingPongTarget.debug.lua");
    l0 = self.box_MIS_310_Flamers_PingPongTarget_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_PingPongTarget_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1986147133");
    l0:SetConnections({
    });
    self.box_MessageListener_v3_31 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2005491288");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_31_Received,
    });
    self.box_MIS_310_Flamers_PingPongTarget_1 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/act3/mis_310/MIS_310_Flamers.MIS_310_Flamers_PingPongTarget.debug.lua");
    l0 = self.box_MIS_310_Flamers_PingPongTarget_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_310_Flamers_PingPongTarget_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2087972077");
    l0:SetConnections({
    });
    self.box_SpawnAI_17 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2106403930");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_17_Spawned,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1316080368", "1316080368", "MIS_310_Flamers_Main", "In", "box_Simple_Node_73.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_73_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ConsoleCommand_v3_65();
    l0 = self.box_ConsoleCommand_v3_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1343373888", "1343373888", "MIS_310_Flamers_Main", "box_Simple_Node_73.Out", "box_ConsoleCommand_v3_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ConsoleCommand_v3_69();
    l0 = self.box_ConsoleCommand_v3_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2044177546", "2044177546", "MIS_310_Flamers_Main", "box_Simple_Node_73.Out", "box_ConsoleCommand_v3_69.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ConsoleCommand_v3_60();
    l0 = self.box_ConsoleCommand_v3_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|330684251", "330684251", "MIS_310_Flamers_Main", "box_Simple_Node_73.Out", "box_ConsoleCommand_v3_60.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|271340247", "271340247", "MIS_310_Flamers_Main", "box_Simple_Node_73.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ConsoleCommand_v3_70();
    l0 = self.box_ConsoleCommand_v3_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|238212849", "238212849", "MIS_310_Flamers_Main", "box_Simple_Node_73.Out", "box_ConsoleCommand_v3_70.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1076471539", "1076471539", "MIS_310_Flamers_Main", "box_Simple_Node_73.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ConsoleCommand_v3_66();
    l0 = self.box_ConsoleCommand_v3_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1898693404", "1898693404", "MIS_310_Flamers_Main", "box_Simple_Node_73.Out", "box_ConsoleCommand_v3_66.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_ConsoleCommand_v3_63();
    l0 = self.box_ConsoleCommand_v3_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|598954507", "598954507", "MIS_310_Flamers_Main", "box_Simple_Node_73.Out", "box_ConsoleCommand_v3_63.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    params = self:OnEnter_box_GetActivityState_v2_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|76522796", "76522796", "MIS_310_Flamers_Main", "box_Simple_Node_73.Out", "box_GetActivityState_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_72_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|272637056", "272637056", "MIS_310_Flamers_Main", "box_Simple_Node_72.Out", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|934966035", "934966035", "MIS_310_Flamers_Main", "box_Simple_Node_72.Out", "box_MultipleOR_55.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|972408262", "972408262", "MIS_310_Flamers_Main", "box_Simple_Node_72.Out", "box_MultipleOR_53.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|185691029", "185691029", "MIS_310_Flamers_Main", "box_Simple_Node_72.Out", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|560467502", "560467502", "MIS_310_Flamers_Main", "box_Simple_Node_72.Out", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1587853599", "1587853599", "MIS_310_Flamers_Main", "box_Simple_Node_72.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_71_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_32();
    l0 = self.box_MIS_310_Flamers_CustomRing_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|406808194", "406808194", "MIS_310_Flamers_Main", "box_Simple_Node_71.Out", "box_MIS_310_Flamers_CustomRing_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_37();
    l0 = self.box_MIS_310_Flamers_CustomRing_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|548141903", "548141903", "MIS_310_Flamers_Main", "box_Simple_Node_71.Out", "box_MIS_310_Flamers_CustomRing_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_36();
    l0 = self.box_MIS_310_Flamers_CustomRing_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1496447495", "1496447495", "MIS_310_Flamers_Main", "box_Simple_Node_71.Out", "box_MIS_310_Flamers_CustomRing_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_35();
    l0 = self.box_MIS_310_Flamers_CustomRing_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1760710834", "1760710834", "MIS_310_Flamers_Main", "box_Simple_Node_71.Out", "box_MIS_310_Flamers_CustomRing_35.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_34();
    l0 = self.box_MIS_310_Flamers_CustomRing_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|402288531", "402288531", "MIS_310_Flamers_Main", "box_Simple_Node_71.Out", "box_MIS_310_Flamers_CustomRing_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_38();
    l0 = self.box_MIS_310_Flamers_CustomRing_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|876460715", "876460715", "MIS_310_Flamers_Main", "box_Simple_Node_71.Out", "box_MIS_310_Flamers_CustomRing_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_71();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1421747517", "1421747517", "MIS_310_Flamers_Main", "box_OutputOrder_v2_18.Out", "box_Simple_Node_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_23();
    l0 = self.box_RemoveEntity_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1492492802", "1492492802", "MIS_310_Flamers_Main", "box_OutputOrder_v2_18.Out", "box_RemoveEntity_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_69_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_62();
    l0 = self.box_ConsoleCommand_v3_69;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|21066162", "21066162", "MIS_310_Flamers_Main", "box_ConsoleCommand_v3_69.Execute", "box_StimsEmitter_v2_62.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_27_Received()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishFireWithinRange_16();
    l0 = self.box_MessageListener_v3_27;
    l1 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2007744932", "2007744932", "MIS_310_Flamers_Main", "box_MessageListener_v3_27.Received", "box_ExtinguishFireWithinRange_16.Extinguish", l0:GetLuaBox(), l1:GetLuaBox());
    -- Extinguish
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_15_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_38();
    l0 = self.box_MIS_310_Flamers_CustomRing_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1494192753", "1494192753", "MIS_310_Flamers_Main", "box_MissionBlockLayer_15.Activated", "box_MIS_310_Flamers_CustomRing_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_40();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1352661712", "1352661712", "MIS_310_Flamers_Main", "box_OutputOrder_v2_41.Out", "box_OutputOrder_v2_40.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|386910235", "386910235", "MIS_310_Flamers_Main", "box_OutputOrder_v2_41.Out", "box_MultipleOR_54.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ConsoleCommand_v3_65_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_67();
    l0 = self.box_ConsoleCommand_v3_65;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1878672031", "1878672031", "MIS_310_Flamers_Main", "box_ConsoleCommand_v3_65.Execute", "box_StimsEmitter_v2_67.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_29_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_Delay_v5_29;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1557090813", "1557090813", "MIS_310_Flamers_Main", "box_Delay_v5_29.TimeElapsed", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MessageListener_v3_52_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_MessageListener_v3_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1674601953", "1674601953", "MIS_310_Flamers_Main", "box_MessageListener_v3_52.Received", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_39_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_39;
    l1 = self.box_MultipleOR_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1045113605", "1045113605", "MIS_310_Flamers_Main", "box_MessageListener_v3_39.Received", "box_MultipleOR_53.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MessageListener_v3_20_Received()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_MessageListener_v3_20;
    l1 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|938875029", "938875029", "MIS_310_Flamers_Main", "box_MessageListener_v3_20.Received", "box_SpawnAI_17.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_13_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = self.box_SpawnAI_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2118871908", "2118871908", "MIS_310_Flamers_Main", "box_SpawnAI_13.Spawned", "box_OutputOrder_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_310_Flamers_CustomRing_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_26();
    l0 = self.box_MIS_310_Flamers_CustomRing_35;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1798808429", "1798808429", "MIS_310_Flamers_Main", "box_MIS_310_Flamers_CustomRing_35.Out", "box_StimsEmitter_v2_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_19_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_19;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1416967347", "1416967347", "MIS_310_Flamers_Main", "box_SpawnAI_19.Spawned", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_21();
    l0 = self.box_Delay_v5_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|17974750", "17974750", "MIS_310_Flamers_Main", "box_OutputOrder_v2_33.Out", "box_Delay_v5_21.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2065819002", "2065819002", "MIS_310_Flamers_Main", "box_OutputOrder_v2_33.Out", "box_MultipleOR_58.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_9_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_37();
    l0 = self.box_MIS_310_Flamers_CustomRing_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|297456631", "297456631", "MIS_310_Flamers_Main", "box_MissionBlockLayer_9.Activated", "box_MIS_310_Flamers_CustomRing_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_63_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_64();
    l0 = self.box_ConsoleCommand_v3_63;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1559013902", "1559013902", "MIS_310_Flamers_Main", "box_ConsoleCommand_v3_63.Execute", "box_StimsEmitter_v2_64.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_12();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|574625383", "574625383", "MIS_310_Flamers_Main", "box_OutputOrder_v2_30.Out", "box_Print_v2_12.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|736609014", "736609014", "MIS_310_Flamers_Main", "box_OutputOrder_v2_30.Out", "box_SpawnAI_22.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|551740417", "551740417", "MIS_310_Flamers_Main", "box_OutputOrder_v2_30.Out", "box_SpawnAI_25.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2093678395", "2093678395", "MIS_310_Flamers_Main", "box_OutputOrder_v2_30.Out", "box_Simple_Node_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_40_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_29();
    l0 = self.box_Delay_v5_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1963935992", "1963935992", "MIS_310_Flamers_Main", "box_OutputOrder_v2_40.Out", "box_Delay_v5_29.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_40_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1248730152", "1248730152", "MIS_310_Flamers_Main", "box_OutputOrder_v2_40.Out", "box_MultipleOR_56.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_8();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|861433861", "861433861", "MIS_310_Flamers_Main", "box_OutputOrder_v2_75.Out", "box_Print_v2_8.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1783317156", "1783317156", "MIS_310_Flamers_Main", "box_OutputOrder_v2_75.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_10_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1586710839", "1586710839", "MIS_310_Flamers_Main", "box_GetActivityState_v2_10.Active", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_10_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|548377637", "548377637", "MIS_310_Flamers_Main", "box_GetActivityState_v2_10.Completed", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_32();
    l0 = self.box_MultipleOR_58;
    l1 = self.box_MIS_310_Flamers_CustomRing_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1228608448", "1228608448", "MIS_310_Flamers_Main", "box_MultipleOR_58.Out", "box_MIS_310_Flamers_CustomRing_32.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_Flamers_PingPongTarget_1();
    l0 = self.box_MIS_310_Flamers_PingPongTarget_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2063425369", "2063425369", "MIS_310_Flamers_Main", "box_OutputOrder_v2_2.Out", "box_MIS_310_Flamers_PingPongTarget_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_Flamers_PingPongTarget_7();
    l0 = self.box_MIS_310_Flamers_PingPongTarget_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|866818584", "866818584", "MIS_310_Flamers_Main", "box_OutputOrder_v2_2.Out", "box_MIS_310_Flamers_PingPongTarget_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_Flamers_PingPongTarget_6();
    l0 = self.box_MIS_310_Flamers_PingPongTarget_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2012058133", "2012058133", "MIS_310_Flamers_Main", "box_OutputOrder_v2_2.Out", "box_MIS_310_Flamers_PingPongTarget_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_Flamers_PingPongTarget_5();
    l0 = self.box_MIS_310_Flamers_PingPongTarget_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2035565976", "2035565976", "MIS_310_Flamers_Main", "box_OutputOrder_v2_2.Out", "box_MIS_310_Flamers_PingPongTarget_5.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_Flamers_PingPongTarget_4();
    l0 = self.box_MIS_310_Flamers_PingPongTarget_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1251024295", "1251024295", "MIS_310_Flamers_Main", "box_OutputOrder_v2_2.Out", "box_MIS_310_Flamers_PingPongTarget_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_310_Flamers_PingPongTarget_3();
    l0 = self.box_MIS_310_Flamers_PingPongTarget_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1925572458", "1925572458", "MIS_310_Flamers_Main", "box_OutputOrder_v2_2.Out", "box_MIS_310_Flamers_PingPongTarget_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ConsoleCommand_v3_70_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_59();
    l0 = self.box_ConsoleCommand_v3_70;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1925891627", "1925891627", "MIS_310_Flamers_Main", "box_ConsoleCommand_v3_70.Execute", "box_StimsEmitter_v2_59.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_67_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_24();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|441879755", "441879755", "MIS_310_Flamers_Main", "box_StimsEmitter_v2_67.Enabled", "box_StimsEmitter_v2_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_36();
    l0 = self.box_MultipleOR_57;
    l1 = self.box_MIS_310_Flamers_CustomRing_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1233501346", "1233501346", "MIS_310_Flamers_Main", "box_MultipleOR_57.Out", "box_MIS_310_Flamers_CustomRing_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_60_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_61();
    l0 = self.box_ConsoleCommand_v3_60;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|44462747", "44462747", "MIS_310_Flamers_Main", "box_ConsoleCommand_v3_60.Execute", "box_StimsEmitter_v2_61.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_35();
    l0 = self.box_MultipleOR_56;
    l1 = self.box_MIS_310_Flamers_CustomRing_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1533205906", "1533205906", "MIS_310_Flamers_Main", "box_MultipleOR_56.Out", "box_MIS_310_Flamers_CustomRing_35.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_53_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_9();
    l0 = self.box_MultipleOR_53;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1667489530", "1667489530", "MIS_310_Flamers_Main", "box_MultipleOR_53.Out", "box_MissionBlockLayer_9.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_55_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_15();
    l0 = self.box_MultipleOR_55;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1023501367", "1023501367", "MIS_310_Flamers_Main", "box_MultipleOR_55.Out", "box_MissionBlockLayer_15.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_54_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_310_Flamers_CustomRing_34();
    l0 = self.box_MultipleOR_54;
    l1 = self.box_MIS_310_Flamers_CustomRing_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1720746648", "1720746648", "MIS_310_Flamers_Main", "box_MultipleOR_54.Out", "box_MIS_310_Flamers_CustomRing_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ConsoleCommand_v3_66_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_68();
    l0 = self.box_ConsoleCommand_v3_66;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1267318805", "1267318805", "MIS_310_Flamers_Main", "box_ConsoleCommand_v3_66.Execute", "box_StimsEmitter_v2_68.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_21_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_Delay_v5_21;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|378523904", "378523904", "MIS_310_Flamers_Main", "box_Delay_v5_21.TimeElapsed", "box_SpawnAI_13.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1569430066", "1569430066", "MIS_310_Flamers_Main", "box_OutputOrder_v2_14.Out", "box_Print_v2_11.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_20();
    l0 = self.box_MessageListener_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1425231613", "1425231613", "MIS_310_Flamers_Main", "box_OutputOrder_v2_14.Out", "box_MessageListener_v3_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_31();
    l0 = self.box_MessageListener_v3_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1745579499", "1745579499", "MIS_310_Flamers_Main", "box_OutputOrder_v2_14.Out", "box_MessageListener_v3_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_14_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_39();
    l0 = self.box_MessageListener_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|508131744", "508131744", "MIS_310_Flamers_Main", "box_OutputOrder_v2_14.Out", "box_MessageListener_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_52();
    l0 = self.box_MessageListener_v3_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|231323995", "231323995", "MIS_310_Flamers_Main", "box_OutputOrder_v2_28.Out", "box_MessageListener_v3_52.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_27();
    l0 = self.box_MessageListener_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2134537840", "2134537840", "MIS_310_Flamers_Main", "box_OutputOrder_v2_28.Out", "box_MessageListener_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MessageListener_v3_31_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_31;
    l1 = self.box_MultipleOR_55;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1374471282", "1374471282", "MIS_310_Flamers_Main", "box_MessageListener_v3_31.Received", "box_MultipleOR_55.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_17_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = self.box_SpawnAI_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1836768872", "1836768872", "MIS_310_Flamers_Main", "box_SpawnAI_17.Spawned", "box_OutputOrder_v2_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|@beat_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|@enable_allflames");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|@flames_stop");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_71_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|44791798");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_69()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "letsburn_SE",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_PingPongTarget_3()
    local params;
    params = {
        -- Anchor,
        [0] = "2107824851468158466",
        -- BlendTime,
        [1] = 2,
        -- X,
        [2] = -1.5,
        -- Y,
        [3] = 1.5,
        -- Z,
        [4] = 0,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_PingPongTarget_6()
    local params;
    params = {
        -- Anchor,
        [0] = "2107712485762021484",
        -- BlendTime,
        [1] = 1.5,
        -- X,
        [2] = 2,
        -- Y,
        [3] = 0,
        -- Z,
        [4] = 0,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_flamer_stop_2",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_CustomRing_34()
    local params;
    params = {
        -- Delay,
        [0] = 2,
        -- Stim,
        [1] = "2109167448054838665",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishFireWithinRange_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishFireWithinRange_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|173605383");
    l0:SetConnections({
    });
    params = {
        -- players,
        [0] = "#ED455357",
        -- Range,
        [1] = 65,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|188721133");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109167864995936357",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|195592911");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_15_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307848554625",
        -- missionLayerId,
        [1] = "45174721123304909",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|227191933");
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
                [0] = self.f_box_OutputOrder_v2_41_Out_0,
                [1] = self.f_box_OutputOrder_v2_41_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_65()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "letsburn_NW",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_29()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_52()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_flamer_stop_1",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_flamer_spawn_ne",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107712485759924305",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_CustomRing_36()
    local params;
    params = {
        -- Delay,
        [0] = 2,
        -- Stim,
        [1] = "2109167861313337429",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|589834758");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109167864261933153",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_startflamers",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107712485799770492",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_CustomRing_35()
    local params;
    params = {
        -- Delay,
        [0] = 2,
        -- Stim,
        [1] = "2109167863616010333",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|736552505");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109167448054838665",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107712485762021479",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_PingPongTarget_5()
    local params;
    params = {
        -- Anchor,
        [0] = "2107712485799770497",
        -- BlendTime,
        [1] = 1.5,
        -- X,
        [2] = 2,
        -- Y,
        [3] = 2,
        -- Z,
        [4] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|775226349");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|776148478");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_9_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160307848554625",
        -- missionLayerId,
        [1] = "36167521868423860",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_63()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "letsburn_S",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|856336069");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2110188982762487051",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|925997274");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 8,
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
                [4] = self.f_box_OutputOrder_v2_30_Out_4,
                [7] = self.f_box_OutputOrder_v2_30_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_CustomRing_37()
    local params;
    params = {
        -- Delay,
        [0] = 0.1,
        -- Stim,
        [1] = "2109167864995936357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_25()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107712485799770492",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1144290197");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109167862085089369",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1159887159");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "FLAMER DOMINO STARTED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1193408064");
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

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1212805752");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1252073206");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_10_Active,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_10_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015334122806725",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1362117860");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 6,
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
                [4] = self.f_box_OutputOrder_v2_2_Out_4,
                [5] = self.f_box_OutputOrder_v2_2_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_23()
    local params;
    params = {
        -- Group,
        [0] = "2109167266003167808",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_70()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "letsburn_SW",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1411170804");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2110188982762487051",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1446117620");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_67_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2109167863616010333",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_PingPongTarget_7()
    local params;
    params = {
        -- Anchor,
        [0] = "2107712485759924310",
        -- BlendTime,
        [1] = 2,
        -- X,
        [2] = 2,
        -- Y,
        [3] = 2,
        -- Z,
        [4] = 0,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_60()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "letsburn_N",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_CustomRing_38()
    local params;
    params = {
        -- Delay,
        [0] = 0.1,
        -- Stim,
        [1] = "2109167862085089369",
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_CustomRing_32()
    local params;
    params = {
        -- Delay,
        [0] = 2,
        -- Stim,
        [1] = "2109167864261933153",
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_66()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "letsburn_NE",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_21()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1920801957");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
                [2] = self.f_box_OutputOrder_v2_14_Out_2,
                [3] = self.f_box_OutputOrder_v2_14_Out_3,
            },
            count = 4,
        },
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|1959651605");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_PingPongTarget_4()
    local params;
    params = {
        -- Anchor,
        [0] = "2107824766246201322",
        -- BlendTime,
        [1] = 2,
        -- X,
        [2] = 2,
        -- Y,
        [3] = -2,
        -- Z,
        [4] = 0,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2004780274");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2109167861313337429",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "mis310_flamer_spawn_sw",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2075500775");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "ACTIVE",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_310_Flamers_PingPongTarget_1()
    local params;
    params = {
        -- Anchor,
        [0] = "2107712485768312971",
        -- BlendTime,
        [1] = 2,
        -- X,
        [2] = 2,
        -- Y,
        [3] = 0,
        -- Z,
        [4] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_17()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107712485768312966",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\mis_310\\MIS_310_Flamers.domino|@MIS_310_Flamers_Main|2113183010");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "COMPLETED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
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
