LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_coast/expeditions/c2/coast_c2_ctp_010_main_enemy.domino
-- User graph: InitialEnemySpawnController
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
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Coast_C2_CTP_010_Main_Enemy = nil;
    Globals.Coast_C2_CTP_010_Main_Enemy = {
        i_CurrentSize = 0,
        i_Difficulty = 0,
        i_PackagePositionIndex = 0,
        i_ExtractionPOIIndex = 0,
        e_PackageSpawner = nil,
        i_PlayerSpawnPOIIndex = 0,
        b_NextWaveUntilCombat = true,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Coast/Expeditions/C2/Coast_C2_CTP_010_Main_Enemy.InitialEnemySpawnController.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/MissionAckTriggerListener.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
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
                name = "triggerId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v3.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnAllInside",
                delayed = true,
            },
            [5] = {
                name = "OnEmpty",
                delayed = true,
            },
            [6] = {
                name = "OnOccupied",
                delayed = true,
            },
            [7] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "requiresPawnsActive",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
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
    self._name = "InitialEnemySpawnController";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController";
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|53941663");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_43_Out,
    });
    self.box_IndexList_v2_2 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|81361243");
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
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|94121879");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_54 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|114342354");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_54_Loaded,
    });
    self.box_SpawnAI_3 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|114998947");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_3_Out,
    });
    self.box_SpawnAI_65 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|117359924");
    l0:SetConnections({
    });
    self.box_SpawnAI_13 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|166182590");
    l0:SetConnections({
    });
    self.box_SpawnAI_45 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|224163426");
    l0:SetConnections({
    });
    self.box_SpawnAI_25 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|226622103");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_25_Out,
    });
    self.box_SpawnAI_38 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|324017376");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_38_Out,
    });
    self.box_SpawnAI_42 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|365507178");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_42_Out,
    });
    self.box_MissionAckTriggerListener_27 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|442534340");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_27_Enter,
    });
    self.box_SpawnAI_44 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|443739835");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_44_Out,
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|454036870");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_23_Out,
    });
    self.box_SpawnAI_61 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|460486566");
    l0:SetConnections({
    });
    self.box_SpawnAI_10 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|540135588");
    l0:SetConnections({
    });
    self.box_IndexList_v2_56 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|579624348");
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
                [0] = self.f_box_IndexList_v2_56_Output_0,
                [1] = self.f_box_IndexList_v2_56_Output_1,
                [2] = self.f_box_IndexList_v2_56_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|630783476");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_19_Out,
    });
    self.box_SpawnAI_4 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|759512630");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_4_Out,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|764908743");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_21_Out,
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|770146493");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_7_Out,
    });
    self.box_IndexList_v2_28 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|835785531");
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
                [0] = self.f_box_IndexList_v2_28_Output_0,
                [1] = self.f_box_IndexList_v2_28_Output_1,
                [2] = self.f_box_IndexList_v2_28_Output_2,
            },
            count = 3,
        },
    });
    self.box_EntityStatusListener_55 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|866168753");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_55_Loaded,
    });
    self.box_ProximityTrigger_v3_49 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|868130155");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_49_Enter,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|915839964");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_SpawnAI_57 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1013897546");
    l0:SetConnections({
    });
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1047752188");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_24_Out,
    });
    self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1063558753");
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
        [0] = self.f_box_MultipleOR_34_Out,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1087698921");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_20_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_20_Spawned,
    });
    self.box_SpawnAI_6 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1095917149");
    l0:SetConnections({
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1122151755");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_15_Out,
    });
    self.box_IndexList_v2_12 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1141874067");
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
                [0] = self.f_box_IndexList_v2_12_Output_0,
                [1] = self.f_box_IndexList_v2_12_Output_1,
                [2] = self.f_box_IndexList_v2_12_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_35 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1239785045");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_35_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_35_Spawned,
    });
    self.box_ProximityTrigger_v3_47 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1277960215");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_47_Enter,
    });
    self.box_SpawnAI_9 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1293689320");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_9_Out,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1294069486");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_8_Out,
    });
    self.box_SpawnAI_39 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1356820423");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_39_Out,
    });
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1404357634");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_53_Loaded,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1458591222");
    l0:SetConnections({
    });
    self.box_SpawnAI_41 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1495034056");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_41_Out,
    });
    self.box_SpawnAI_36 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1514352180");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_36_Out,
    });
    self.box_IndexList_v2_1 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1523618873");
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
                [0] = self.f_box_IndexList_v2_1_Output_0,
                [1] = self.f_box_IndexList_v2_1_Output_1,
                [2] = self.f_box_IndexList_v2_1_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1621484153");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_22_Out,
    });
    self.box_SpawnAI_18 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1649193302");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_18_Out,
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1703912268");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_26_Out,
    });
    self.box_SpawnAI_37 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1802499738");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_37_Out,
    });
    self.box_SpawnAI_14 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1823593568");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_14_Out,
    });
    self.box_ProximityTrigger_v3_48 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1870374253");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_48_Enter,
    });
    self.box_SpawnAI_11 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1936244933");
    l0:SetConnections({
    });
    self.box_SpawnAI_40 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1949316260");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_40_Out,
    });
    self.box_MissionAckTriggerListener_58 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2030931016");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_58_Enter,
    });
    self.box_SpawnAI_17 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2087044134");
    l0:SetConnections({
    });
    self.box_SpawnAI_63 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2095524803");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_63_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|437617944", "437617944", "InitialEnemySpawnController", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_43_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_42();
    l0 = self.box_SpawnAI_43;
    l1 = self.box_SpawnAI_42;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|800095054", "800095054", "InitialEnemySpawnController", "box_SpawnAI_43.Out", "box_SpawnAI_42.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_2_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_31();
    l0 = self.box_IndexList_v2_2;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1727669946", "1727669946", "InitialEnemySpawnController", "box_IndexList_v2_2.Output", "box_Print_v2_31.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_2_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_32();
    l0 = self.box_IndexList_v2_2;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|950219198", "950219198", "InitialEnemySpawnController", "box_IndexList_v2_2.Output", "box_Print_v2_32.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_2_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_36();
    l0 = self.box_IndexList_v2_2;
    l1 = self.box_SpawnAI_36;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1096561918", "1096561918", "InitialEnemySpawnController", "box_IndexList_v2_2.Output", "box_SpawnAI_36.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_54_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_48();
    l0 = self.box_EntityStatusListener_54;
    l1 = self.box_ProximityTrigger_v3_48;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1446161034", "1446161034", "InitialEnemySpawnController", "box_EntityStatusListener_54.Loaded", "box_ProximityTrigger_v3_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_SpawnAI_3;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|722243380", "722243380", "InitialEnemySpawnController", "box_SpawnAI_3.Out", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_VehicleModifier_v2_66_OnSetEngineDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_67();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|999061098", "999061098", "InitialEnemySpawnController", "box_VehicleModifier_v2_66.OnSetEngineDisabled", "box_Print_v2_67.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_SpawnAI_25;
    l1 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|349447837", "349447837", "InitialEnemySpawnController", "box_SpawnAI_25.Out", "box_SpawnAI_24.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_11();
    l0 = self.box_SpawnAI_38;
    l1 = self.box_SpawnAI_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1507319221", "1507319221", "InitialEnemySpawnController", "box_SpawnAI_38.Out", "box_SpawnAI_11.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_42_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_39();
    l0 = self.box_SpawnAI_42;
    l1 = self.box_SpawnAI_39;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1100257023", "1100257023", "InitialEnemySpawnController", "box_SpawnAI_42.Out", "box_SpawnAI_39.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MissionAckTriggerListener_27_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_10();
    l0 = self.box_MissionAckTriggerListener_27;
    l1 = self.box_SpawnAI_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1393865966", "1393865966", "InitialEnemySpawnController", "box_MissionAckTriggerListener_27.Enter", "box_SpawnAI_10.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_37();
    l0 = self.box_SpawnAI_44;
    l1 = self.box_SpawnAI_37;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1050907345", "1050907345", "InitialEnemySpawnController", "box_SpawnAI_44.Out", "box_SpawnAI_37.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_SpawnAI_23;
    l1 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1778595941", "1778595941", "InitialEnemySpawnController", "box_SpawnAI_23.Out", "box_SpawnAI_7.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|961336768", "961336768", "InitialEnemySpawnController", "box_OutputOrder_v2_60.Out", "box_MultipleOR_33.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_61();
    l0 = self.box_SpawnAI_61;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2122993227", "2122993227", "InitialEnemySpawnController", "box_OutputOrder_v2_60.Out", "box_SpawnAI_61.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_IndexList_v2_56_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_27();
    l0 = self.box_IndexList_v2_56;
    l1 = self.box_MissionAckTriggerListener_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|608093609", "608093609", "InitialEnemySpawnController", "box_IndexList_v2_56.Output", "box_MissionAckTriggerListener_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_56_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_MissionAckTriggerListener_58();
    l0 = self.box_IndexList_v2_56;
    l1 = self.box_MissionAckTriggerListener_58;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1881314767", "1881314767", "InitialEnemySpawnController", "box_IndexList_v2_56.Output", "box_MissionAckTriggerListener_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_56_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_59();
    l0 = self.box_IndexList_v2_56;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1007884254", "1007884254", "InitialEnemySpawnController", "box_IndexList_v2_56.Output", "box_Print_v2_59.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_SpawnAI_19;
    l1 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|991803495", "991803495", "InitialEnemySpawnController", "box_SpawnAI_19.Out", "box_SpawnAI_18.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_12();
    l0 = self.box_IndexList_v2_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1487897338", "1487897338", "InitialEnemySpawnController", "box_OutputOrder_v2_5.Out", "box_IndexList_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_56();
    l0 = self.box_IndexList_v2_56;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|172520662", "172520662", "InitialEnemySpawnController", "box_OutputOrder_v2_5.Out", "box_IndexList_v2_56.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_9();
    l0 = self.box_SpawnAI_4;
    l1 = self.box_SpawnAI_9;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1887080109", "1887080109", "InitialEnemySpawnController", "box_SpawnAI_4.Out", "box_SpawnAI_9.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_4();
    l0 = self.box_SpawnAI_21;
    l1 = self.box_SpawnAI_4;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|606706438", "606706438", "InitialEnemySpawnController", "box_SpawnAI_21.Out", "box_SpawnAI_4.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1230098709", "1230098709", "InitialEnemySpawnController", "box_SpawnAI_7.Out", "box_SpawnAI_22.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_28_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_64();
    l0 = self.box_IndexList_v2_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|961731695", "961731695", "InitialEnemySpawnController", "box_IndexList_v2_28.Output", "box_OutputOrder_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_28_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_29();
    l0 = self.box_IndexList_v2_28;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|754392126", "754392126", "InitialEnemySpawnController", "box_IndexList_v2_28.Output", "box_Print_v2_29.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_28_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_IndexList_v2_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1781738303", "1781738303", "InitialEnemySpawnController", "box_IndexList_v2_28.Output", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_55_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_49();
    l0 = self.box_EntityStatusListener_55;
    l1 = self.box_ProximityTrigger_v3_49;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1769505419", "1769505419", "InitialEnemySpawnController", "box_EntityStatusListener_55.Loaded", "box_ProximityTrigger_v3_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_49_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_ProximityTrigger_v3_49;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|103654335", "103654335", "InitialEnemySpawnController", "box_ProximityTrigger_v3_49.Enter", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_3();
    l0 = self.box_MultipleOR_33;
    l1 = self.box_SpawnAI_3;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|724421567", "724421567", "InitialEnemySpawnController", "box_MultipleOR_33.Out", "box_SpawnAI_3.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_2();
    l0 = self.box_IndexList_v2_2;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2006901648", "2006901648", "InitialEnemySpawnController", "box_OutputOrder_v2_50.Out", "box_IndexList_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1720611086", "1720611086", "InitialEnemySpawnController", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_24;
    l1 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1135003540", "1135003540", "InitialEnemySpawnController", "box_SpawnAI_24.Out", "box_SpawnAI_20.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_MultipleOR_34;
    l1 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1380376477", "1380376477", "InitialEnemySpawnController", "box_MultipleOR_34.Out", "box_SpawnAI_8.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_13();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_SpawnAI_13;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|171344835", "171344835", "InitialEnemySpawnController", "box_SpawnAI_20.Out", "box_SpawnAI_13.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_20_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_68();
    l0 = self.box_SpawnAI_20;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|387542552", "387542552", "InitialEnemySpawnController", "box_SpawnAI_20.Spawned", "box_VehicleModifier_v2_68.SetEngineDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineDisabled
    l1:Exec(12, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_15;
    l1 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1659260725", "1659260725", "InitialEnemySpawnController", "box_SpawnAI_15.Out", "box_SpawnAI_21.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_12_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_IndexList_v2_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|149760453", "149760453", "InitialEnemySpawnController", "box_IndexList_v2_12.Output", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_12_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_IndexList_v2_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|566799984", "566799984", "InitialEnemySpawnController", "box_IndexList_v2_12.Output", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_12_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_IndexList_v2_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1384343598", "1384343598", "InitialEnemySpawnController", "box_IndexList_v2_12.Output", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_SpawnAI_35;
    l1 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|674262111", "674262111", "InitialEnemySpawnController", "box_SpawnAI_35.Out", "box_SpawnAI_46.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_35_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_66();
    l0 = self.box_SpawnAI_35;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1448361147", "1448361147", "InitialEnemySpawnController", "box_SpawnAI_35.Spawned", "box_VehicleModifier_v2_66.SetEngineDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEngineDisabled
    l1:Exec(12, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_47_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_45();
    l0 = self.box_ProximityTrigger_v3_47;
    l1 = self.box_SpawnAI_45;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|420146342", "420146342", "InitialEnemySpawnController", "box_ProximityTrigger_v3_47.Enter", "box_SpawnAI_45.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_SpawnAI_9;
    l1 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1575039075", "1575039075", "InitialEnemySpawnController", "box_SpawnAI_9.Out", "box_SpawnAI_26.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_8;
    l1 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1837222223", "1837222223", "InitialEnemySpawnController", "box_SpawnAI_8.Out", "box_SpawnAI_23.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_1();
    l0 = self.box_IndexList_v2_1;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|140721127", "140721127", "InitialEnemySpawnController", "box_OutputOrder_v2_51.Out", "box_IndexList_v2_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_54();
    l0 = self.box_EntityStatusListener_54;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|280677535", "280677535", "InitialEnemySpawnController", "box_OutputOrder_v2_51.Out", "box_EntityStatusListener_54.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_41();
    l0 = self.box_SpawnAI_39;
    l1 = self.box_SpawnAI_41;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|658593232", "658593232", "InitialEnemySpawnController", "box_SpawnAI_39.Out", "box_SpawnAI_41.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_53_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_47();
    l0 = self.box_EntityStatusListener_53;
    l1 = self.box_ProximityTrigger_v3_47;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|635876466", "635876466", "InitialEnemySpawnController", "box_EntityStatusListener_53.Loaded", "box_ProximityTrigger_v3_47.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_44();
    l0 = self.box_SpawnAI_41;
    l1 = self.box_SpawnAI_44;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1378118127", "1378118127", "InitialEnemySpawnController", "box_SpawnAI_41.Out", "box_SpawnAI_44.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|472734843", "472734843", "InitialEnemySpawnController", "box_OutputOrder_v2_62.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_63();
    l0 = self.box_SpawnAI_63;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|494126180", "494126180", "InitialEnemySpawnController", "box_OutputOrder_v2_62.Out", "box_SpawnAI_63.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_40();
    l0 = self.box_SpawnAI_36;
    l1 = self.box_SpawnAI_40;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1044439289", "1044439289", "InitialEnemySpawnController", "box_SpawnAI_36.Out", "box_SpawnAI_40.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_1_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_30();
    l0 = self.box_IndexList_v2_1;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1706617045", "1706617045", "InitialEnemySpawnController", "box_IndexList_v2_1.Output", "box_Print_v2_30.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_1_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_1;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1686367892", "1686367892", "InitialEnemySpawnController", "box_IndexList_v2_1.Output", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_1_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = self.box_IndexList_v2_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|773896901", "773896901", "InitialEnemySpawnController", "box_IndexList_v2_1.Output", "box_OutputOrder_v2_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_14();
    l0 = self.box_SpawnAI_22;
    l1 = self.box_SpawnAI_14;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|88699706", "88699706", "InitialEnemySpawnController", "box_SpawnAI_22.Out", "box_SpawnAI_14.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_SpawnAI_18;
    l1 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|559643080", "559643080", "InitialEnemySpawnController", "box_SpawnAI_18.Out", "box_SpawnAI_15.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_64_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|610527917", "610527917", "InitialEnemySpawnController", "box_OutputOrder_v2_64.Out", "box_MultipleOR_34.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_64_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_6();
    l0 = self.box_SpawnAI_6;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|162473622", "162473622", "InitialEnemySpawnController", "box_OutputOrder_v2_64.Out", "box_SpawnAI_6.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_35();
    l0 = self.box_SpawnAI_26;
    l1 = self.box_SpawnAI_35;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2134844481", "2134844481", "InitialEnemySpawnController", "box_SpawnAI_26.Out", "box_SpawnAI_35.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_38();
    l0 = self.box_SpawnAI_37;
    l1 = self.box_SpawnAI_38;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|917405984", "917405984", "InitialEnemySpawnController", "box_SpawnAI_37.Out", "box_SpawnAI_38.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_25();
    l0 = self.box_SpawnAI_14;
    l1 = self.box_SpawnAI_25;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1535290563", "1535290563", "InitialEnemySpawnController", "box_SpawnAI_14.Out", "box_SpawnAI_25.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_48_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_ProximityTrigger_v3_48;
    l1 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|70855111", "70855111", "InitialEnemySpawnController", "box_ProximityTrigger_v3_48.Enter", "box_SpawnAI_17.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_SpawnAI_40;
    l1 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|717674278", "717674278", "InitialEnemySpawnController", "box_SpawnAI_40.Out", "box_SpawnAI_43.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_VehicleModifier_v2_68_OnSetEngineDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_69();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1937924385", "1937924385", "InitialEnemySpawnController", "box_VehicleModifier_v2_68.OnSetEngineDisabled", "box_Print_v2_69.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionAckTriggerListener_58_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_57();
    l0 = self.box_MissionAckTriggerListener_58;
    l1 = self.box_SpawnAI_57;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1949732086", "1949732086", "InitialEnemySpawnController", "box_MissionAckTriggerListener_58.Enter", "box_SpawnAI_57.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_63_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_65();
    l0 = self.box_SpawnAI_63;
    l1 = self.box_SpawnAI_65;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|322263195", "322263195", "InitialEnemySpawnController", "box_SpawnAI_63.Out", "box_SpawnAI_65.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_28();
    l0 = self.box_IndexList_v2_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1796576815", "1796576815", "InitialEnemySpawnController", "box_OutputOrder_v2_52.Out", "box_IndexList_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_55();
    l0 = self.box_EntityStatusListener_55;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1803031862", "1803031862", "InitialEnemySpawnController", "box_OutputOrder_v2_52.Out", "box_EntityStatusListener_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109392383511627885",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_2()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108632066877823804",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_54()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109119660489200902",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_3()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108100553677208",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_65()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108103045093842",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_13()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108302831439066121",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|198596298");
    l0:SetConnections({
        -- OnSetEngineDisabled,
        [12] = self.f_box_VehicleModifier_v2_66_OnSetEngineDisabled,
    });
    params = {
        -- targets,
        [0] = "2107913281378189573",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_45()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109008406204398274",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_25()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108062840592611",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|243045590");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 30,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Not possible case (Package in Area B in NORMAL difficult). Check setup.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_38()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108103045093842",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_42()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109392394028845220",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109176697384339251",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_44()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109007342698771352",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108062567962817",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_61()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109394005553842951",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|488074112");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_10()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108617503711175491",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_56()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_PlayerSpawnPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108062567962817",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|717369410");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_4()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108062301624479",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108098559285626",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108062452619440",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_28()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109119641811965182",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109119641811965182",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|976007167");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_57()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109308443343984524",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108089392634169",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107913277192274029",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_6()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108062301624479",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109392394028845220",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1122314506");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 30,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Not possible case (Package in Area A in HARD difficult). Check setup.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_12()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_PackagePositionIndex,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_35()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107913277192274029",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_47()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109119655600739586",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_9()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108089392634169",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108100553677208",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1303914468");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_39()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109008009559553993",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_53()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2109119655600739586",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108103045093842",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1469039297");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Vehicle is broken! You can't drive it!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_41()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109008289904736768",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1495915514");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_36()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108100553677208",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_1()
    local params;
    params = {
        -- Index,
        [0] = Globals.Coast_C2_CTP_010_Main_Enemy.i_Difficulty,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108062725249234",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_18()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109392383511627885",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1671230184");
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
                [0] = self.f_box_OutputOrder_v2_64_Out_0,
                [1] = self.f_box_OutputOrder_v2_64_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108062725249234",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_37()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108089392634169",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_14()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109380632493688924",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_48()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109119660489200902",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1932227239");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Spawn in water tower.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_11()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109394005553842951",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_40()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108108062567962817",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|1983924905");
    l0:SetConnections({
        -- OnSetEngineDisabled,
        [12] = self.f_box_VehicleModifier_v2_68_OnSetEngineDisabled,
    });
    params = {
        -- targets,
        [0] = "2107913281378189573",
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_58()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2109176697384339251",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2039012228");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 30,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Not possible case (Package in Area A in NORMAL difficult). Check setup.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2080146183");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "orange",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Vehicle is broken! You can't drive it!",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_17()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109008408930695901",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_63()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109394005553842951",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2128282383");
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
                [0] = self.f_box_OutputOrder_v2_52_Out_0,
                [1] = self.f_box_OutputOrder_v2_52_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Coast\\Expeditions\\C2\\Coast_C2_CTP_010_Main_Enemy.domino|@InitialEnemySpawnController|2130383306");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 30,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Not possible case (Package in Area C in HARD difficult). Check setup.",
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
