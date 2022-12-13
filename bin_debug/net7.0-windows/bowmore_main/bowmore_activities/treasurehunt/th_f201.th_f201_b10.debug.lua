LUAC -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/treasurehunt/th_f201.domino
-- User graph: TH_F201_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2175916564.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3501585948.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2689348259.bnk]], "CSoundResource");
        cboxRes:LoadResource([[467837613.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/TreasureHunt/TH_F201.TH_F201_B10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "OnLeaveZone",
            },
        },
        controlInCount = 2,
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua")] = {
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
                name = "PlayerDetected",
                delayed = false,
            },
            [2] = {
                name = "Started",
                delayed = false,
            },
            [3] = {
                name = "Success",
                delayed = false,
            },
            [4] = {
                name = "TimerExpired",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bIsTrigger",
                type = "bool",
            },
            [2] = {
                name = "bRequiresAllPlayer",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [5] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [6] = {
                name = "eMarker",
                type = "entity",
            },
            [7] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [8] = {
                name = "eTrigger",
                type = "entity",
            },
            [9] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [10] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [11] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [12] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 13,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityAcknowledgeGate.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Acknowledged",
                delayed = true,
            },
            [1] = {
                name = "Reloaded",
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityEnd.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EndHardSave",
            },
            [1] = {
                name = "EndNoSave",
            },
            [2] = {
                name = "EndSoftSave",
            },
        },
        controlInCount = 3,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/ActivityInitialized.lua")] = {
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
                delayed = true,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Retry",
            },
        },
        controlInCount = 1,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "ReasonId",
                type = "oasis",
            },
            [1] = {
                name = "Reload",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
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
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
                delayed = false,
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
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SendEvent",
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
                name = "EventName",
                type = "string",
            },
            [1] = {
                name = "IntensityModifier",
                type = "float",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    self._name = "TH_F201_B10";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10";
    self.VehicleSpeed = 0;
    self.VehicleSpeedforSound = 0.1;
    self.vehiclespeedsound = 1;
    self.box_SoundModifier_v2_21 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|41994848");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|141812455");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_SpawnAI_34 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|149064065");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_24 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|190551520");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_24_Enter,
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|348303599");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_SoundModifier_v2_22 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|360611305");
    l0:SetConnections({
    });
    self.box_Reach_GoTo_v3_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|405759958");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_7_Success,
    });
    self.box_ProximityTrigger_v3_8 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|496856118");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_8_Enabled,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_8_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_8_OnOccupied,
    });
    self.box_StartCelebration_3 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|561608336");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_3_Ended,
    });
    self.box_SoundModifier_v2_17 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|580536322");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_29 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|961211885");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_29_Enter,
    });
    self.box_ProximityTrigger_v3_20 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|965430998");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_20_Enter,
    });
    self.box_Reach_GoTo_v3_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v3.debug.lua");
    l0 = self.box_Reach_GoTo_v3_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v3_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|974500195");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_Reach_GoTo_v3_15_Started,
        -- Success,
        [3] = self.f_box_Reach_GoTo_v3_15_Success,
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|995960836");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_ProximityTrigger_v3_23 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1080398943");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_23_Enter,
    });
    self.box_RemoveEntity_v2_32 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1110753556");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_32_Out,
    });
    self.box_RemoveEntity_v2_10 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1390405419");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_10_Out,
    });
    self.box_ProximityTrigger_v3_19 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1398600788");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_19_Enter,
    });
    self.box_ProximityTrigger_v3_27 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1477996432");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_27_Enter,
    });
    self.box_ProximityTrigger_v3_33 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1648949414");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_33_Enter,
    });
    self.box_SoundModifier_v2_16 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1923438485");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v3_13 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1951258186");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_13_Enter,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1959818296");
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
    self.box_RemoveEntity_v2_2 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|2050001313");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_2_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1837771818", "1837771818", "TH_F201_B10", "In", "box_OutputOrder_v2_12.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_v2_14();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|758038118", "758038118", "TH_F201_B10", "OnLeaveZone", "box_ActivityRetry_v2_14.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|474104008", "474104008", "TH_F201_B10", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1202209680", "1202209680", "TH_F201_B10", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_24_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_24;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1574778879", "1574778879", "TH_F201_B10", "box_ProximityTrigger_v3_24.Enter", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1130512607", "1130512607", "TH_F201_B10", "box_MultipleOR_25.Out", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_8();
    l0 = self.box_ProximityTrigger_v3_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1916325307", "1916325307", "TH_F201_B10", "box_OutputOrder_v2_12.Out", "box_ProximityTrigger_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1205432070", "1205432070", "TH_F201_B10", "box_OutputOrder_v2_12.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_12_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_13();
    l0 = self.box_ProximityTrigger_v3_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1784940452", "1784940452", "TH_F201_B10", "box_OutputOrder_v2_12.Out", "box_ProximityTrigger_v3_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_19();
    l0 = self.box_ProximityTrigger_v3_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|843557680", "843557680", "TH_F201_B10", "box_OutputOrder_v2_12.Out", "box_ProximityTrigger_v3_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_20();
    l0 = self.box_ProximityTrigger_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|2131624567", "2131624567", "TH_F201_B10", "box_OutputOrder_v2_12.Out", "box_ProximityTrigger_v3_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_7_Success()
    local l0, l1;
    l0 = self.box_Reach_GoTo_v3_7;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|495356881", "495356881", "TH_F201_B10", "box_Reach_GoTo_v3_7.Success", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ProximityTrigger_v3_8_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_11();
    l0 = self.box_ProximityTrigger_v3_8;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1263694023", "1263694023", "TH_F201_B10", "box_ProximityTrigger_v3_8.Enabled", "box_VehicleModifier_v2_11.SetAsIndestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsIndestructable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_8_OnEmpty()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_11();
    l0 = self.box_ProximityTrigger_v3_8;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|470886457", "470886457", "TH_F201_B10", "box_ProximityTrigger_v3_8.OnEmpty", "box_VehicleModifier_v2_11.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(6, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_8_OnOccupied()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_11();
    l0 = self.box_ProximityTrigger_v3_8;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|2106140113", "2106140113", "TH_F201_B10", "box_ProximityTrigger_v3_8.OnOccupied", "box_VehicleModifier_v2_11.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_3_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_32();
    l0 = self.box_StartCelebration_3;
    l1 = self.box_RemoveEntity_v2_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|421662843", "421662843", "TH_F201_B10", "box_StartCelebration_3.Ended", "box_RemoveEntity_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_29_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_30();
    l0 = self.box_ProximityTrigger_v3_29;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|450239357", "450239357", "TH_F201_B10", "box_ProximityTrigger_v3_29.Enter", "box_ParticleSystem_v3_30.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_20_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_22();
    l0 = self.box_ProximityTrigger_v3_20;
    l1 = self.box_SoundModifier_v2_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|111919975", "111919975", "TH_F201_B10", "box_ProximityTrigger_v3_20.Enter", "box_SoundModifier_v2_22.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_24();
    l0 = self.box_ProximityTrigger_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|319934519", "319934519", "TH_F201_B10", "box_OutputOrder_v2_28.Out", "box_ProximityTrigger_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_15();
    l0 = self.box_Reach_GoTo_v3_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|844689818", "844689818", "TH_F201_B10", "box_OutputOrder_v2_28.Out", "box_Reach_GoTo_v3_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_29();
    l0 = self.box_Reach_GoTo_v3_15;
    l1 = self.box_ProximityTrigger_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|301017249", "301017249", "TH_F201_B10", "box_Reach_GoTo_v3_15.Started", "box_ProximityTrigger_v3_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v3_15_Success()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_3();
    l0 = self.box_Reach_GoTo_v3_15;
    l1 = self.box_StartCelebration_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1385317490", "1385317490", "TH_F201_B10", "box_Reach_GoTo_v3_15.Success", "box_StartCelebration_3.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = self.box_ActivityInitialized_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1766420502", "1766420502", "TH_F201_B10", "box_ActivityInitialized_6.Out", "box_OutputOrder_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_23_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_ProximityTrigger_v3_23;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1865601975", "1865601975", "TH_F201_B10", "box_ProximityTrigger_v3_23.Enter", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_2();
    l0 = self.box_RemoveEntity_v2_32;
    l1 = self.box_RemoveEntity_v2_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1322681819", "1322681819", "TH_F201_B10", "box_RemoveEntity_v2_32.Out", "box_RemoveEntity_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_24();
    l0 = self.box_ProximityTrigger_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|344552137", "344552137", "TH_F201_B10", "box_OutputOrder_v2_9.Out", "box_ProximityTrigger_v3_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_27();
    l0 = self.box_ProximityTrigger_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1124406042", "1124406042", "TH_F201_B10", "box_OutputOrder_v2_9.Out", "box_ProximityTrigger_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v3_7();
    l0 = self.box_Reach_GoTo_v3_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1406308990", "1406308990", "TH_F201_B10", "box_OutputOrder_v2_9.Out", "box_Reach_GoTo_v3_7.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_23();
    l0 = self.box_ProximityTrigger_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|24233786", "24233786", "TH_F201_B10", "box_OutputOrder_v2_9.Out", "box_ProximityTrigger_v3_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_35();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1264782479", "1264782479", "TH_F201_B10", "box_OutputOrder_v2_9.Out", "box_GetPlayerGroup_v2_35.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_36();
    l0 = self.box_RemoveEntity_v2_10;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|122673244", "122673244", "TH_F201_B10", "box_RemoveEntity_v2_10.Out", "box_ParticleSystem_v3_36.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_30_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_31();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|34334376", "34334376", "TH_F201_B10", "box_ParticleSystem_v3_30.Started", "box_ParticleSystem_v3_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_19_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_21();
    l0 = self.box_ProximityTrigger_v3_19;
    l1 = self.box_SoundModifier_v2_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1192009304", "1192009304", "TH_F201_B10", "box_ProximityTrigger_v3_19.Enter", "box_SoundModifier_v2_21.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_27_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_27;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|738756599", "738756599", "TH_F201_B10", "box_ProximityTrigger_v3_27.Enter", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_33_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_34();
    l0 = self.box_ProximityTrigger_v3_33;
    l1 = self.box_SpawnAI_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|2125278003", "2125278003", "TH_F201_B10", "box_ProximityTrigger_v3_33.Enter", "box_SpawnAI_34.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_13_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_ProximityTrigger_v3_13;
    l1 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|92277112", "92277112", "TH_F201_B10", "box_ProximityTrigger_v3_13.Enter", "box_SoundModifier_v2_16.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_10();
    l0 = self.box_RemoveEntity_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1980257814", "1980257814", "TH_F201_B10", "box_OutputOrder_v2_18.Out", "box_RemoveEntity_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_17();
    l0 = self.box_SoundModifier_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1386959408", "1386959408", "TH_F201_B10", "box_OutputOrder_v2_18.Out", "box_SoundModifier_v2_17.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_18_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_26();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1966804344", "1966804344", "TH_F201_B10", "box_OutputOrder_v2_18.Out", "box_CameraShakeAndRumble_V2_26.SendEvent", clone:GetLuaBox(), l0:GetLuaBox());
    -- SendEvent
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|87605351", "87605351", "TH_F201_B10", "box_MultipleOR_5.Out", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_RemoveEntity_v2_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_1();
    l0 = self.box_RemoveEntity_v2_2;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1791879576", "1791879576", "TH_F201_B10", "box_RemoveEntity_v2_2.Out", "box_ActivityEnd_1.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_35_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_35_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_33();
    l0 = self.box_ProximityTrigger_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1972835083", "1972835083", "TH_F201_B10", "box_GetPlayerGroup_v2_35.Out", "box_ProximityTrigger_v3_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_SoundModifier_v2_21()
    local params;
    params = {
        -- Pawns,
        [0] = "2109650937313234464",
        -- SoundId,
        [1] = "467837613",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_34()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107753697432836111",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|159204862");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108986864007388587",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_22()
    local params;
    params = {
        -- Pawns,
        [0] = "2109650939647364642",
        -- SoundId,
        [1] = "3501585948",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|373769792");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
                [2] = self.f_box_OutputOrder_v2_12_Out_2,
                [3] = self.f_box_OutputOrder_v2_12_Out_3,
                [4] = self.f_box_OutputOrder_v2_12_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_7()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2107286053590146738",
        -- eTrigger,
        [8] = "2107077451124321467",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "THF201_Objective_01",
            id = "730279",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107367311435372013",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_3()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_17()
    local params;
    params = {
        -- Pawns,
        [0] = "2109512983347463802",
        -- SoundId,
        [1] = "2689348259",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|846286160");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2107132408408054655",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109318265302949574",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108447426437190406",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|970645482");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v3_15()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = true,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresAllPlayer,
        [2] = false,
        -- bRequiresObjective,
        [3] = true,
        -- bUse2d_ProximityCheck,
        [4] = true,
        -- bUseDetectionModifier,
        [5] = false,
        -- eMarker,
        [6] = "2107077470543948989",
        -- eTrigger,
        [8] = "2108017982885076647",
        -- fDistanceFromTarget,
        [9] = 5,
        -- fObjectiveTimer,
        [10] = 0,
        -- opt_Objective,
        [12] = {
            section = "Objectives",
            item = "THF201_Objective_02",
            id = "730280",
        },
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|989561718");
    l0:SetConnections({
    });
    params = {
        -- EventName,
        [0] = "RockslideRumble",
        -- IntensityModifier,
        [1] = 0.7,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2107078542719201263",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_32()
    local params;
    params = {
        -- Group,
        [0] = "2108889146584997271",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1120712889");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 5,
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
                [3] = self.f_box_OutputOrder_v2_9_Out_3,
                [4] = self.f_box_OutputOrder_v2_9_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1272911626");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1360788972");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109094103741373842",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1378417499");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2109083437762616664",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_10()
    local params;
    params = {
        -- Group,
        [0] = "2107078550531092466",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1398444544");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_30_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2109083467298905434",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_19()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108447415607497476",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_27()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109318265302949574",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = l0:GetDataOutValue(0),
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109677003023061320",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_16()
    local params;
    params = {
        -- Pawns,
        [0] = "2109591952222591651",
        -- SoundId,
        [1] = "2175916564",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108323050989571213",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|1952972378");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
                [2] = self.f_box_OutputOrder_v2_18_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_2()
    local params;
    params = {
        -- Group,
        [0] = "2107077409346956470",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\TreasureHunt\\TH_F201.domino|@TH_F201_B10|2142564542");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_35_Out,
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_35_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityTrigger_v3_33;
    l1:GetLuaBox().colliderFilterId = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="OnLeaveZone" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut />
	<DatasIn />
	<DatasOut />
</DominoMetadata>
