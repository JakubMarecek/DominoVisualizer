LUACǴ  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c7/coast_c7_ctp_010_main.domino
-- User graph: Coast_C7_CTP_010_Initial_Vehicle_Setup
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
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C7/Coast_C7_CTP_010_Main.Coast_C7_CTP_010_Initial_Vehicle_Setup.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/EntityStatusListener.lua")] = {
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
                name = "Loaded",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
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
                name = "checkNow",
                type = "bool",
            },
            [2] = {
                name = "entityId",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/VehicleModifier_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAlternativeSuspensionDisabled",
            },
            [1] = {
                name = "SetAlternativeSuspensionEnabled",
            },
            [2] = {
                name = "SetAsAnimated",
            },
            [3] = {
                name = "SetAsDestructable",
            },
            [4] = {
                name = "SetAsIndestructable",
            },
            [5] = {
                name = "SetAsNotAnimated",
            },
            [6] = {
                name = "SetAsUnusable",
            },
            [7] = {
                name = "SetAsUsable",
            },
            [8] = {
                name = "SetBrakesReleased",
            },
            [9] = {
                name = "SetCommandeerDisabled",
            },
            [10] = {
                name = "SetCommandeerEnabled",
            },
            [11] = {
                name = "SetEngineBroken",
            },
            [12] = {
                name = "SetEngineDisabled",
            },
            [13] = {
                name = "SetEngineMajorDamage",
            },
            [14] = {
                name = "SetEngineMinorDamage",
            },
            [15] = {
                name = "SetExitDisabled",
            },
            [16] = {
                name = "SetExitEnabled",
            },
            [17] = {
                name = "SetExplosion",
            },
            [18] = {
                name = "SetInputDisabled",
            },
            [19] = {
                name = "SetInputEnabled",
            },
        },
        controlInCount = 20,
        controlOut = {
            [0] = {
                name = "OnSetAlternativeSuspensionDisabled",
                delayed = false,
            },
            [1] = {
                name = "OnSetAlternativeSuspensionEnabled",
                delayed = false,
            },
            [2] = {
                name = "OnSetAsAnimated",
                delayed = false,
            },
            [3] = {
                name = "OnSetAsDestructible",
                delayed = false,
            },
            [4] = {
                name = "OnSetAsIndestructible",
                delayed = false,
            },
            [5] = {
                name = "OnSetAsNotAnimated",
                delayed = false,
            },
            [6] = {
                name = "OnSetAsUnusable",
                delayed = false,
            },
            [7] = {
                name = "OnSetAsUsable",
                delayed = false,
            },
            [8] = {
                name = "OnSetBrakesReleased",
                delayed = false,
            },
            [9] = {
                name = "OnSetCommandeerDisabled",
                delayed = false,
            },
            [10] = {
                name = "OnSetCommandeerEnabled",
                delayed = false,
            },
            [11] = {
                name = "OnSetEngineBroken",
                delayed = false,
            },
            [12] = {
                name = "OnSetEngineDisabled",
                delayed = false,
            },
            [13] = {
                name = "OnSetEngineMajorDamage",
                delayed = false,
            },
            [14] = {
                name = "OnSetEngineMinorDamage",
                delayed = false,
            },
            [15] = {
                name = "OnSetExitDisabled",
                delayed = false,
            },
            [16] = {
                name = "OnSetExitEnabled",
                delayed = false,
            },
            [17] = {
                name = "OnSetExplosion",
                delayed = false,
            },
            [18] = {
                name = "OnSetInputDisabled",
                delayed = false,
            },
            [19] = {
                name = "OnSetInputEnabled",
                delayed = false,
            },
        },
        controlOutCount = 20,
        dataIn = {
            [0] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "Coast_C7_CTP_010_Initial_Vehicle_Setup";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup";
    self.Out = DummyFunction;
    self.box_IndexList_v2_2 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|156764104");
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
                [0] = self.f_box_IndexList_v2_2_Output_0,
                [1] = self.f_box_IndexList_v2_2_Output_1,
                [2] = self.f_box_IndexList_v2_2_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|247038534");
    l0:SetConnections({
    });
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|255712392");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_10_Out,
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|274310100");
    l0:SetConnections({
    });
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|555703787");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_14_Out,
    });
    self.box_SpawnAI_12 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|570850759");
    l0:SetConnections({
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|705665290");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_13_Out,
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|784461625");
    l0:SetConnections({
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1010849015");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_23_Out,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1022772280");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_8_Out,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1886266697");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_21_Out,
    });
    self.box_IndexList_v2_6 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1913344473");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_6_Output_0,
                [1] = self.f_box_IndexList_v2_6_Output_1,
                [2] = self.f_box_IndexList_v2_6_Output_2,
                [3] = self.f_box_IndexList_v2_6_Output_3,
                [4] = self.f_box_IndexList_v2_6_Output_4,
                [5] = self.f_box_IndexList_v2_6_Output_5,
            },
            count = 6,
        },
    });
    self.box_EntityStatusListener_27 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|2061378058");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_27_Loaded,
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|2117828014");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1153500097", "1153500097", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Print_v2_17_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|647657429", "647657429", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_Print_v2_17.PrintedToScreen", "box_SpawnAI_10.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Print_v2_15_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1141817882", "1141817882", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_Print_v2_15.PrintedToScreen", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IndexList_v2_2_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_4();
    l0 = self.box_IndexList_v2_2;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|413569641", "413569641", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_IndexList_v2_2.Output", "box_MissionBlockLayer_4.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_2_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_1();
    l0 = self.box_IndexList_v2_2;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|331093217", "331093217", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_IndexList_v2_2.Output", "box_MissionBlockLayer_1.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_2_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_3();
    l0 = self.box_IndexList_v2_2;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|899443491", "899443491", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_IndexList_v2_2.Output", "box_MissionBlockLayer_3.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_10;
    l1 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|345872494", "345872494", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_SpawnAI_10.Out", "box_SpawnAI_7.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_SpawnAI_14;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|2073616003", "2073616003", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_SpawnAI_14.Out", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Print_v2_20_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|356821437", "356821437", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_Print_v2_20.PrintedToScreen", "box_SpawnAI_14.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Print_v2_18_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|660100001", "660100001", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_Print_v2_18.PrintedToScreen", "box_SpawnAI_23.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_27();
    l0 = self.box_SpawnAI_13;
    l1 = self.box_EntityStatusListener_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1491342678", "1491342678", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_SpawnAI_13.Out", "box_EntityStatusListener_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Print_v2_19_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|144822104", "144822104", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_Print_v2_19.PrintedToScreen", "box_SpawnAI_8.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_SpawnAI_23;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1262176242", "1262176242", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_SpawnAI_23.Out", "box_SpawnAI_11.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_SpawnAI_8;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|859930655", "859930655", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_SpawnAI_8.Out", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Print_v2_22_PrintedToScreen()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|108339373", "108339373", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_Print_v2_22.PrintedToScreen", "box_SpawnAI_13.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_2();
    l0 = self.box_IndexList_v2_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1038969543", "1038969543", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_OutputOrder_v2_5.Out", "box_IndexList_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_6();
    l0 = self.box_IndexList_v2_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|292981153", "292981153", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_OutputOrder_v2_5.Out", "box_IndexList_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|202083592", "202083592", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_OutputOrder_v2_5.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_SpawnAI_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_12();
    l0 = self.box_SpawnAI_21;
    l1 = self.box_SpawnAI_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1457526009", "1457526009", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_SpawnAI_21.Out", "box_SpawnAI_12.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_6_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_17();
    l0 = self.box_IndexList_v2_6;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|694298364", "694298364", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_IndexList_v2_6.Output", "box_Print_v2_17.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_6_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_15();
    l0 = self.box_IndexList_v2_6;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|919298603", "919298603", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_IndexList_v2_6.Output", "box_Print_v2_15.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_6_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_20();
    l0 = self.box_IndexList_v2_6;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|655490028", "655490028", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_IndexList_v2_6.Output", "box_Print_v2_20.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_6_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_19();
    l0 = self.box_IndexList_v2_6;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|546612927", "546612927", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_IndexList_v2_6.Output", "box_Print_v2_19.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_6_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_18();
    l0 = self.box_IndexList_v2_6;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1994092175", "1994092175", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_IndexList_v2_6.Output", "box_Print_v2_18.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_6_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_22();
    l0 = self.box_IndexList_v2_6;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1019123369", "1019123369", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_IndexList_v2_6.Output", "box_Print_v2_22.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_27_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_26();
    l0 = self.box_EntityStatusListener_27;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|2145677886", "2145677886", "Coast_C7_CTP_010_Initial_Vehicle_Setup", "box_EntityStatusListener_27.Loaded", "box_VehicleModifier_v2_26.SetEngineMajorDamage", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineMajorDamage
    l1:Exec(13, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Print_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|117343073");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_17_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Vehicle - Package A - Island",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|153994305");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_15_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Vehicle Setup - Package B - Camp I WorkingArea",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_2()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109767352210961766",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109767380579137040",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109767380579137040",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|417647393");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160305372127625",
        -- missionLayerId,
        [1] = "27160320818491812",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_14()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109767667054295156",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|560912563");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_20_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Vehicle Setup - Package C - Camp II StorageArea",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_12()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108207824759690595",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|599697051");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_18_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Vehicle Setup - Package E - Hangar II Chillout",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|613801579");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160305372127625",
        -- missionLayerId,
        [1] = "36167520073239380",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109115441398944974",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109767370170971592",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|814364588");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_19_PrintedToScreen,
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Initial Vehicle Setup - Package D - Hangar I Bar",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109767667054295156",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109115441398944974",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1174154749");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160305372127625",
        -- missionLayerId,
        [1] = "36167520073239380",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1200737681");
    l0:SetConnections({
        -- PrintedToScreen,
        [3] = self.f_box_Print_v2_22_PrintedToScreen,
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

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1390341434");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C7\\Coast_C7_CTP_010_Main.domino|@Coast_C7_CTP_010_Initial_Vehicle_Setup|1704238781");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2109115441419916503",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109767667054295156",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_6()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C7_CTP_010_Main.iPackagePositionID,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109115441419916503",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109767410637616781",
    };
    return params;
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
	<DatasIn />
	<DatasOut />
</DominoMetadata>
