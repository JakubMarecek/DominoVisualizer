LUACu�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_expeditions/exp_canyon/expeditions/h2/canyon_h2_ctp_010_main.domino
-- User graph: Canyon_H2_CTP_010_SetupBasedonDifficulty
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="PackageSpawnerNormal" Type="Nomad|entity{}" />
    <DataIn Name="PackageSpawnerHard" Type="Nomad|entity{}" />
    <DataIn Name="PackageSpawnerExpert" Type="Nomad|entity{}" />
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetInteger_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_ExtractionBarrelsSpawn.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.Canyon_H2_CTP_010_Main = nil;
    Globals.Canyon_H2_CTP_010_Main = {
        iExtractionPOIIndex = 0,
        iPackagePositionIndex = 0,
        iDifficulty = 0,
        iPlayerSpawnPOIIndex = 0,
        ePackageSpawner = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_SetupBasedonDifficulty.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
            [1] = {
                name = "RandomizedOnExpert",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "PackageSpawnerExpert",
                type = "entity",
            },
            [1] = {
                name = "PackageSpawnerHard",
                type = "entity",
            },
            [2] = {
                name = "PackageSpawnerNormal",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "PackageSpawnerToSet",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "On_Activity_Reloaded",
            },
            [1] = {
                name = "Spawn_Entities_from_Database",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "All_Entities_Spawned",
                delayed = false,
            },
            [1] = {
                name = "Immediate_Out",
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua")] = {
        stateless = false,
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
            [3] = {
                name = "Enable",
            },
        },
        controlInCount = 4,
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
            [3] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "entity",
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
    metadataTable[GetPathID("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_ExtractionBarrelsSpawn.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "ExtractionPositionID",
                type = "int",
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
    self._name = "Canyon_H2_CTP_010_SetupBasedonDifficulty";
    self._elementPathId = "DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty";
    self.Finished = DummyFunction;
    self.RandomizedOnExpert = DummyFunction;
    self.ePackageSpawner = nil;
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|340879539");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_21_Success,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|404421537");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_28_Success,
    });
    self.box_SpawnAI_31 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|462463782");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_31_Success,
    });
    self.box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34 = cbox:CreateBox("Domino/user/Bowmore_Expeditions/Exp_Canyon/Expeditions/H2/Canyon_H2_CTP_010_Main.Canyon_H2_CTP_010_ExtractionBarrelsSpawn.debug.lua");
    l0 = self.box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|681562749");
    l0:SetConnections({
        -- Success,
        [0] = self.f_box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34_Success,
    });
    self.box_SpawnAI_30 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|719888233");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_30_Success,
    });
    self.box_SpawnAI_32 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|720043120");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_32_Success,
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|732245871");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_16_Success,
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|806571471");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_22_Success,
    });
    self.box_SpawnAI_27 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|891971588");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_27_Success,
    });
    self.box_SpawnAI_15 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1127933662");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_15_Success,
    });
    self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Expeditions_Randomization.Brick_Exp_SpawnFrom_RandomizationDatabase.debug.lua");
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Exp_SpawnFrom_RandomizationDatabase_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1179533554");
    l0:SetConnections({
        -- All Entities Spawned,
        [0] = self.f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_24_All_Entities_Spawned,
    });
    self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1237572571");
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
        [0] = self.f_box_MultipleOR_10_Out,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1265846338");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_20_Success,
    });
    self.box_BaseMissionBlock_v2_11 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1297118022");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_11_Activated,
    });
    self.box_BaseMissionBlock_v2_12 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1421101700");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_12_Activated,
    });
    self.box_MultipleOR_33 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1502567848");
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
        [0] = self.f_box_MultipleOR_33_Out,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1554807687");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_19_Success,
    });
    self.box_SpawnAI_17 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1725426657");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_17_Success,
    });
    self.box_Random_29 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1905345751");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 3,
        },
        dataIn = {
            [1] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Random_29_Output_0,
                [1] = self.f_box_Random_29_Output_1,
                [2] = self.f_box_Random_29_Output_2,
            },
            count = 3,
        },
    });
    self.box_SpawnAI_18 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1907789783");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_18_Success,
    });
    self.box_SpawnAI_23 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|2111167614");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_23_Success,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Compare_Integers_3();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|465148035", "465148035", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "In", "box_Compare_Integers_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_21_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_23();
    l0 = self.box_SpawnAI_21;
    l1 = self.box_SpawnAI_23;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1240134580", "1240134580", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_21.Success", "box_SpawnAI_23.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_28_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_28;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1388988219", "1388988219", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_28.Success", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_31_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_31;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|419265272", "419265272", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_31.Success", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_13_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_15();
    l0 = self.box_SpawnAI_15;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|610927019", "610927019", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_MissionBlockLayer_13.Activated", "box_SpawnAI_15.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SetInteger_v2_5_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_5_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_1();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1541396460", "1541396460", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SetInteger_v2_5.Out", "box_SetEntity_v2_1.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_9_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_7();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1127073176", "1127073176", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SetInteger_v2_9.Out", "box_SetInteger_v2_7.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34_Success()
    local l0;
    l0 = self.box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|375258151", "375258151", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34.Success", "RandomizedOnExpert", l0:GetLuaBox(), self);
    self:RandomizedOnExpert();
end;

function export:f_box_SpawnAI_30_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_30;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|672086128", "672086128", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_30.Success", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SpawnAI_32_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_32;
    l1 = self.box_MultipleOR_33;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|136013753", "136013753", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_32.Success", "box_MultipleOR_33.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SpawnAI_16_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_17();
    l0 = self.box_SpawnAI_16;
    l1 = self.box_SpawnAI_17;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|607172912", "607172912", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_16.Success", "box_SpawnAI_17.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_22_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_SpawnAI_22;
    l1 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1369116278", "1369116278", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_22.Success", "box_SpawnAI_18.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_14_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|169172667", "169172667", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_MissionBlockLayer_14.Activated", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_27_Success()
    local l0, l1;
    l0 = self.box_SpawnAI_27;
    l1 = self.box_MultipleOR_10;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1836171762", "1836171762", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_27.Success", "box_MultipleOR_10.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetInteger_v2_7_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_8();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1666063066", "1666063066", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SetInteger_v2_7.Out", "box_SetInteger_v2_8.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_26_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_29();
    l0 = self.box_Random_29;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1971276506", "1971276506", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_MissionBlockLayer_26.Activated", "box_Random_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_3_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_9();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1152748638", "1152748638", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_Compare_Integers_3.A_eq_B", "box_SetInteger_v2_9.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_3_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_24;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1662529975", "1662529975", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_Compare_Integers_3.A_gt_B", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_24.Spawn Entities from Database", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn Entities from Database
    l0:Exec(1, {
    });
end;

function export:f_box_Compare_Integers_3_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_2();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|664485149", "664485149", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_Compare_Integers_3.A_lt_B", "box_SetInteger_v2_2.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_6_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_14();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|2011442366", "2011442366", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SetEntity_v2_6.Out", "box_MissionBlockLayer_14.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_15_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_SpawnAI_15;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|930349184", "930349184", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_15.Success", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Brick_Exp_SpawnFrom_RandomizationDatabase_24_All_Entities_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetEntity_v2_25();
    l0 = self.box_Brick_Exp_SpawnFrom_RandomizationDatabase_24;
    l1 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|2118186346", "2118186346", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_Brick_Exp_SpawnFrom_RandomizationDatabase_24.All Entities Spawned", "box_SetEntity_v2_25.FromEntity", l0:GetLuaBox(), l1:GetLuaBox());
    -- FromEntity
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_2_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_4();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1913704924", "1913704924", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SetInteger_v2_2.Out", "box_SetInteger_v2_4.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetInteger_v2_4_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetInteger_v2_5();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|597610531", "597610531", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SetInteger_v2_4.Out", "box_SetInteger_v2_5.FromInteger", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromInteger
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_11();
    l0 = self.box_MultipleOR_10;
    l1 = self.box_BaseMissionBlock_v2_11;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|204062466", "204062466", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_MultipleOR_10.Out", "box_BaseMissionBlock_v2_11.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_20_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1027238477", "1027238477", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_20.Success", "box_SpawnAI_19.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_11_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_12();
    l0 = self.box_BaseMissionBlock_v2_11;
    l1 = self.box_BaseMissionBlock_v2_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|803567437", "803567437", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_BaseMissionBlock_v2_11.Activated", "box_BaseMissionBlock_v2_12.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_BaseMissionBlock_v2_12_Activated()
    local l0;
    l0 = self.box_BaseMissionBlock_v2_12;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1365718925", "1365718925", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_BaseMissionBlock_v2_12.Activated", "Finished", l0:GetLuaBox(), self);
    self:Finished();
end;

function export:f_box_SetInteger_v2_8_Out()
    local params, l0;
    self:OnExit_box_SetInteger_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_6();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1180885146", "1180885146", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SetInteger_v2_8.Out", "box_SetEntity_v2_6.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34();
    l0 = self.box_MultipleOR_33;
    l1 = self.box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|2108105424", "2108105424", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_MultipleOR_33.Out", "box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_19_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_19;
    l1 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|706465362", "706465362", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_19.Success", "box_SpawnAI_28.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_1_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_13();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1657667318", "1657667318", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SetEntity_v2_1.Out", "box_MissionBlockLayer_13.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_17_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_27();
    l0 = self.box_SpawnAI_17;
    l1 = self.box_SpawnAI_27;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|464177461", "464177461", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_17.Success", "box_SpawnAI_27.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_29_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_30();
    l0 = self.box_Random_29;
    l1 = self.box_SpawnAI_30;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1759324266", "1759324266", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_Random_29.Output", "box_SpawnAI_30.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_29_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_31();
    l0 = self.box_Random_29;
    l1 = self.box_SpawnAI_31;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1471098320", "1471098320", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_Random_29.Output", "box_SpawnAI_31.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_29_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_32();
    l0 = self.box_Random_29;
    l1 = self.box_SpawnAI_32;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|959859304", "959859304", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_Random_29.Output", "box_SpawnAI_32.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_18_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_SpawnAI_18;
    l1 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|2118539520", "2118539520", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_18.Success", "box_SpawnAI_20.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_23_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_SpawnAI_23;
    l1 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|230799549", "230799549", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SpawnAI_23.Success", "box_SpawnAI_22.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SetEntity_v2_25_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_25_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_26();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1985290259", "1985290259", "Canyon_H2_CTP_010_SetupBasedonDifficulty", "box_SetEntity_v2_25.Out", "box_MissionBlockLayer_26.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064963095009227",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109189936763640955",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_31()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109189936763640955",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|527480387");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_13_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "99217908682014755",
        -- missionLayerId,
        [1] = "117232307191581504",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|615387485");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_5_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|665060307");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_9_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_Canyon_H2_CTP_010_ExtractionBarrelsSpawn_34()
    local params;
    params = {
        -- ExtractionPositionID,
        [0] = Globals.Canyon_H2_CTP_010_Main.iExtractionPOIIndex,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_30()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109189928702188630",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_32()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109189942486768788",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064907853928332",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064929618171806",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|819246814");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_14_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "99217908682014755",
        -- missionLayerId,
        [1] = "135246705706874050",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_27()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109189928702188630",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|904669509");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_7_Out,
    });
    params = {
        -- Integer,
        [1] = 2,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|916587531");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_26_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "63189111650899258",
        -- missionLayerId,
        [1] = "27160318258353367",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1030881224");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_3_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_3_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_3_A_lt_B,
    });
    params = {
        -- A,
        [0] = Globals.Canyon_H2_CTP_010_Main.iDifficulty,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1095015880");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_6_Out,
    });
    params = {
        -- Entity,
        [0] = self.PackageSpawnerHard,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_15()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064963095009227",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1206548614");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_2_Out,
    });
    params = {
        -- Integer,
        [1] = 1,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1222283487");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_4_Out,
    });
    params = {
        -- Integer,
        [1] = 3,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064950442891197",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_11()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160314631867102",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_12()
    local params;
    params = {
        -- missionBlockId,
        [0] = "45174713141385647",
    };
    return params;
end;

function export:OnEnter_box_SetInteger_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetInteger_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1479456069");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetInteger_v2_8_Out,
    });
    params = {
        -- Integer,
        [1] = 5,
        -- UseFloor,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064940294772658",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|1683244780");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_1_Out,
    });
    params = {
        -- Entity,
        [0] = self.PackageSpawnerNormal,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_17()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064929618171806",
    };
    return params;
end;

function export:OnEnter_box_Random_29()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
        -- Probability,
        [1] = {
            connections = {
            },
            count = 3,
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_18()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064972054042584",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_23()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2109064907853928332",
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_Expeditions\\Exp_Canyon\\Expeditions\\H2\\Canyon_H2_CTP_010_Main.domino|@Canyon_H2_CTP_010_SetupBasedonDifficulty|2140301221");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_25_Out,
    });
    params = {
        -- Entity,
        [0] = self.PackageSpawnerExpert,
    };
    return params;
end;

function export:OnExit_box_SetInteger_v2_5_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_H2_CTP_010_Main.iPackagePositionIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_9_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_H2_CTP_010_Main.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_H2_CTP_010_Main.iExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.PackageSpawnerToSet = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_H2_CTP_010_Main.iPlayerSpawnPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_H2_CTP_010_Main.iExtractionPOIIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetInteger_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetInteger_v2.lua")];
    Globals.Canyon_H2_CTP_010_Main.iPackagePositionIndex = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.PackageSpawnerToSet = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_25_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.PackageSpawnerToSet = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
function export:RandomizedOnExpert()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Finished" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="RandomizedOnExpert" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="PackageSpawnerExpert" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="PackageSpawnerHard" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="PackageSpawnerNormal" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="PackageSpawnerToSet" AnchorDynType="0" DataTypeID="entity" />
	</DatasOut>
</DominoMetadata>
