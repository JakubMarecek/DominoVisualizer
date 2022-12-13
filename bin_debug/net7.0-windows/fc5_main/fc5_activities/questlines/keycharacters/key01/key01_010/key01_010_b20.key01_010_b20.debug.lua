LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/keycharacters/key01/key01_010/key01_010_b20.domino
-- User graph: KEY01_010_B20
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFxListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/KeyCharacters/KEY01/KEY01_010/KEY01_010_B20.KEY01_010_B20.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua")] = {
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
                name = "Failed",
                delayed = true,
            },
            [2] = {
                name = "Player_EnterVehicle",
                delayed = true,
            },
            [3] = {
                name = "Player_ExitVehicle",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = false,
            },
            [5] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "bDisplayVehicleHealth",
                type = "bool",
            },
            [2] = {
                name = "bMustExitVehicle",
                type = "bool",
            },
            [3] = {
                name = "bRequiresObjective",
                type = "bool",
            },
            [4] = {
                name = "eTarget",
                type = "entity",
            },
            [5] = {
                name = "eTargetMarker",
                type = "entity",
            },
            [6] = {
                name = "eVehicle",
                type = "entity",
            },
            [7] = {
                name = "eVehicleMarker",
                type = "entity",
            },
            [8] = {
                name = "fDistanceFromTarget",
                type = "float",
            },
            [9] = {
                name = "isTargetTrigger",
                type = "bool",
            },
            [10] = {
                name = "Objective",
                type = "oasis",
            },
            [11] = {
                name = "opt_FailReason",
                type = "oasis",
            },
        },
        dataInCount = 12,
        dataOut = {
            [0] = {
                name = "FailReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Destroyed",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
            [3] = {
                name = "Unloaded",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "bCompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "e_MobileObjectiveMarker",
                type = "entity",
            },
            [2] = {
                name = "e_Vehicle",
                type = "entity",
            },
            [3] = {
                name = "hasObjective",
                type = "bool",
            },
            [4] = {
                name = "o_Objective",
                type = "oasis",
            },
            [5] = {
                name = "opt_FailReason",
                type = "oasis",
            },
            [6] = {
                name = "opt_MarkerBone",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
            [0] = {
                name = "FailureReason",
                type = "oasis",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")] = {
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
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "TargetGroup",
                type = "group",
            },
            [3] = {
                name = "Time",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")] = {
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
                name = "ObjectiveId",
                type = "oasis",
            },
            [1] = {
                name = "Success",
                type = "bool",
            },
        },
        dataInCount = 2,
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/PostFxListener_v2.lua")] = {
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
                name = "OnFxStartOnAllPlayers",
                delayed = true,
            },
            [3] = {
                name = "OnFxStartOnPlayer",
                delayed = true,
            },
            [4] = {
                name = "OnFxStopOnAllPlayers",
                delayed = true,
            },
            [5] = {
                name = "OnFxStopOnPlayer",
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
                name = "Players",
                type = "group",
            },
            [2] = {
                name = "PostFxNameFilter",
                type = "string",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "outInteractor",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/VehicleDamageListener_v2.lua")] = {
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
                name = "BoxDisabled",
                delayed = false,
            },
            [1] = {
                name = "Broken",
                delayed = true,
            },
            [2] = {
                name = "Destroyed",
                delayed = true,
            },
            [3] = {
                name = "Disabled",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "MajorDamage",
                delayed = true,
            },
            [6] = {
                name = "MinorDamage",
                delayed = true,
            },
            [7] = {
                name = "Mint",
                delayed = true,
            },
            [8] = {
                name = "OnFire",
                delayed = true,
            },
            [9] = {
                name = "Perfect",
                delayed = true,
            },
            [10] = {
                name = "StateChange",
                delayed = true,
            },
        },
        controlOutCount = 11,
        dataIn = {
            [0] = {
                name = "Vehicle",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "StateID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
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
    self._name = "KEY01_010_B20";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20";
    self.gFriendlyPlayer = nil;
    self.bIsInPlane = false;
    self.ePlayerVehicle = nil;
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|220295415");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_13_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_VehicleListener_v3_10 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|261193665");
    l0:SetConnections({
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_10_OnSit,
    });
    self.box_SpawnAI_19 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|371366903");
    l0:SetConnections({
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|467254704");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_ProximityRadiusListener_v3_6 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|516101615");
    l0:SetConnections({
        -- AllNear,
        [1] = self.f_box_ProximityRadiusListener_v3_6_AllNear,
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_6_SomeoneFar,
    });
    self.box_ProximityRadiusListener_v3_8 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|540825691");
    l0:SetConnections({
        -- SomeoneFar,
        [4] = self.f_box_ProximityRadiusListener_v3_8_SomeoneFar,
    });
    self.box_SpawnAI_21 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|857581144");
    l0:SetConnections({
    });
    self.box_VehicleDamageListener_v2_12 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|899775010");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_12_Destroyed,
    });
    self.box_SpawnAI_18 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1435308360");
    l0:SetConnections({
    });
    self.box_PostFxListener_v2_5 = cbox:CreateBox("Domino/System/Player/PostFxListener_v2.lua");
    l0 = self.box_PostFxListener_v2_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFxListener_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1496069306");
    l0:SetConnections({
        -- OnFxStartOnPlayer,
        [3] = self.f_box_PostFxListener_v2_5_OnFxStartOnPlayer,
    });
    self.box_MessageListener_v3_4 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1580507058");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_4_Received,
    });
    self.box_Brick_TakeControl_Vehicle_Specific_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_TakeControl_Vehicle.Brick_TakeControl_Vehicle_Specific.debug.lua");
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_TakeControl_Vehicle_Specific_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1676509604");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_TakeControl_Vehicle_Specific_1_Success,
    });
    self.box_ActivityInitialized_35 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1714814778");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_35_Out,
    });
    self.box_ActivityAcknowledgeGate_37 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1984343300");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_37_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_37_Reloaded,
    });
    self.box_Brick_Deliver_Vehicle_v5_7 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Deliver_Vehicle_To_Position.Brick_Deliver_Vehicle_v5.debug.lua");
    l0 = self.box_Brick_Deliver_Vehicle_v5_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Deliver_Vehicle_v5_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1984626213");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_Brick_Deliver_Vehicle_v5_7_Started,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|199980212", "199980212", "KEY01_010_B20", "In", "box_ActivityAcknowledgeGate_37.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_17();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1888389214", "1888389214", "KEY01_010_B20", "box_OutputOrder_v2_2.Out", "box_VehicleModifier_v2_17.SetAsDestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsDestructable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_18();
    l0 = self.box_SpawnAI_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|570768916", "570768916", "KEY01_010_B20", "box_OutputOrder_v2_2.Out", "box_SpawnAI_18.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_20();
    l0 = self.box_EntityStatusListener_13;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1860796849", "1860796849", "KEY01_010_B20", "box_EntityStatusListener_13.Enabled", "box_GetActivityState_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_12();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_VehicleDamageListener_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1777471385", "1777471385", "KEY01_010_B20", "box_EntityStatusListener_13.Loaded", "box_VehicleDamageListener_v2_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_10_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = self.box_VehicleListener_v3_10;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1375206988", "1375206988", "KEY01_010_B20", "box_VehicleListener_v3_10.OnSit", "box_OutputOrder_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_32_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_32;
    l1 = self.box_ActivityInitialized_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|210143433", "210143433", "KEY01_010_B20", "box_MultipleOR_32.Out", "box_ActivityInitialized_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_8();
    l0 = self.box_ProximityRadiusListener_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|849639063", "849639063", "KEY01_010_B20", "box_OutputOrder_v2_11.Out", "box_ProximityRadiusListener_v3_8.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|996966950", "996966950", "KEY01_010_B20", "box_OutputOrder_v2_11.Out", "box_EndActivityObjective_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_6_AllNear()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_7();
    l0 = self.box_ProximityRadiusListener_v3_6;
    l1 = self.box_Brick_Deliver_Vehicle_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1047693103", "1047693103", "KEY01_010_B20", "box_ProximityRadiusListener_v3_6.AllNear", "box_Brick_Deliver_Vehicle_v5_7.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_6_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Deliver_Vehicle_v5_7();
    l0 = self.box_ProximityRadiusListener_v3_6;
    l1 = self.box_Brick_Deliver_Vehicle_v5_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|824848146", "824848146", "KEY01_010_B20", "box_ProximityRadiusListener_v3_6.SomeoneFar", "box_Brick_Deliver_Vehicle_v5_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_TakeControl_Vehicle_Specific_1();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1292825547", "1292825547", "KEY01_010_B20", "box_OutputOrder_v2_14.Out", "box_Brick_TakeControl_Vehicle_Specific_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFxListener_v2_5();
    l0 = self.box_PostFxListener_v2_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|569344918", "569344918", "KEY01_010_B20", "box_OutputOrder_v2_14.Out", "box_PostFxListener_v2_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_8_SomeoneFar()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_10();
    l0 = self.box_ProximityRadiusListener_v3_8;
    l1 = self.box_VehicleListener_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1046227844", "1046227844", "KEY01_010_B20", "box_ProximityRadiusListener_v3_8.SomeoneFar", "box_VehicleListener_v3_10.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_19();
    l0 = self.box_SpawnAI_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|330324186", "330324186", "KEY01_010_B20", "box_OutputOrder_v2_22.Out", "box_SpawnAI_19.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_21();
    l0 = self.box_SpawnAI_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1429984977", "1429984977", "KEY01_010_B20", "box_OutputOrder_v2_22.Out", "box_SpawnAI_21.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_VehicleDamageListener_v2_12_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_48();
    l0 = self.box_VehicleDamageListener_v2_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|110881779", "110881779", "KEY01_010_B20", "box_VehicleDamageListener_v2_12.Destroyed", "box_ActivityRetry_48.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_16_OnSetAsIndestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MessageListener_v3_4();
    l0 = self.box_MessageListener_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|651216295", "651216295", "KEY01_010_B20", "box_VehicleModifier_v2_16.OnSetAsIndestructible", "box_MessageListener_v3_4.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_3_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_6();
    l0 = self.box_ProximityRadiusListener_v3_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1069668541", "1069668541", "KEY01_010_B20", "box_AddActivityObjective_v2_3.Out", "box_ProximityRadiusListener_v3_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PostFxListener_v2_5_OnFxStartOnPlayer()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_16();
    l0 = self.box_PostFxListener_v2_5;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|665176997", "665176997", "KEY01_010_B20", "box_PostFxListener_v2_5.OnFxStartOnPlayer", "box_VehicleModifier_v2_16.SetAsIndestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsIndestructable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MessageListener_v3_4_Received()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_MessageListener_v3_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1306625553", "1306625553", "KEY01_010_B20", "box_MessageListener_v3_4.Received", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_60();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|190389777", "190389777", "KEY01_010_B20", "box_EndActivityObjective_v2_9.Out", "box_ActivityEnd_60.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_TakeControl_Vehicle_Specific_1_Success()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_3();
    l0 = self.box_Brick_TakeControl_Vehicle_Specific_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1126483903", "1126483903", "KEY01_010_B20", "box_Brick_TakeControl_Vehicle_Specific_1.Success", "box_AddActivityObjective_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_ActivityInitialized_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1431634332", "1431634332", "KEY01_010_B20", "box_ActivityInitialized_35.Out", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_20_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1924975462", "1924975462", "KEY01_010_B20", "box_GetActivityState_v2_20.Active", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_8();
    l0 = self.box_ProximityRadiusListener_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1212327799", "1212327799", "KEY01_010_B20", "box_GetActivityState_v2_20.Out", "box_ProximityRadiusListener_v3_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_37_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_37;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|45336352", "45336352", "KEY01_010_B20", "box_ActivityAcknowledgeGate_37.Acknowledged", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_37_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_37;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1804016083", "1804016083", "KEY01_010_B20", "box_ActivityAcknowledgeGate_37.Reloaded", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Deliver_Vehicle_v5_7_Started()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_Brick_Deliver_Vehicle_v5_7;
    l1 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|458805722", "458805722", "KEY01_010_B20", "box_Brick_Deliver_Vehicle_v5_7.Started", "box_EntityStatusListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|131169088");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|239571253");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_10()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_19()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101146411476206688",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|406856110");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|492232186");
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
                [1] = self.f_box_OutputOrder_v2_11_Out_1,
                [2] = self.f_box_OutputOrder_v2_11_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_6()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "#ED455357",
        -- farZone,
        [2] = 150,
        -- id2,
        [3] = "2097747000295455210",
        -- nearZone,
        [4] = 150,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|522297619");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_8()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- Entities,
        [1] = "2097647799167366375",
        -- farZone,
        [2] = 15,
        -- id2,
        [3] = "2098172686176920078",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|681696077");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_21()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2105157857537243640",
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_12()
    local params;
    params = {
        -- Vehicle,
        [0] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1023443526");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "KEY01_010_FAIL_PlaneDestroy",
            id = "501598",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1062891870");
    l0:SetConnections({
        -- OnSetAsIndestructible,
        [4] = self.f_box_VehicleModifier_v2_16_OnSetAsIndestructible,
    });
    params = {
        -- targets,
        [0] = "2097647799167366375",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_18()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2097647795000325281",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1475859846");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_3_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_TakeOff",
            id = "501577",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PostFxListener_v2_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Players,
        [1] = "#ED455357",
        -- PostFxNameFilter,
        [2] = "outpostliberation",
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_4()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "outpost_cinematic_end",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1619376922");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_9_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_TakeOff",
            id = "501577",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Brick_TakeControl_Vehicle_Specific_1()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- e_MobileObjectiveMarker,
        [1] = "2097747000295455210",
        -- e_Vehicle,
        [2] = "2097647799167366375",
        -- hasObjective,
        [3] = true,
        -- o_Objective,
        [4] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_GetinPlane",
            id = "730953",
        },
        -- opt_FailReason,
        [5] = {
            section = "BRICK_Steal_Vehicle",
            item = "BRICK_Steal_Vehicle_FAIL",
            id = "376563",
        },
        -- opt_MarkerBone,
        [6] = "PILOT_SITPOINT_00",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\KeyCharacters\\KEY01\\KEY01_010\\KEY01_010_B20.domino|@KEY01_010_B20|1913202950");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_20_Active,
        -- Out,
        [5] = self.f_box_GetActivityState_v2_20_Out,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015199368356521",
    };
    return params;
end;

function export:OnEnter_box_Brick_Deliver_Vehicle_v5_7()
    local params;
    params = {
        -- bCompletePreviousObjective,
        [0] = false,
        -- bDisplayVehicleHealth,
        [1] = false,
        -- bMustExitVehicle,
        [2] = false,
        -- bRequiresObjective,
        [3] = false,
        -- eTarget,
        [4] = "2098172686176920078",
        -- eTargetMarker,
        [5] = "2104534911380669365",
        -- eVehicle,
        [6] = "2097647799167366375",
        -- eVehicleMarker,
        [7] = "2097747000295455210",
        -- fDistanceFromTarget,
        [8] = 0,
        -- isTargetTrigger,
        [9] = false,
        -- Objective,
        [10] = {
            section = "Objectives",
            item = "KEY01_010_B30_OBJ_TakeOff",
            id = "501577",
        },
        -- opt_FailReason,
        [11] = {
            section = "BRICK_Deliver_Vehicle",
            item = "BRICK_Deliver_Fail",
            id = "432252",
        },
    };
    return params;
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
