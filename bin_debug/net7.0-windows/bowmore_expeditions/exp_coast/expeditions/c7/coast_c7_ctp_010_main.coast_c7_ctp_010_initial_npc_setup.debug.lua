LUAC+� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c7/coast_c7_ctp_010_main.domino
-- User graph: Coast_C7_CTP_010_Initial_NPC_Setup
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
        cboxRes:RegisterBox("Domino/System/AI/ContextualStrategyListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/ListReader.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_ContextualActions.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Spawning.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Coast_C7_CTP_010_Main = nil;
    Globals.Coast_C7_CTP_010_Main = {
        iC7Difficulty = 0,
        iDifficulty = 0,
        iPlayerSpawnPOIIndex = 0,
        iExtractionPOIID = 0,
        iPackagePositionID = 0,
        ePackageSpawner_OBSOLETEEEEEEEEE = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Setup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "NPC_Package_A_Bridge",
            },
            [1] = {
                name = "NPC_Package_B_Camp_I_Working",
            },
            [2] = {
                name = "NPC_Package_C_Camp_II_Storage",
            },
            [3] = {
                name = "NPC_Package_D_Hangar_I_Bar",
            },
            [4] = {
                name = "NPC_Package_E_Hangar_II_Chillout",
            },
            [5] = {
                name = "NPC_Package_F_RaceDeck",
            },
        },
        controlInCount = 6,
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
    metadataTable[GetPathID("Domino/System/AI/ContextualStrategyListener_v2.lua")] = {
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
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Finished",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "ContextualStrategy",
                type = "entity",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")] = {
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
                name = "FromGroup",
                type = "group",
            },
            [1] = {
                name = "ToGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_ContextualActions.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Navlink_Vehicle_Jump",
            },
            [2] = {
                name = "Set_WatchingFight_STP",
            },
            [3] = {
                name = "Switch_CS_RaceCars_PKG_D",
            },
            [4] = {
                name = "Switch_CS_RaceCars_PKG_F",
            },
        },
        controlInCount = 5,
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Spawning.debug.lua")] = {
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
            [1] = {
                name = "PlayerDetected",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Spawner_1",
                type = "entity",
            },
            [1] = {
                name = "Spawner_2",
                type = "entity",
            },
            [2] = {
                name = "Spawner_3",
                type = "entity",
            },
            [3] = {
                name = "Spawner_4",
                type = "entity",
            },
            [4] = {
                name = "Spawner_5",
                type = "entity",
            },
            [5] = {
                name = "Spawner_6",
                type = "entity",
            },
            [6] = {
                name = "Spawner_7",
                type = "entity",
            },
            [7] = {
                name = "Spawner_8",
                type = "entity",
            },
            [8] = {
                name = "Spawner_9",
                type = "entity",
            },
        },
        dataInCount = 9,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C7_CTP_010_Initial_NPC_Setup";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup";
    self.box_ListReader_70 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|4207120");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_70_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_70_Out,
    });
    self.box_ContextualStrategyListener_v2_50 = cbox:CreateBox("Domino/System/AI/ContextualStrategyListener_v2.lua");
    l0 = self.box_ContextualStrategyListener_v2_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualStrategyListener_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|20778305");
    l0:SetConnections({
        -- Finished,
        [3] = self.f_box_ContextualStrategyListener_v2_50_Finished,
    });
    self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|62017140");
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
        [0] = self.f_box_MultipleOR_28_Out,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|197054404");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_46_Spawned,
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|216498425");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_22_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_22_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_22_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_22_Success,
    });
    self.box_ListReader_78 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|220070914");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_78_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_78_Out,
    });
    self.box_ContextualStrategyListener_v2_16 = cbox:CreateBox("Domino/System/AI/ContextualStrategyListener_v2.lua");
    l0 = self.box_ContextualStrategyListener_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualStrategyListener_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|315040139");
    l0:SetConnections({
        -- Finished,
        [3] = self.f_box_ContextualStrategyListener_v2_16_Finished,
    });
    self.box_IndexList_v2_30 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|384429296");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_30_Output_0,
                [1] = self.f_box_IndexList_v2_30_Output_1,
                [2] = self.f_box_IndexList_v2_30_Output_2,
            },
            count = 3,
        },
    });
    self.box_IndexList_v2_41 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|442802587");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_41_Output_0,
                [1] = self.f_box_IndexList_v2_41_Output_1,
                [2] = self.f_box_IndexList_v2_41_Output_2,
            },
            count = 3,
        },
    });
    self.box_MultipleOR_52 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|465766799");
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
    self.box_ListReader_63 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|473223175");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_63_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_63_Out,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|547259177");
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
    self.box_ListReader_69 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|632275713");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_69_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_69_Out,
    });
    self.box_ListReader_68 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|644906457");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_68_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_68_Out,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|671165157");
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
    self.box_SpawnAI_55 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|677190918");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_55_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_55_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_55_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_55_Success,
    });
    self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_5 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Spawning.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_NPC_Spawning_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|698694885");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_5_Out,
    });
    self.box_IndexList_v2_51 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|789181626");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_51_Output_0,
                [1] = self.f_box_IndexList_v2_51_Output_1,
                [2] = self.f_box_IndexList_v2_51_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_40 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|819533063");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_40_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_40_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_40_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_40_Success,
    });
    self.box_RemoveEntity_v2_47 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|892664103");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_47_Out,
    });
    self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|975189582");
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
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|983827559");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_32_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_32_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_32_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_32_Success,
    });
    self.box_SpawnAI_44 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|999351707");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_44_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_44_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_44_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_44_Success,
    });
    self.box_SpawnAI_45 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1048451915");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_45_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_45_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_45_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_45_Success,
    });
    self.box_ListReader_76 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1048602770");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_76_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_76_Out,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1084062760");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_6 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Spawning.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_NPC_Spawning_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1134348609");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_6_Out,
    });
    self.box_ListReader_58 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1147180982");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_58_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_58_Out,
    });
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1166781517");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_14_Spawned,
    });
    self.box_ListReader_62 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1208864943");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_62_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_62_Out,
    });
    self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_2 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Spawning.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_NPC_Spawning_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1224515157");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_2_Out,
    });
    self.box_ListReader_60 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1240898770");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_60_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_60_Out,
    });
    self.box_SpawnAI_53 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1284691939");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_53_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_53_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_53_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_53_Success,
    });
    self.box_Delay_v5_48 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1301874319");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_48_TimeElapsed,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1339828559");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_ListReader_26 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1415843378");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_26_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_26_Out,
    });
    self.box_IndexList_v2_54 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1420788542");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_54_Output_0,
                [1] = self.f_box_IndexList_v2_54_Output_1,
                [2] = self.f_box_IndexList_v2_54_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_49 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1461523871");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_49_Out,
    });
    self.box_IndexList_v2_27 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1479130481");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_27_Output_0,
                [1] = self.f_box_IndexList_v2_27_Output_1,
                [2] = self.f_box_IndexList_v2_27_Output_2,
            },
            count = 3,
        },
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1480629952");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_Coast_C7_CTP_010_ContextualActions_25 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_ContextualActions.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_ContextualActions_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_ContextualActions_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1482334570");
    l0:SetConnections({
    });
    self.box_SpawnAI_33 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1574202164");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_33_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_33_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_33_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_33_Success,
    });
    self.box_Coast_C7_CTP_010_ContextualActions_34 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_ContextualActions.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_ContextualActions_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_ContextualActions_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1620804052");
    l0:SetConnections({
    });
    self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_1 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Spawning.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_NPC_Spawning_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1696842853");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_1_Out,
    });
    self.box_Coast_C7_CTP_010_ContextualActions_13 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_ContextualActions.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_ContextualActions_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_ContextualActions_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1713595976");
    l0:SetConnections({
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1737614103");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_23_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_23_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_23_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_23_Success,
    });
    self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_4 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Spawning.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_NPC_Spawning_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1750554530");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_4_Out,
    });
    self.box_SpawnAI_37 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1791699217");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_37_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_37_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_37_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_37_Success,
    });
    self.box_ListReader_75 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1796277211");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_75_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_75_Out,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1900276041");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1908122149");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_43_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_43_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_43_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_43_Success,
    });
    self.box_RemoveEntity_v2_17 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1909941732");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_17_Out,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1991165792");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_20_Out,
    });
    self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_3 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_NPC_Spawning.debug.lua");
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Coast_C7_CTP_010_Initial_NPC_Spawning_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2017351908");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_3_Out,
    });
    self.box_ListReader_65 = cbox:CreateBox("Domino/System/ListReader.lua");
    l0 = self.box_ListReader_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListReader_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2106498700");
    l0:SetConnections({
        -- EndOfList,
        [0] = self.f_box_ListReader_65_EndOfList,
        -- Out,
        [1] = self.f_box_ListReader_65_Out,
    });
    self.box_IndexList_v2_21 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2108184961");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_21_Output_0,
                [1] = self.f_box_IndexList_v2_21_Output_1,
                [2] = self.f_box_IndexList_v2_21_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_38 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2123666955");
    l0:SetConnections({
        -- Fail,
        [0] = self.f_box_SpawnAI_38_Fail,
        -- Out,
        [1] = self.f_box_SpawnAI_38_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_38_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_38_Success,
    });
end;

function export:NPC_Package_A_Bridge()
    local params, l0;
    params = self:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_4();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1774443469", "1774443469", "Coast_C7_CTP_010_Initial_NPC_Setup", "NPC_Package_A_Bridge", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:NPC_Package_B_Camp_I_Working()
    local params, l0;
    params = self:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_3();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|569420235", "569420235", "Coast_C7_CTP_010_Initial_NPC_Setup", "NPC_Package_B_Camp_I_Working", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:NPC_Package_C_Camp_II_Storage()
    local params, l0;
    params = self:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_5();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_5;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|611916258", "611916258", "Coast_C7_CTP_010_Initial_NPC_Setup", "NPC_Package_C_Camp_II_Storage", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:NPC_Package_D_Hangar_I_Bar()
    local params, l0;
    params = self:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_2();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2139454362", "2139454362", "Coast_C7_CTP_010_Initial_NPC_Setup", "NPC_Package_D_Hangar_I_Bar", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:NPC_Package_E_Hangar_II_Chillout()
    local params, l0;
    params = self:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_1();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|955535563", "955535563", "Coast_C7_CTP_010_Initial_NPC_Setup", "NPC_Package_E_Hangar_II_Chillout", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_1.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:NPC_Package_F_RaceDeck()
    local params, l0;
    params = self:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_6();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|729703348", "729703348", "Coast_C7_CTP_010_Initial_NPC_Setup", "NPC_Package_F_RaceDeck", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ListReader_70_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_72();
    l0 = self.box_ListReader_70;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1812778086", "1812778086", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_70.Out", "box_GroupAddToGroup_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualStrategyListener_v2_50_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_17();
    l0 = self.box_ContextualStrategyListener_v2_50;
    l1 = self.box_RemoveEntity_v2_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|904157672", "904157672", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ContextualStrategyListener_v2_50.Finished", "box_RemoveEntity_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Print_v2_7_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_41();
    l0 = self.box_IndexList_v2_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|805646737", "805646737", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Print_v2_7.PrintedToScreen", "box_IndexList_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_37();
    l0 = self.box_MultipleOR_28;
    l1 = self.box_SpawnAI_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1150751865", "1150751865", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_MultipleOR_28.Out", "box_SpawnAI_37.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Print_v2_11_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_21();
    l0 = self.box_IndexList_v2_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2001163123", "2001163123", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Print_v2_11.PrintedToScreen", "box_IndexList_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_46_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_SpawnAI_46;
    l1 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|261675382", "261675382", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_46.Spawned", "box_Delay_v5_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_22_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_22_Spawned();
    params = self:OnEnter_box_ListReader_68();
    l0 = self.box_SpawnAI_22;
    l1 = self.box_ListReader_68;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1489938015", "1489938015", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_22.Spawned", "box_ListReader_68.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_ListReader_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_79();
    l0 = self.box_ListReader_78;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|813506002", "813506002", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_78.Out", "box_GroupAddToGroup_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualStrategyListener_v2_16_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_47();
    l0 = self.box_ContextualStrategyListener_v2_16;
    l1 = self.box_RemoveEntity_v2_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2102635904", "2102635904", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ContextualStrategyListener_v2_16.Finished", "box_RemoveEntity_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_30_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_30;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|776899293", "776899293", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_30.Output", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_30_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_30;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|609385256", "609385256", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_30.Output", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_30_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_IndexList_v2_30;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1640973463", "1640973463", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_30.Output", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_41_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_41;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|853314930", "853314930", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_41.Output", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_41_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_41;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|100961976", "100961976", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_41.Output", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_41_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_40();
    l0 = self.box_IndexList_v2_41;
    l1 = self.box_SpawnAI_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|996217616", "996217616", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_41.Output", "box_SpawnAI_40.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_52_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_MultipleOR_52;
    l1 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|733773584", "733773584", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_MultipleOR_52.Out", "box_SpawnAI_23.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ListReader_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_64();
    l0 = self.box_ListReader_63;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|954515135", "954515135", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_63.Out", "box_GroupAddToGroup_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_MultipleOR_42;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|525213561", "525213561", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_MultipleOR_42.Out", "box_SpawnAI_14.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ListReader_69_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_73();
    l0 = self.box_ListReader_69;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|969506929", "969506929", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_69.Out", "box_GroupAddToGroup_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReader_68_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_66();
    l0 = self.box_ListReader_68;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|66357048", "66357048", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_68.Out", "box_GroupAddToGroup_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|654234837", "654234837", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_MultipleOR_36.Out", "box_SpawnAI_22.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_55_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_55_Spawned();
    params = self:OnEnter_box_ListReader_70();
    l0 = self.box_SpawnAI_55;
    l1 = self.box_ListReader_70;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1156177003", "1156177003", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_55.Spawned", "box_ListReader_70.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_12();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_5;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|798127058", "798127058", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_5.Out", "box_Print_v2_12.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_51_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_51;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2011835937", "2011835937", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_51.Output", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_51_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_51;
    l1 = self.box_MultipleOR_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1745328217", "1745328217", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_51.Output", "box_MultipleOR_31.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_51_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_IndexList_v2_51;
    l1 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1787436703", "1787436703", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_51.Output", "box_SpawnAI_43.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_40_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_40_Spawned();
    params = self:OnEnter_box_ListReader_69();
    l0 = self.box_SpawnAI_40;
    l1 = self.box_ListReader_69;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|974334440", "974334440", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_40.Spawned", "box_ListReader_69.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_48();
    l0 = self.box_RemoveEntity_v2_47;
    l1 = self.box_Delay_v5_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1778783336", "1778783336", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_RemoveEntity_v2_47.Out", "box_Delay_v5_48.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_31_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_MultipleOR_31;
    l1 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1406634238", "1406634238", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_MultipleOR_31.Out", "box_SpawnAI_46.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Print_v2_8_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_51();
    l0 = self.box_IndexList_v2_51;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1865260264", "1865260264", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Print_v2_8.PrintedToScreen", "box_IndexList_v2_51.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_32_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_32_Spawned();
    params = self:OnEnter_box_ListReader_65();
    l0 = self.box_SpawnAI_32;
    l1 = self.box_ListReader_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|314722567", "314722567", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_32.Spawned", "box_ListReader_65.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_44_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_44_Spawned();
    params = self:OnEnter_box_ListReader_62();
    l0 = self.box_SpawnAI_44;
    l1 = self.box_ListReader_62;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1175178192", "1175178192", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_44.Spawned", "box_ListReader_62.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_Print_v2_9_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_54();
    l0 = self.box_IndexList_v2_54;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|493356524", "493356524", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Print_v2_9.PrintedToScreen", "box_IndexList_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_45_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_45_Spawned();
    params = self:OnEnter_box_ListReader_58();
    l0 = self.box_SpawnAI_45;
    l1 = self.box_ListReader_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1024169522", "1024169522", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_45.Spawned", "box_ListReader_58.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_ListReader_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_77();
    l0 = self.box_ListReader_76;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1348993121", "1348993121", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_76.Out", "box_GroupAddToGroup_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_49();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_SpawnAI_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1856501631", "1856501631", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Delay_v5_39.TimeElapsed", "box_SpawnAI_49.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|503598315", "503598315", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_OutputOrder_v2_29.Out", "box_Print_v2_9.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_ContextualActions_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1256052805", "1256052805", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_OutputOrder_v2_29.Out", "box_Coast_C7_CTP_010_ContextualActions_25.Switch_CS_RaceCars_PKG_F", clone:GetLuaBox(), l0:GetLuaBox());
    -- Switch_CS_RaceCars_PKG_F
    l0:Exec(4, {
    });
end;

function export:f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|247163974", "247163974", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_6.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReader_58_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_57();
    l0 = self.box_ListReader_58;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1544621022", "1544621022", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_58.Out", "box_GroupAddToGroup_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_10_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_27();
    l0 = self.box_IndexList_v2_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|215416209", "215416209", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Print_v2_10.PrintedToScreen", "box_IndexList_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_14_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_SpawnAI_14;
    l1 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|563680478", "563680478", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_14.Spawned", "box_Delay_v5_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ListReader_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_61();
    l0 = self.box_ListReader_62;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1112032999", "1112032999", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_62.Out", "box_GroupAddToGroup_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Print_v2_12_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_30();
    l0 = self.box_IndexList_v2_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|648663551", "648663551", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Print_v2_12.PrintedToScreen", "box_IndexList_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1048384979", "1048384979", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_2.Out", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReader_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_71();
    l0 = self.box_ListReader_60;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|482131306", "482131306", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_60.Out", "box_GroupAddToGroup_v2_71.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_53_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_53_Spawned();
    params = self:OnEnter_box_ListReader_63();
    l0 = self.box_SpawnAI_53;
    l1 = self.box_ListReader_63;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1982604839", "1982604839", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_53.Spawned", "box_ListReader_63.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_48_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_38();
    l0 = self.box_Delay_v5_48;
    l1 = self.box_SpawnAI_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1043701795", "1043701795", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Delay_v5_48.TimeElapsed", "box_SpawnAI_38.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_55();
    l0 = self.box_Delay_v5_18;
    l1 = self.box_SpawnAI_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1803670030", "1803670030", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Delay_v5_18.TimeElapsed", "box_SpawnAI_55.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_7();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|805383250", "805383250", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_OutputOrder_v2_19.Out", "box_Print_v2_7.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_ContextualActions_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|94628584", "94628584", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_OutputOrder_v2_19.Out", "box_Coast_C7_CTP_010_ContextualActions_13.Switch_CS_RaceCars_PKG_D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Switch_CS_RaceCars_PKG_D
    l0:Exec(3, {
    });
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_Coast_C7_CTP_010_ContextualActions_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1054301014", "1054301014", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_OutputOrder_v2_19.Out", "box_Coast_C7_CTP_010_ContextualActions_34.Set_WatchingFight_STP", clone:GetLuaBox(), l0:GetLuaBox());
    -- Set_WatchingFight_STP
    l0:Exec(2, {
    });
end;

function export:f_box_ListReader_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_56();
    l0 = self.box_ListReader_26;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1485159929", "1485159929", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_26.Out", "box_GroupAddToGroup_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_54_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_54;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2062290357", "2062290357", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_54.Output", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_54_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_54;
    l1 = self.box_MultipleOR_52;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|580769772", "580769772", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_54.Output", "box_MultipleOR_52.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_54_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_33();
    l0 = self.box_IndexList_v2_54;
    l1 = self.box_SpawnAI_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1288834139", "1288834139", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_54.Output", "box_SpawnAI_33.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_49_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualStrategyListener_v2_16();
    l0 = self.box_SpawnAI_49;
    l1 = self.box_ContextualStrategyListener_v2_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1048856457", "1048856457", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_49.Out", "box_ContextualStrategyListener_v2_16.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_27_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_27;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1603072996", "1603072996", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_27.Output", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_27_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_27;
    l1 = self.box_MultipleOR_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|980389442", "980389442", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_27.Output", "box_MultipleOR_28.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_27_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_45();
    l0 = self.box_IndexList_v2_27;
    l1 = self.box_SpawnAI_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|583573835", "583573835", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_27.Output", "box_SpawnAI_45.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|877362660", "877362660", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Delay_v5_15.TimeElapsed", "box_SpawnAI_20.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_33_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_33_Spawned();
    params = self:OnEnter_box_ListReader_78();
    l0 = self.box_SpawnAI_33;
    l1 = self.box_ListReader_78;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|167440109", "167440109", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_33.Spawned", "box_ListReader_78.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_8();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_1;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|935488088", "935488088", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_1.Out", "box_Print_v2_8.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_23_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_23_Spawned();
    params = self:OnEnter_box_ListReader_76();
    l0 = self.box_SpawnAI_23;
    l1 = self.box_ListReader_76;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1407581782", "1407581782", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_23.Spawned", "box_ListReader_76.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_10();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_4;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|2032632651", "2032632651", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_4.Out", "box_Print_v2_10.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_37_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_37_Spawned();
    params = self:OnEnter_box_ListReader_26();
    l0 = self.box_SpawnAI_37;
    l1 = self.box_ListReader_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1256885781", "1256885781", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_37.Spawned", "box_ListReader_26.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_ListReader_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_74();
    l0 = self.box_ListReader_75;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|766451540", "766451540", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_75.Out", "box_GroupAddToGroup_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_44();
    l0 = self.box_MultipleOR_24;
    l1 = self.box_SpawnAI_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1011893913", "1011893913", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_MultipleOR_24.Out", "box_SpawnAI_44.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_43_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_43_Spawned();
    params = self:OnEnter_box_ListReader_75();
    l0 = self.box_SpawnAI_43;
    l1 = self.box_ListReader_75;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|631169899", "631169899", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_43.Spawned", "box_ListReader_75.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_RemoveEntity_v2_17;
    l1 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1274279457", "1274279457", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_RemoveEntity_v2_17.Out", "box_Delay_v5_18.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualStrategyListener_v2_50();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_ContextualStrategyListener_v2_50;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|435037467", "435037467", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_20.Out", "box_ContextualStrategyListener_v2_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Coast_C7_CTP_010_Initial_NPC_Spawning_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_11();
    l0 = self.box_Coast_C7_CTP_010_Initial_NPC_Spawning_3;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1738393413", "1738393413", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_Coast_C7_CTP_010_Initial_NPC_Spawning_3.Out", "box_Print_v2_11.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ListReader_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_67();
    l0 = self.box_ListReader_65;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|319000836", "319000836", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_ListReader_65.Out", "box_GroupAddToGroup_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_21_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_21;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|932178985", "932178985", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_21.Output", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_21_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_21;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|712530914", "712530914", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_21.Output", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IndexList_v2_21_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_53();
    l0 = self.box_IndexList_v2_21;
    l1 = self.box_SpawnAI_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|563582854", "563582854", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_IndexList_v2_21.Output", "box_SpawnAI_53.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_38_Spawned()
    local params, l0, l1;
    self:OnExit_box_SpawnAI_38_Spawned();
    params = self:OnEnter_box_ListReader_60();
    l0 = self.box_SpawnAI_38;
    l1 = self.box_ListReader_60;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|702564180", "702564180", "Coast_C7_CTP_010_Initial_NPC_Setup", "box_SpawnAI_38.Spawned", "box_ListReader_60.Read", l0:GetLuaBox(), l1:GetLuaBox());
    -- Read
    l1:Exec(0, params);
end;

function export:OnEnter_box_ListReader_70()
    local params, l0;
    l0 = self.box_SpawnAI_55;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ContextualStrategyListener_v2_50()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ContextualStrategy,
        [1] = "2109576608049281860",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|21367873");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_7_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Enemy Setup - Package D - Hangar I Bar",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|123307151");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_62;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#3DAD8B5F",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|150981195");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_11_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Enemy Setup - Package B - Camp I WorkingArea",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109576525851408733",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109658285475902431",
    };
    return params;
end;

function export:OnEnter_box_ListReader_78()
    local params, l0;
    l0 = self.box_SpawnAI_33;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ContextualStrategyListener_v2_16()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- ContextualStrategy,
        [1] = "2109576608049281860",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_30()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|423876925");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_69;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#29714C95",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_41()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_ListReader_63()
    local params, l0;
    l0 = self.box_SpawnAI_53;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ListReader_69()
    local params, l0;
    l0 = self.box_SpawnAI_40;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_ListReader_68()
    local params, l0;
    l0 = self.box_SpawnAI_22;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|675487780");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_75;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#29714C95",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_55()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109092065152344564",
    };
    return params;
end;

function export:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_5()
    local params;
    params = {
        -- Spawner_1,
        [0] = "2109092065152344565",
        -- Spawner_2,
        [1] = "2109590807647362425",
        -- Spawner_3,
        [2] = "2109590779006557485",
        -- Spawner_4,
        [3] = "2109535359529422045",
        -- Spawner_5,
        [4] = "2109571694310994398",
        -- Spawner_6,
        [5] = "2109092065152344560",
        -- Spawner_7,
        [6] = "2110225660912870569",
        -- Spawner_8,
        [7] = "2108218945518442428",
        -- Spawner_9,
        [8] = "2109092065152344561",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|770687013");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_26;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#29714C95",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_51()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_40()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2110185818122358434",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_47()
    local params;
    params = {
        -- Group,
        [0] = "#659C74C2",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|944732676");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_58;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#29714C95",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_71()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|970257354");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_60;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#29714C95",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|979321921");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_8_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Enemy Setup - Package E - Hangar II Chillout",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2110185687249599007",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_44()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109658285475902431",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1015822023");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_63;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#3DAD8B5F",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1037364102");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_9_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Enemy Setup - Package F - RaceDeck",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_45()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2110185687249599007",
    };
    return params;
end;

function export:OnEnter_box_ListReader_76()
    local params, l0;
    l0 = self.box_SpawnAI_23;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1055457141");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_78;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#29714C95",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1110026106");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_6()
    local params;
    params = {
        -- Spawner_1,
        [0] = "2109534081403341028",
        -- Spawner_2,
        [1] = "2109534176723094143",
        -- Spawner_3,
        [2] = "2110234658665937610",
        -- Spawner_4,
        [3] = "2110264143433982001",
        -- Spawner_5,
        [4] = "2109092065152344561",
        -- Spawner_6,
        [5] = "2108218945518442428",
        -- Spawner_7,
        [6] = "2110225660912870569",
        -- Spawner_8,
        [7] = "2108218943786194799",
        -- Spawner_9,
        [8] = "2109092065152344560",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1143495513");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_65;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#3DAD8B5F",
    };
    return params;
end;

function export:OnEnter_box_ListReader_58()
    local params, l0;
    l0 = self.box_SpawnAI_45;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1159786036");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_10_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Enemy Setup - Package A - Island",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_14()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109576525851408733",
    };
    return params;
end;

function export:OnEnter_box_ListReader_62()
    local params, l0;
    l0 = self.box_SpawnAI_44;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1211827892");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_12_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Enemy Setup - Package C - Camp II StorageArea",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_2()
    local params;
    params = {
        -- Spawner_1,
        [0] = "2108149283564819825",
        -- Spawner_2,
        [1] = "2109589198955659369",
        -- Spawner_3,
        [2] = "2109589188983700586",
        -- Spawner_4,
        [3] = "2108813977357130215",
        -- Spawner_5,
        [4] = "2108814745581653734",
        -- Spawner_6,
        [5] = "2109535013069422267",
        -- Spawner_7,
        [6] = "2109535359529422045",
        -- Spawner_8,
        [7] = "2108218943786194799",
        -- Spawner_9,
        [8] = "2108218944377591689",
    };
    return params;
end;

function export:OnEnter_box_ListReader_60()
    local params, l0;
    l0 = self.box_SpawnAI_38;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_53()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2110185818122358434",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_48()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1411811041");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListReader_26()
    local params, l0;
    l0 = self.box_SpawnAI_37;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_54()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_49()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109576781137722489",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_27()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 25,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_33()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2110186345375742722",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1584593973");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_76;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#29714C95",
    };
    return params;
end;

function export:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_1()
    local params;
    params = {
        -- Spawner_1,
        [0] = "2109532995353317089",
        -- Spawner_2,
        [1] = "2109533050263047979",
        -- Spawner_3,
        [2] = "2109533239017214480",
        -- Spawner_4,
        [3] = "2109533198168887519",
        -- Spawner_5,
        [4] = "2109533246699082328",
        -- Spawner_6,
        [5] = "2108218945518442428",
        -- Spawner_7,
        [6] = "2110225660912870569",
        -- Spawner_8,
        [7] = "2110237997459855394",
        -- Spawner_9,
        [8] = "2109092065152344560",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2110186345375742722",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1744560672");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_70;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#29714C95",
    };
    return params;
end;

function export:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_4()
    local params;
    params = {
        -- Spawner_1,
        [0] = "2109534736771742420",
        -- Spawner_2,
        [1] = "2109092065152344562",
        -- Spawner_3,
        [2] = "2109534859687918662",
        -- Spawner_4,
        [3] = "2108218944377591689",
        -- Spawner_5,
        [4] = "2108218945518442428",
        -- Spawner_6,
        [5] = "2109571694310994398",
        -- Spawner_7,
        [6] = "2108218943786194799",
        -- Spawner_8,
        [7] = "2109092065152344560",
        -- Spawner_9,
        [8] = "2109092065152344561",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_NPC_Setup|1781275940");
    l0:SetConnections({
    });
    l0 = self.box_ListReader_68;
    params = {
        -- FromGroup,
        [0] = l0:GetDataOutValue(1),
        -- ToGroup,
        [1] = "#3DAD8B5F",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_37()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109658285475902431",
    };
    return params;
end;

function export:OnEnter_box_ListReader_75()
    local params, l0;
    l0 = self.box_SpawnAI_43;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2110185687249599007",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_17()
    local params;
    params = {
        -- Group,
        [0] = "#659C74C2",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109576781137722489",
    };
    return params;
end;

function export:OnEnter_box_Coast_C7_CTP_010_Initial_NPC_Spawning_3()
    local params;
    params = {
        -- Spawner_1,
        [0] = "2108218939243763509",
        -- Spawner_2,
        [1] = "2109571707481109046",
        -- Spawner_3,
        [2] = "2109590622751955947",
        -- Spawner_4,
        [3] = "2109535359529422045",
        -- Spawner_5,
        [4] = "2109534948969971128",
        -- Spawner_6,
        [5] = "2110237997459855394",
        -- Spawner_7,
        [6] = "2110225660912870569",
        -- Spawner_8,
        [7] = "2108218945518442428",
        -- Spawner_9,
        [8] = "2109092065152344561",
    };
    return params;
end;

function export:OnEnter_box_ListReader_65()
    local params, l0;
    l0 = self.box_SpawnAI_32;
    params = {
        -- Input,
        [1] = l0:GetDataOutValue(0),
        -- Loop,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_21()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_38()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109092065152344564",
    };
    return params;
end;

function export:OnExit_box_SpawnAI_22_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_22;
    l1 = self.box_ListReader_68;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_55_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_55;
    l1 = self.box_ListReader_70;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_40_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_40;
    l1 = self.box_ListReader_69;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_32_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_32;
    l1 = self.box_ListReader_65;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_44_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_44;
    l1 = self.box_ListReader_62;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_45_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_45;
    l1 = self.box_ListReader_58;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_53_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_53;
    l1 = self.box_ListReader_63;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_33_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_33;
    l1 = self.box_ListReader_78;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_23_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_23;
    l1 = self.box_ListReader_76;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_37_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_37;
    l1 = self.box_ListReader_26;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_43_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_43;
    l1 = self.box_ListReader_75;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SpawnAI_38_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_38;
    l1 = self.box_ListReader_60;
    l1:GetLuaBox().Input = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="NPC_Package_A_Bridge" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="NPC_Package_B_Camp_I_Working" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="NPC_Package_C_Camp_II_Storage" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="NPC_Package_D_Hangar_I_Bar" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="NPC_Package_E_Hangar_II_Chillout" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="NPC_Package_F_RaceDeck" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
