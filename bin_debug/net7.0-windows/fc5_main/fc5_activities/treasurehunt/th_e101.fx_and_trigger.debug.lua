LUACy -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/treasurehunt/th_e101.domino
-- User graph: FX_And_Trigger
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
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/CompareFloats.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/GetDistance.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/CameraShakeAndRumble_V2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableBreaker.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.FX_And_Trigger.debug.lua")] = {
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/CompareFloats.lua")] = {
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
                type = "float",
            },
            [1] = {
                name = "B",
                type = "float",
            },
            [2] = {
                name = "Tolerance",
                type = "float",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
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
                name = "dynamicLightId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetDistance.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Distance2D",
            },
            [1] = {
                name = "Distance3D",
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
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Distance",
                type = "float",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableBreaker.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Destroy",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceState",
            },
            [3] = {
                name = "NextState",
            },
            [4] = {
                name = "SetDamageable",
            },
            [5] = {
                name = "SetUnDamageable",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "DamageableChanged",
                delayed = false,
            },
            [1] = {
                name = "Destroyed",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
            [3] = {
                name = "StateChanged",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "entity",
                type = "entity",
            },
            [1] = {
                name = "forcedStateId",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/TeleportPawns.lua")] = {
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
            [0] = {
                name = "ClientDestinationEntity",
                type = "entity",
            },
            [1] = {
                name = "Destination",
                type = "entity",
            },
            [2] = {
                name = "LoadingScreen",
                type = "bool",
            },
            [3] = {
                name = "LoadSynch",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "UseBlackScreen",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInteractionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "ForceInteraction",
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
                name = "Interacted",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "disableOnUse",
                type = "bool",
            },
            [1] = {
                name = "displayId",
                type = "oasis",
            },
            [2] = {
                name = "interactor",
                type = "entity",
            },
            [3] = {
                name = "state",
                type = "bool",
            },
            [4] = {
                name = "usableEntity",
                type = "entity",
            },
            [5] = {
                name = "usageType",
                type = "string",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UniversalInterationListener.lua")] = {
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
                name = "Interacted",
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
                name = "usableEntityId",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "entityInteracted",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In_Ceiling_Collapse",
            },
            [1] = {
                name = "In_Power_Up",
            },
            [2] = {
                name = "In_Start_Bunker_Trap_Door_Open",
            },
            [3] = {
                name = "In_Start_Fire_Sounds_Phase_A",
            },
            [4] = {
                name = "In_Start_Fire_Sounds_Phase_B",
            },
            [5] = {
                name = "In_Start_Flame_Jet",
            },
            [6] = {
                name = "In_Start_Sprinklers",
            },
            [7] = {
                name = "In_Stop_Flame_Jet",
            },
            [8] = {
                name = "In_Stop_Flickering_Light",
            },
        },
        controlInCount = 9,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "Ceilling_Collapse_Entity",
                type = "entity",
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
    self._name = "FX_And_Trigger";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger";
    self.Out = DummyFunction;
    self.eHost = nil;
    self.eClient = nil;
    self.Interact = nil;
    self.fDistance = 0;
    self.gPlayer = nil;
    self.box_SpawnAI_110 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|46036762");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_110_Spawned,
    });
    self.box_Sound_Manager_107 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|147717036");
    l0:SetConnections({
    });
    self.box_Sound_Manager_108 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|156627025");
    l0:SetConnections({
    });
    self.box_Delay_v5_81 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|200559781");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_81_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_17 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|240600522");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_17_Enter,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|368040413");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_ProximityTrigger_v2_18 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|547411850");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_18_Enter,
    });
    self.box_SpawnAI_56 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|575450752");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_56_Out,
    });
    self.box_Delay_v5_71 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|714212092");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_71_TimeElapsed,
    });
    self.box_MultipleOR_76 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|719835163");
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
        [0] = self.f_box_MultipleOR_76_Out,
    });
    self.box_Sound_Manager_111 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1046435024");
    l0:SetConnections({
    });
    self.box_Delay_v5_74 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1074649076");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_74_TimeElapsed,
    });
    self.box_CoopActivePlayers_42 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1083603284");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_42_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_42_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_42_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_42_TwoPlayers,
    });
    self.box_TeleportPawns_9 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1100340827");
    l0:SetConnections({
    });
    self.box_Sound_Manager_109 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1127721849");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_83 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1241219533");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_83_Enter,
    });
    self.box_Sound_Manager_38 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1387452767");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_57 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1431676957");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_57_StartOut,
    });
    self.box_Sound_Manager_25 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1450402922");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_115 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1467046006");
    l0:SetConnections({
    });
    self.box_Sound_Manager_63 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1481657425");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_21 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1691791795");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_21_Enter,
    });
    self.box_Delay_v5_50 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1817411685");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_50_TimeElapsed,
    });
    self.box_Sound_Manager_29 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/TreasureHunt/TH_E101.Sound_Manager.debug.lua");
    l0 = self.box_Sound_Manager_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Sound_Manager_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1904256032");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_59 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1965637426");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_59_Enter,
    });
    self.box_PositionModifier_v2_8 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1973260829");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_8_StartOut,
    });
    self.box_TeleportPawns_34 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2023744097");
    l0:SetConnections({
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2038548382");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_UniversalInteractionListener_1 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2051464970");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_1_Interacted,
    });
    self.box_Delay_v5_75 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2061385792");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_75_TimeElapsed,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2135770202");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_23();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1704977084", "1704977084", "FX_And_Trigger", "In", "box_GetPlayerGroup_v2_23.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_110_Spawned()
    local l0;
    l0 = self.box_SpawnAI_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1842771395", "1842771395", "FX_And_Trigger", "box_SpawnAI_110.Spawned", "Out", l0:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_ParticleSystem_v3_89_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_91();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1508738979", "1508738979", "FX_And_Trigger", "box_ParticleSystem_v3_89.Stopped", "box_StimsEmitter_v2_91.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_100_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_46();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|39733633", "39733633", "FX_And_Trigger", "box_StaticBreakableBreaker_100.Destroyed", "box_StaticBreakableBreaker_46.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_45_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_34();
    l0 = self.box_TeleportPawns_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|110183442", "110183442", "FX_And_Trigger", "box_Compare_Floats_45.A_gt_B", "box_TeleportPawns_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_55_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_90();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|691690815", "691690815", "FX_And_Trigger", "box_ParticleSystem_v3_55.Started", "box_ParticleSystem_v3_90.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_81_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_80();
    l0 = self.box_Delay_v5_81;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|697330280", "697330280", "FX_And_Trigger", "box_Delay_v5_81.TimeElapsed", "box_StimsEmitter_v2_80.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_17_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_28();
    l0 = self.box_ProximityTrigger_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1654825116", "1654825116", "FX_And_Trigger", "box_ProximityTrigger_v2_17.Enter", "box_CameraShakeAndRumble_V2_28.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_88_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_89();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|357878942", "357878942", "FX_And_Trigger", "box_ParticleSystem_v3_88.Stopped", "box_ParticleSystem_v3_89.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_85_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_86();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1844205302", "1844205302", "FX_And_Trigger", "box_ParticleSystem_v3_85.Started", "box_ParticleSystem_v3_86.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Floats_39_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_9();
    l0 = self.box_TeleportPawns_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2056381582", "2056381582", "FX_And_Trigger", "box_Compare_Floats_39.A_gt_B", "box_TeleportPawns_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_DynamicLightModifier_5_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_53();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1787710286", "1787710286", "FX_And_Trigger", "box_DynamicLightModifier_5.Enabled", "box_DynamicLightModifier_53.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_103();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|468318059", "468318059", "FX_And_Trigger", "box_Delay_v5_11.TimeElapsed", "box_OutputOrder_v2_103.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_31_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_35();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|185219543", "185219543", "FX_And_Trigger", "box_StaticBreakableBreaker_31.Destroyed", "box_StaticBreakableBreaker_35.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_72_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_104();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1090583031", "1090583031", "FX_And_Trigger", "box_ParticleSystem_v3_72.Started", "box_ParticleSystem_v3_104.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_72_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_104();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1624707013", "1624707013", "FX_And_Trigger", "box_ParticleSystem_v3_72.Stopped", "box_ParticleSystem_v3_104.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_77_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|625313122", "625313122", "FX_And_Trigger", "box_StimsEmitter_v2_77.Enabled", "box_Delay_v5_82.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_66_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_71();
    l0 = self.box_Delay_v5_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1269440760", "1269440760", "FX_And_Trigger", "box_ParticleSystem_v3_66.Started", "box_Delay_v5_71.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_112_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_111();
    l0 = self.box_Sound_Manager_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1123504161", "1123504161", "FX_And_Trigger", "box_OutputOrder_v2_112.Out", "box_Sound_Manager_111.In_Ceiling_Collapse", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Ceiling_Collapse
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_112_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|840252642", "840252642", "FX_And_Trigger", "box_OutputOrder_v2_112.Out", "box_Delay_v5_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ProximityTrigger_v2_18_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_16();
    l0 = self.box_ProximityTrigger_v2_18;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1139994001", "1139994001", "FX_And_Trigger", "box_ProximityTrigger_v2_18.Enter", "box_CameraShakeAndRumble_V2_16.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_41_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_107();
    l0 = self.box_Sound_Manager_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2089914820", "2089914820", "FX_And_Trigger", "box_OutputOrder_v2_41.Out", "box_Sound_Manager_107.In_Start_Flame_Jet", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Flame_Jet
    l0:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_41_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_74();
    l0 = self.box_Delay_v5_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|270295221", "270295221", "FX_And_Trigger", "box_OutputOrder_v2_41.Out", "box_Delay_v5_74.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetDistance_36_Out()
    local params, l0;
    self:OnExit_box_GetDistance_36_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_45();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1026936775", "1026936775", "FX_And_Trigger", "box_GetDistance_36.Out", "box_Compare_Floats_45.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_56_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_110();
    l0 = self.box_SpawnAI_56;
    l1 = self.box_SpawnAI_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|369213034", "369213034", "FX_And_Trigger", "box_SpawnAI_56.Out", "box_SpawnAI_110.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_StimsEmitter_v2_73_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1412130619", "1412130619", "FX_And_Trigger", "box_StimsEmitter_v2_73.Disabled", "box_OutputOrder_v2_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_73_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_41();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|982483661", "982483661", "FX_And_Trigger", "box_StimsEmitter_v2_73.Enabled", "box_OutputOrder_v2_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_66();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1561731605", "1561731605", "FX_And_Trigger", "box_OutputOrder_v2_26.Out", "box_ParticleSystem_v3_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_32();
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|543626256", "543626256", "FX_And_Trigger", "box_OutputOrder_v2_62.Out", "box_CameraShakeAndRumble_V2_32.SendEvent", clone:GetLuaBox(), l0:GetLuaBox());
    -- SendEvent
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_67();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1754939099", "1754939099", "FX_And_Trigger", "box_OutputOrder_v2_62.Out", "box_ParticleSystem_v3_67.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_62_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1804081625", "1804081625", "FX_And_Trigger", "box_OutputOrder_v2_62.Out", "box_MultipleOR_76.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_62_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_25();
    l0 = self.box_Sound_Manager_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2088808340", "2088808340", "FX_And_Trigger", "box_OutputOrder_v2_62.Out", "box_Sound_Manager_25.In_Start_Fire_Sounds_Phase_A", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Fire_Sounds_Phase_A
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_62_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_25();
    l0 = self.box_Sound_Manager_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|759418517", "759418517", "FX_And_Trigger", "box_OutputOrder_v2_62.Out", "box_Sound_Manager_25.In_Ceiling_Collapse", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Ceiling_Collapse
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_71_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_19();
    l0 = self.box_Delay_v5_71;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|904055116", "904055116", "FX_And_Trigger", "box_Delay_v5_71.TimeElapsed", "box_ParticleSystem_v3_19.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_4_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_36();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1704808422", "1704808422", "FX_And_Trigger", "box_Compare_Entity_4.Equal", "box_GetDistance_36.Distance3D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance3D
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_72();
    l0 = self.box_MultipleOR_76;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|507508837", "507508837", "FX_And_Trigger", "box_MultipleOR_76.Out", "box_ParticleSystem_v3_72.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetDistance_44_Out()
    local params, l0;
    self:OnExit_box_GetDistance_44_Out();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Floats_39();
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1307923063", "1307923063", "FX_And_Trigger", "box_GetDistance_44.Out", "box_Compare_Floats_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_67_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1731665750", "1731665750", "FX_And_Trigger", "box_ParticleSystem_v3_67.Started", "box_OutputOrder_v2_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_80_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_81();
    l0 = self.box_Delay_v5_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|418430311", "418430311", "FX_And_Trigger", "box_StimsEmitter_v2_80.Enabled", "box_Delay_v5_81.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_CameraShakeAndRumble_V2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_57();
    l0 = self.box_PositionModifier_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1232132125", "1232132125", "FX_And_Trigger", "box_CameraShakeAndRumble_V2_6.Out", "box_PositionModifier_v2_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_23_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_23_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|677133780", "677133780", "FX_And_Trigger", "box_GetPlayerGroup_v2_23.Out", "box_OutputOrder_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_93_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_94();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|692704586", "692704586", "FX_And_Trigger", "box_ParticleSystem_v3_93.Started", "box_ParticleSystem_v3_94.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_86_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_87();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1935665404", "1935665404", "FX_And_Trigger", "box_ParticleSystem_v3_86.Started", "box_ParticleSystem_v3_87.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_61();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1746993294", "1746993294", "FX_And_Trigger", "box_OutputOrder_v2_78.Out", "box_ParticleSystem_v3_61.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_77();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1705946473", "1705946473", "FX_And_Trigger", "box_OutputOrder_v2_78.Out", "box_StimsEmitter_v2_77.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_91_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_96();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|446300001", "446300001", "FX_And_Trigger", "box_StimsEmitter_v2_91.Disabled", "box_StimsEmitter_v2_96.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_108();
    l0 = self.box_Sound_Manager_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1824548073", "1824548073", "FX_And_Trigger", "box_OutputOrder_v2_48.Out", "box_Sound_Manager_108.In_Ceiling_Collapse", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Ceiling_Collapse
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|213314032", "213314032", "FX_And_Trigger", "box_OutputOrder_v2_48.Out", "box_OutputOrder_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1782668959", "1782668959", "FX_And_Trigger", "box_OutputOrder_v2_51.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1194051566", "1194051566", "FX_And_Trigger", "box_OutputOrder_v2_51.Out", "box_CoopActivePlayers_42.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_51_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_109();
    l0 = self.box_Sound_Manager_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1375705642", "1375705642", "FX_And_Trigger", "box_OutputOrder_v2_51.Out", "box_Sound_Manager_109.In_Power_Up", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Power_Up
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_115();
    l0 = self.box_UniversalInteractionModifier_v2_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1994247168", "1994247168", "FX_And_Trigger", "box_OutputOrder_v2_51.Out", "box_UniversalInteractionModifier_v2_115.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_51_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_83();
    l0 = self.box_ProximityTrigger_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1768252582", "1768252582", "FX_And_Trigger", "box_OutputOrder_v2_51.Out", "box_ProximityTrigger_v2_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CameraShakeAndRumble_V2_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_8();
    l0 = self.box_PositionModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2015541020", "2015541020", "FX_And_Trigger", "box_CameraShakeAndRumble_V2_16.Out", "box_PositionModifier_v2_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_74_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_72();
    l0 = self.box_Delay_v5_74;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1719053227", "1719053227", "FX_And_Trigger", "box_Delay_v5_74.TimeElapsed", "box_ParticleSystem_v3_72.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_42_OnePlayer()
    self:OnExit_box_CoopActivePlayers_42_OnePlayer();
end;

function export:f_box_CoopActivePlayers_42_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_CoopActivePlayers_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|215770075", "215770075", "FX_And_Trigger", "box_CoopActivePlayers_42.PlayerAdded", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_42_TwoPlayers()
    self:OnExit_box_CoopActivePlayers_42_TwoPlayers();
end;

function export:f_box_ParticleSystem_v3_69_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_47();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1705800969", "1705800969", "FX_And_Trigger", "box_ParticleSystem_v3_69.Started", "box_ParticleSystem_v3_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_2();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1772780210", "1772780210", "FX_And_Trigger", "box_OutputOrder_v2_20.Out", "box_MissionBlockLayer_2.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_21();
    l0 = self.box_ProximityTrigger_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1375285319", "1375285319", "FX_And_Trigger", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_17();
    l0 = self.box_ProximityTrigger_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|40541019", "40541019", "FX_And_Trigger", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_17.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_18();
    l0 = self.box_ProximityTrigger_v2_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|774776470", "774776470", "FX_And_Trigger", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_3();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1176624097", "1176624097", "FX_And_Trigger", "box_OutputOrder_v2_20.Out", "box_StaticBreakableBreaker_3.SetUnDamageable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetUnDamageable
    l0:Exec(5, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_59();
    l0 = self.box_ProximityTrigger_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1767707349", "1767707349", "FX_And_Trigger", "box_OutputOrder_v2_20.Out", "box_ProximityTrigger_v2_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableBreaker_14_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_22();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|306120248", "306120248", "FX_And_Trigger", "box_StaticBreakableBreaker_14.Destroyed", "box_StaticBreakableBreaker_22.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_22_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_80();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|593350054", "593350054", "FX_And_Trigger", "box_StaticBreakableBreaker_22.Destroyed", "box_StimsEmitter_v2_80.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_90_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_38();
    l0 = self.box_Sound_Manager_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1750553792", "1750553792", "FX_And_Trigger", "box_ParticleSystem_v3_90.Started", "box_Sound_Manager_38.In_Start_Sprinklers", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Sprinklers
    l0:Exec(6, params);
end;

function export:f_box_ParticleSystem_v3_30_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_69();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1856438616", "1856438616", "FX_And_Trigger", "box_ParticleSystem_v3_30.Started", "box_ParticleSystem_v3_69.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_10();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|811528184", "811528184", "FX_And_Trigger", "box_OutputOrder_v2_103.Out", "box_StaticBreakableBreaker_10.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_103_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_70();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|183512213", "183512213", "FX_And_Trigger", "box_OutputOrder_v2_103.Out", "box_ParticleSystem_v3_70.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_84();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|811985305", "811985305", "FX_And_Trigger", "box_OutputOrder_v2_92.Out", "box_ParticleSystem_v3_84.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_88();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|167057819", "167057819", "FX_And_Trigger", "box_OutputOrder_v2_92.Out", "box_ParticleSystem_v3_88.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_92_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_58();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1449468387", "1449468387", "FX_And_Trigger", "box_OutputOrder_v2_92.Out", "box_DynamicLightModifier_58.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_68_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_5();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1496913070", "1496913070", "FX_And_Trigger", "box_ParticleSystem_v3_68.Started", "box_DynamicLightModifier_5.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_7_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_14();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1793069485", "1793069485", "FX_And_Trigger", "box_StaticBreakableBreaker_7.Destroyed", "box_StaticBreakableBreaker_14.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Entity_33_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetDistance_44();
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|599157400", "599157400", "FX_And_Trigger", "box_Compare_Entity_33.Equal", "box_GetDistance_44.Distance2D", clone:GetLuaBox(), l0:GetLuaBox());
    -- Distance2D
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_83_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_92();
    l0 = self.box_ProximityTrigger_v2_83;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2088072426", "2088072426", "FX_And_Trigger", "box_ProximityTrigger_v2_83.Enter", "box_OutputOrder_v2_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_98_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_99();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1004048154", "1004048154", "FX_And_Trigger", "box_StimsEmitter_v2_98.Disabled", "box_ParticleSystem_v3_99.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_57_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_112();
    l0 = self.box_PositionModifier_v2_57;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|261203165", "261203165", "FX_And_Trigger", "box_PositionModifier_v2_57.StartOut", "box_OutputOrder_v2_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_95_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_55();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1936806915", "1936806915", "FX_And_Trigger", "box_ParticleSystem_v3_95.Started", "box_ParticleSystem_v3_55.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_65_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_68();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1493027383", "1493027383", "FX_And_Trigger", "box_ParticleSystem_v3_65.Started", "box_ParticleSystem_v3_68.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_104_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_73();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|765290253", "765290253", "FX_And_Trigger", "box_ParticleSystem_v3_104.Started", "box_StimsEmitter_v2_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_104_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_73();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|463050554", "463050554", "FX_And_Trigger", "box_ParticleSystem_v3_104.Stopped", "box_StimsEmitter_v2_73.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_29();
    l0 = self.box_Sound_Manager_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|459099380", "459099380", "FX_And_Trigger", "box_OutputOrder_v2_12.Out", "box_Sound_Manager_29.In_Stop_Flame_Jet", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Stop_Flame_Jet
    l0:Exec(7, params);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_75();
    l0 = self.box_Delay_v5_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1206119465", "1206119465", "FX_And_Trigger", "box_OutputOrder_v2_12.Out", "box_Delay_v5_75.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_47_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1008199727", "1008199727", "FX_And_Trigger", "box_ParticleSystem_v3_47.Started", "box_Delay_v5_43.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StaticBreakableBreaker_46_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_49();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1693127559", "1693127559", "FX_And_Trigger", "box_StaticBreakableBreaker_46.Destroyed", "box_StaticBreakableBreaker_49.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CameraShakeAndRumble_V2_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_7();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|111348723", "111348723", "FX_And_Trigger", "box_CameraShakeAndRumble_V2_28.Out", "box_StaticBreakableBreaker_7.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_1();
    l0 = self.box_UniversalInteractionListener_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1274014222", "1274014222", "FX_And_Trigger", "box_OutputOrder_v2_37.Out", "box_UniversalInteractionListener_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_105_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Sound_Manager_63();
    l0 = self.box_Sound_Manager_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2088708093", "2088708093", "FX_And_Trigger", "box_OutputOrder_v2_105.Out", "box_Sound_Manager_63.In_Start_Fire_Sounds_Phase_B", clone:GetLuaBox(), l0:GetLuaBox());
    -- In_Start_Fire_Sounds_Phase_B
    l0:Exec(4, params);
end;

function export:f_box_OutputOrder_v2_105_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_30();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|772613700", "772613700", "FX_And_Trigger", "box_OutputOrder_v2_105.Out", "box_ParticleSystem_v3_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_105_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_54();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|446107872", "446107872", "FX_And_Trigger", "box_OutputOrder_v2_105.Out", "box_DynamicLightModifier_54.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_27_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_31();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1279053080", "1279053080", "FX_And_Trigger", "box_StaticBreakableBreaker_27.Destroyed", "box_StaticBreakableBreaker_31.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_94_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_95();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|573749294", "573749294", "FX_And_Trigger", "box_ParticleSystem_v3_94.Started", "box_ParticleSystem_v3_95.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_21_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_CameraShakeAndRumble_V2_6();
    l0 = self.box_ProximityTrigger_v2_21;
    l1 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|301377240", "301377240", "FX_And_Trigger", "box_ProximityTrigger_v2_21.Enter", "box_CameraShakeAndRumble_V2_6.SendEvent", l0:GetLuaBox(), l1:GetLuaBox());
    -- SendEvent
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_84_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_85();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|645195360", "645195360", "FX_And_Trigger", "box_ParticleSystem_v3_84.Started", "box_ParticleSystem_v3_85.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_61_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_50();
    l0 = self.box_Delay_v5_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1317752718", "1317752718", "FX_And_Trigger", "box_ParticleSystem_v3_61.Started", "box_Delay_v5_50.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StimsEmitter_v2_96_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_97();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|507329440", "507329440", "FX_And_Trigger", "box_StimsEmitter_v2_96.Disabled", "box_StimsEmitter_v2_97.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_4();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|397814733", "397814733", "FX_And_Trigger", "box_OutputOrder_v2_24.Out", "box_Compare_Entity_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_33();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|130920034", "130920034", "FX_And_Trigger", "box_OutputOrder_v2_24.Out", "box_Compare_Entity_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_97_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StimsEmitter_v2_98();
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|523746350", "523746350", "FX_And_Trigger", "box_StimsEmitter_v2_97.Disabled", "box_StimsEmitter_v2_98.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_35_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_100();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1412787564", "1412787564", "FX_And_Trigger", "box_StaticBreakableBreaker_35.Destroyed", "box_StaticBreakableBreaker_100.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_50_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_64();
    l0 = self.box_Delay_v5_50;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|580226723", "580226723", "FX_And_Trigger", "box_Delay_v5_50.TimeElapsed", "box_ParticleSystem_v3_64.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableBreaker_52_Destroyed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_79();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|143225743", "143225743", "FX_And_Trigger", "box_StaticBreakableBreaker_52.Destroyed", "box_StaticBreakableBreaker_79.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_70_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_52();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1075455285", "1075455285", "FX_And_Trigger", "box_ParticleSystem_v3_70.Started", "box_StaticBreakableBreaker_52.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_59_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_62();
    l0 = self.box_ProximityTrigger_v2_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|150350992", "150350992", "FX_And_Trigger", "box_ProximityTrigger_v2_59.Enter", "box_OutputOrder_v2_62.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_8_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_PositionModifier_v2_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1370258177", "1370258177", "FX_And_Trigger", "box_PositionModifier_v2_8.StartOut", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CameraShakeAndRumble_V2_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableBreaker_27();
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|948768540", "948768540", "FX_And_Trigger", "box_CameraShakeAndRumble_V2_32.Out", "box_StaticBreakableBreaker_27.Destroy", clone:GetLuaBox(), l0:GetLuaBox());
    -- Destroy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_19_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_105();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|883975571", "883975571", "FX_And_Trigger", "box_ParticleSystem_v3_19.Started", "box_OutputOrder_v2_105.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_47();
    l0 = self.box_Delay_v5_43;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1345557865", "1345557865", "FX_And_Trigger", "box_Delay_v5_43.TimeElapsed", "box_ParticleSystem_v3_47.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_1_Interacted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_UniversalInteractionListener_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1501378842", "1501378842", "FX_And_Trigger", "box_UniversalInteractionListener_1.Interacted", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_75_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_75;
    l1 = self.box_MultipleOR_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1356040700", "1356040700", "FX_And_Trigger", "box_Delay_v5_75.TimeElapsed", "box_MultipleOR_76.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ParticleSystem_v3_64_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_65();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1589877900", "1589877900", "FX_And_Trigger", "box_ParticleSystem_v3_64.Started", "box_ParticleSystem_v3_65.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_87_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_93();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1641010178", "1641010178", "FX_And_Trigger", "box_ParticleSystem_v3_87.Started", "box_ParticleSystem_v3_93.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_77();
    l0 = self.box_Delay_v5_82;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1187464610", "1187464610", "FX_And_Trigger", "box_Delay_v5_82.TimeElapsed", "box_StimsEmitter_v2_77.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_2_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_56();
    l0 = self.box_SpawnAI_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1865203492", "1865203492", "FX_And_Trigger", "box_MissionBlockLayer_2.Activated", "box_SpawnAI_56.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:OnEnter_box_StaticBreakableBreaker_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|11807952");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100028721455965728",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_110()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103938082444166182",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|67081726");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_89_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2099321810148395940",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|82224654");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_100_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2100567996884849255",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|94119177");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_45_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.fDistance,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|145290016");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_55_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103276956536541918",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_107()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_108()
    local params;
    params = {
        -- Ceilling_Collapse_Entity,
        [0] = "2100847089463347753",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_81()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_17()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gPlayer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099307401529267499",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|268367233");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_88_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103318877407550885",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|270315626");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_85_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103207369782595363",
    };
    return params;
end;

function export:OnEnter_box_Compare_Floats_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareFloats.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Floats_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|342682950");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Floats_39_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.fDistance,
        -- B,
        [1] = 5,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|365687274");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_5_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2104449636298133415",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|412643174");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2101575109627095654",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|420037449");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_31_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2100567992925426277",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|447077823");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_72_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_72_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103217793611599629",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|451835474");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_77_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103217862429650180",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|460936472");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_66_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103208636141562310",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|521427920");
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
                [0] = self.f_box_OutputOrder_v2_112_Out_0,
                [1] = self.f_box_OutputOrder_v2_112_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_18()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103208343026813889",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|558066403");
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

function export:OnEnter_box_GetDistance_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|572119184");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_36_Out,
    });
    params = {
        -- Entity1,
        [0] = self.eHost,
        -- Entity2,
        [1] = self.eClient,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_56()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100066838162447468",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|579826970");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_73_Disabled,
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_73_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100979255883078969",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|626468156");
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
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|641926530");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2100028721455965728",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|657534454");
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
                [0] = self.f_box_OutputOrder_v2_62_Out_0,
                [1] = self.f_box_OutputOrder_v2_62_Out_1,
                [2] = self.f_box_OutputOrder_v2_62_Out_2,
                [3] = self.f_box_OutputOrder_v2_62_Out_3,
                [4] = self.f_box_OutputOrder_v2_62_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_71()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|716165303");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_4_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.Interact,
        -- Entity2,
        [1] = self.eHost,
    };
    return params;
end;

function export:OnEnter_box_GetDistance_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetDistance_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|745612699");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetDistance_44_Out,
    });
    params = {
        -- Entity1,
        [0] = self.eHost,
        -- Entity2,
        [1] = self.eClient,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|761734327");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_67_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103217688890324059",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|764204898");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_80_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100577865308315658",
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|814969991");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_6_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 8,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|825973923");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_23_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|855614828");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_93_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103218065551406085",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|862897777");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_86_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103218057701766143",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|976465366");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|978654643");
    l0:SetConnections({
    });
    params = {
        -- entity,
        [0] = "2103318545040422129",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_111()
    local params;
    params = {
        -- Ceilling_Collapse_Entity,
        [0] = "2104094182330083388",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1047921478");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_91_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103207129501418040",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1054020145");
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
                [0] = self.f_box_OutputOrder_v2_48_Out_0,
                [1] = self.f_box_OutputOrder_v2_48_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1065930806");
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
                [0] = self.f_box_OutputOrder_v2_51_Out_0,
                [1] = self.f_box_OutputOrder_v2_51_Out_1,
                [2] = self.f_box_OutputOrder_v2_51_Out_2,
                [3] = self.f_box_OutputOrder_v2_51_Out_3,
                [4] = self.f_box_OutputOrder_v2_51_Out_4,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1072386350");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_16_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 8,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_74()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1092833508");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_69_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103208589412821428",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_9()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2102890360628842203",
        -- LoadingScreen,
        [2] = false,
        -- LoadSynch,
        [3] = false,
        -- Pawns,
        [4] = self.eHost,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1100656538");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
                [3] = self.f_box_OutputOrder_v2_20_Out_3,
                [6] = self.f_box_OutputOrder_v2_20_Out_6,
                [7] = self.f_box_OutputOrder_v2_20_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1118521322");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_14_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2100567984555692631",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1125175698");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104451494391607435",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_109()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1128015412");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_22_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2100567983897186901",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1144390583");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_90_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103276958272983776",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1148565554");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_30_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103318877407550885",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1162900075");
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
                [0] = self.f_box_OutputOrder_v2_103_Out_0,
                [1] = self.f_box_OutputOrder_v2_103_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1163357196");
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
                [0] = self.f_box_OutputOrder_v2_92_Out_0,
                [1] = self.f_box_OutputOrder_v2_92_Out_1,
                [2] = self.f_box_OutputOrder_v2_92_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1169682998");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_68_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2100938333501793054",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1189982883");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_7_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2100567986331980377",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1238510576");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_33_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.Interact,
        -- Entity2,
        [1] = self.eClient,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_83()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103218048027603965",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1254290706");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104449978767257422",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1263675502");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_98_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100979276135275936",
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1353924429");
    l0:SetConnections({
    });
    params = {
        -- dynamicLightId,
        [0] = "2104451494391607435",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_38()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_57()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2099350267987236301",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100028721455965728",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_25()
    local params;
    params = {
        -- Ceilling_Collapse_Entity,
        [0] = "2103458472872919926",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_115()
    local params;
    params = {
        -- usableEntity,
        [4] = "2100028446026501938",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_95()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1470687650");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_95_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103207474906533710",
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_63()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1498585911");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_65_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2102502397814246846",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1518323630");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_104_Started,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_104_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2103275394602925932",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1523866546");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1532374855");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_47_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103373106633540276",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1538607763");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_46_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2103275237742238290",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1563632686");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_28_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 15,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1605603270");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1613042280");
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
                [0] = self.f_box_OutputOrder_v2_105_Out_0,
                [1] = self.f_box_OutputOrder_v2_105_Out_1,
                [2] = self.f_box_OutputOrder_v2_105_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1669726847");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_27_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102334786627441741",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1685839817");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_94_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103218067357053959",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.gPlayer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2099307401529267508",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1733301440");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_84_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103207355492601617",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1766273194");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_61_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103318549847094516",
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1769485327");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_96_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2100979276135275940",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1774770452");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1778811304");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StimsEmitter_v2_97_Disabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103207129499320884",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1815120819");
    l0:SetConnections({
    });
    params = {
        -- TargetEntities,
        [0] = "2103208589412821428",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1815164231");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_35_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102335555019769040",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_50()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableBreaker_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StaticBreakableBreaker.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableBreaker_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1833140123");
    l0:SetConnections({
        -- Destroyed,
        [1] = self.f_box_StaticBreakableBreaker_52_Destroyed,
    });
    params = {
        -- entity,
        [0] = "2102198178045496429",
        -- forcedStateId,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Sound_Manager_29()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1952631838");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_70_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103208620643609022",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_59()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103208444801600463",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_8()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2102889771721306577",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2102889705822499264",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_CameraShakeAndRumble_V2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/CameraShakeAndRumble_V2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CameraShakeAndRumble_V2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|1988765054");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CameraShakeAndRumble_V2_32_Out,
    });
    params = {
        -- EventName,
        [0] = "explosionrumble",
        -- IntensityModifier,
        [1] = 5,
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2017437628");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_19_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2099321810148395940",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_34()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2102890360628842203",
        -- LoadingScreen,
        [2] = false,
        -- LoadSynch,
        [3] = false,
        -- Pawns,
        [4] = self.eClient,
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2100028446026501938",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_75()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2081505859");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_64_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2100938334145618720",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2106520248");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_87_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2103218059941524481",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\TreasureHunt\\TH_E101.domino|@FX_And_Trigger|2145658021");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_2_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "18152981590580369",
        -- missionLayerId,
        [1] = "18153011400166641",
    };
    return params;
end;

function export:OnExit_box_GetDistance_36_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistance = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetDistance_44_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetDistance.lua")];
    self.fDistance = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_23_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_42_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_42;
    self.eHost = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_42_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_42;
    self.eHost = l0:GetDataOutValue(0);
    self.eClient = l0:GetDataOutValue(1);
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
