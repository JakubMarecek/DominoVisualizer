LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_e601.domino
-- User graph: TH_E601_B10
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/RequestTutorial_v3.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.TH_E601 = nil;
    Globals.TH_E601 = {
        ePlayer = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/TreasureHunt/TH_E601.TH_E601_B10.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua")] = {
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
                name = "bRequiresObjective",
                type = "bool",
            },
            [3] = {
                name = "bUse2d_ProximityCheck",
                type = "bool",
            },
            [4] = {
                name = "bUseDetectionModifier",
                type = "bool",
            },
            [5] = {
                name = "eMarker",
                type = "entity",
            },
            [6] = {
                name = "eRadiusTarget",
                type = "entity",
            },
            [7] = {
                name = "eTrigger",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "fObjectiveTimer",
                type = "float",
            },
            [10] = {
                name = "gEnemyGroup",
                type = "group",
            },
            [11] = {
                name = "opt_Objective",
                type = "oasis",
            },
        },
        dataInCount = 12,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityRetry.lua")] = {
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
            [2] = {
                name = "ShowHud",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "CallForceNormalEnd",
            },
            [1] = {
                name = "CallInterrupt",
            },
            [2] = {
                name = "Disable",
            },
            [3] = {
                name = "Enable",
            },
            [4] = {
                name = "Use",
            },
        },
        controlInCount = 5,
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
                name = "ForceNormalEndCalled",
                delayed = false,
            },
            [3] = {
                name = "InterruptCalled",
                delayed = false,
            },
            [4] = {
                name = "UseCalled",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/NavLinkModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Deactivate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Deactivated",
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
    metadataTable[GetPathID("Domino/System/AI/SetContextualStrategy.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetContextualStrategy",
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
                name = "ContextualStrategy",
                type = "entity",
            },
            [1] = {
                name = "Group",
                type = "group",
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
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
                name = "listenToGroupSizeChange",
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
    metadataTable[GetPathID("Domino/System/RequestTutorial_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "OnDisplayed",
                delayed = true,
            },
            [1] = {
                name = "OnHidden",
                delayed = true,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "RequestFailure",
                delayed = false,
            },
            [4] = {
                name = "RequestSuccess",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "bypassPreconditions",
                type = "bool",
            },
            [1] = {
                name = "tutorialdb",
                type = "database",
            },
        },
        dataInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "TH_E601_B10";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10";
    self.Egrapple = nil;
    self.Gplayer = nil;
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|17263103");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_22_Out,
    });
    self.box_RequestTutorial_v3_14 = cbox:CreateBox("Domino/System/RequestTutorial_v3.lua");
    l0 = self.box_RequestTutorial_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestTutorial_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|18075303");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_30 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|191531872");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_30_Enter,
    });
    self.box_PositionModifier_v2_28 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|268257562");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_28_StartOut,
    });
    self.box_SpawnAI_8 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|427140801");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_8_Out,
    });
    self.box_StartCelebration_2 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|601535434");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_2_Ended,
    });
    self.box_RemoveEntity_v2_1 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|801758003");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_1_Out,
    });
    self.box_EntityStatusListener_29 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|808701147");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_29_Loaded,
    });
    self.box_ProximityRadiusListener_v3_6 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|946272177");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_6_SomeoneNear,
    });
    self.box_PositionModifier_v2_24 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1264670129");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_10 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1266347635");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_10_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_10_Reloaded,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1320419054");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1640619430");
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
    self.box_Reach_GoTo_v2_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Reach_GoTo.Reach_GoTo_v2.debug.lua");
    l0 = self.box_Reach_GoTo_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Reach_GoTo_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1690405586");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_Reach_GoTo_v2_17_Success,
    });
    self.box_NavLinkModifier_26 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1806315040");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_26_Deactivated,
    });
    self.box_ProximityTrigger_v2_4 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|2074183442");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_4_Enter,
    });
    self.box_SpawnAI_27 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|2119540539");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_21 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|2127661840");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_21_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|782642385", "782642385", "TH_E601_B10", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|186848972", "186848972", "TH_E601_B10", "OnLeaveZone", "box_ActivityRetry_19.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_8();
    l0 = self.box_SpawnAI_22;
    l1 = self.box_SpawnAI_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1990700857", "1990700857", "TH_E601_B10", "box_SpawnAI_22.Out", "box_SpawnAI_8.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_30_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_ProximityTrigger_v2_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1583835033", "1583835033", "TH_E601_B10", "box_ProximityTrigger_v2_30.Enter", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_9_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_6();
    l0 = self.box_ProximityRadiusListener_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|529103309", "529103309", "TH_E601_B10", "box_GetPlayerGroup_v2_9.Out", "box_ProximityRadiusListener_v3_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_28_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_26();
    l0 = self.box_PositionModifier_v2_28;
    l1 = self.box_NavLinkModifier_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1840226501", "1840226501", "TH_E601_B10", "box_PositionModifier_v2_28.StartOut", "box_NavLinkModifier_26.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1702093882", "1702093882", "TH_E601_B10", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_29();
    l0 = self.box_EntityStatusListener_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1498516813", "1498516813", "TH_E601_B10", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_30();
    l0 = self.box_ProximityTrigger_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1847387560", "1847387560", "TH_E601_B10", "box_OutputOrder_v2_3.Out", "box_ProximityTrigger_v2_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1074521018", "1074521018", "TH_E601_B10", "box_SetContextualStrategy_33.Out", "box_Delay_v5_34.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_SpawnAI_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_27();
    l0 = self.box_SpawnAI_8;
    l1 = self.box_SpawnAI_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1269169777", "1269169777", "TH_E601_B10", "box_SpawnAI_8.Out", "box_SpawnAI_27.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_2_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_1();
    l0 = self.box_StartCelebration_2;
    l1 = self.box_RemoveEntity_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|687244822", "687244822", "TH_E601_B10", "box_StartCelebration_2.Ended", "box_RemoveEntity_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_31();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|251819394", "251819394", "TH_E601_B10", "box_OutputOrder_v2_36.Out", "box_UseContextualActionModifier_v3_31.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_33();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|419269370", "419269370", "TH_E601_B10", "box_OutputOrder_v2_36.Out", "box_SetContextualStrategy_33.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_12();
    l0 = self.box_RemoveEntity_v2_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|448437719", "448437719", "TH_E601_B10", "box_RemoveEntity_v2_1.Out", "box_ActivityEnd_12.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_29_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_28();
    l0 = self.box_EntityStatusListener_29;
    l1 = self.box_PositionModifier_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1912305549", "1912305549", "TH_E601_B10", "box_EntityStatusListener_29.Loaded", "box_PositionModifier_v2_28.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_6_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_20();
    l0 = self.box_ProximityRadiusListener_v3_6;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1728255346", "1728255346", "TH_E601_B10", "box_ProximityRadiusListener_v3_6.SomeoneNear", "box_UseContextualActionModifier_v3_20.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_31_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_32();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1260857477", "1260857477", "TH_E601_B10", "box_UseContextualActionModifier_v3_31.Enabled", "box_UseContextualActionModifier_v3_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_4();
    l0 = self.box_ProximityTrigger_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|648715721", "648715721", "TH_E601_B10", "box_OutputOrder_v2_15.Out", "box_ProximityTrigger_v2_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Reach_GoTo_v2_17();
    l0 = self.box_Reach_GoTo_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|344472320", "344472320", "TH_E601_B10", "box_OutputOrder_v2_15.Out", "box_Reach_GoTo_v2_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestTutorial_v3_14();
    l0 = self.box_RequestTutorial_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1225730229", "1225730229", "TH_E601_B10", "box_OutputOrder_v2_15.Out", "box_RequestTutorial_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_10_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_10;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1875426643", "1875426643", "TH_E601_B10", "box_ActivityAcknowledgeGate_10.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_10_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_10;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|384308504", "384308504", "TH_E601_B10", "box_ActivityAcknowledgeGate_10.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UseContextualActionModifier_v3_11_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_16();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1832806664", "1832806664", "TH_E601_B10", "box_UseContextualActionModifier_v3_11.Enabled", "box_UseContextualActionModifier_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_35();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1645703733", "1645703733", "TH_E601_B10", "box_Delay_v5_34.TimeElapsed", "box_HealthModifier_v2_35.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_20_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_25();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|9589939", "9589939", "TH_E601_B10", "box_UseContextualActionModifier_v3_20.Disabled", "box_UseContextualActionModifier_v3_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1601382431", "1601382431", "TH_E601_B10", "box_MultipleOR_5.Out", "box_ActivityInitialized_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1387545747", "1387545747", "TH_E601_B10", "box_OutputOrder_v2_13.Out", "box_SpawnAI_22.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_24();
    l0 = self.box_PositionModifier_v2_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1518155297", "1518155297", "TH_E601_B10", "box_OutputOrder_v2_13.Out", "box_PositionModifier_v2_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Reach_GoTo_v2_17_Success()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_2();
    l0 = self.box_Reach_GoTo_v2_17;
    l1 = self.box_StartCelebration_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1753838182", "1753838182", "TH_E601_B10", "box_Reach_GoTo_v2_17.Success", "box_StartCelebration_2.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_UseContextualActionModifier_v3_25_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_11();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1101748725", "1101748725", "TH_E601_B10", "box_UseContextualActionModifier_v3_25.Disabled", "box_UseContextualActionModifier_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_26_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_9();
    l0 = self.box_NavLinkModifier_26;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1863734344", "1863734344", "TH_E601_B10", "box_NavLinkModifier_26.Deactivated", "box_GetPlayerGroup_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_4_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_ProximityTrigger_v2_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1742115516", "1742115516", "TH_E601_B10", "box_ProximityTrigger_v2_4.Enter", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_7_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1877259555", "1877259555", "TH_E601_B10", "box_GetPlayerGroup_v2_7.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_7();
    l0 = self.box_ActivityInitialized_21;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1897876107", "1897876107", "TH_E601_B10", "box_ActivityInitialized_21.Out", "box_GetPlayerGroup_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101728420823046803",
    };
    return params;
end;

function export:OnEnter_box_RequestTutorial_v3_14()
    local params;
    params = {
        -- bypassPreconditions,
        [0] = true,
        -- tutorialdb,
        [1] = "9015255988987428",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_30()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2105239749441634066",
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|227169618");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2105238873100533443",
        -- pawns,
        [2] = "2105238873100533443",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|233786430");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_28()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2103398983213793436",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101669892341115927",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|325138163");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|407934540");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_33_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105239824303657384",
        -- Group,
        [1] = "#28B96BFF",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_8()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101729210396590435",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_2()
    local params;
    params = {
        -- Preset,
        [0] = "9015219471541668",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|603191285");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|681666202");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2105238897448468232",
        -- Entity,
        [1] = "2105238873100533443",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_1()
    local params;
    params = {
        -- Group,
        [0] = "2104755065387496147",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_29()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101669892341115927",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|934672274");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2104064987713527107",
        -- Entity,
        [1] = "2102639349821615920",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = l0:GetDataOutValue(0),
        -- id2,
        [3] = "2105019102675359413",
        -- nearZone,
        [4] = 70,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|962514564");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_31_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2105238889259089622",
        -- Entity,
        [1] = "2105238873100533443",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1006903565");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1025147850");
    l0:SetConnections({
    });
    params = {
        -- Reload,
        [1] = false,
        -- ShowHud,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1133432393");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_24()
    local params;
    params = {
        -- blendTime,
        [1] = 1,
        -- endTarget,
        [4] = "2101669900622769176",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2101669892341115927",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1284553156");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_11_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104064987713527105",
        -- Entity,
        [1] = "2102639349821615918",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1355556912");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_20_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104935248457376482",
        -- Entity,
        [1] = "2102639349821615918",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1647856063");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Reach_GoTo_v2_17()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bIsTrigger,
        [1] = true,
        -- bRequiresObjective,
        [2] = true,
        -- bUse2d_ProximityCheck,
        [3] = true,
        -- bUseDetectionModifier,
        [4] = false,
        -- eMarker,
        [5] = "2102723279543353886",
        -- eTrigger,
        [7] = "2101656484015252883",
        -- fDistanceFromTarget,
        [8] = 5,
        -- fObjectiveTimer,
        [9] = 0,
        -- opt_Objective,
        [11] = {
            section = "THE601 - SulfurCave",
            item = "THE601_Objective_01",
            id = "728839",
        },
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|1783168174");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_25_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2104935245741564638",
        -- Entity,
        [1] = "2102639349821615920",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_26()
    local params;
    params = {
        -- Entity,
        [0] = "2105032070108582011",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Gplayer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2101729190568014833",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E601.domino|@TH_E601_B10|2078712001");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_27()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103978266101557370",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_9_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l1 = self.box_ProximityRadiusListener_v3_6;
    l1:GetLuaBox().Entities = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Gplayer = l0:GetDataOutValue(0);
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
