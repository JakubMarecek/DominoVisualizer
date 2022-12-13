LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_580/omni_mis_580_b10.domino
-- User graph: OMNI_MIS_580_B10_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/RegenerateNavmesh.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VehicleDamageListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act1_Barricade.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act2_JumpNSquads.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act3_BarrelOFun.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.DistanceCheckHurk.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.OMNI_CarExplodeB10.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.globals.lua");
    end;
end;

function export:ResetLocalGlobals()
    Globals.OMNI_MIS_580_B10 = nil;
    Globals.OMNI_MIS_580_B10 = {
        eBLOGALCarB10 = nil,
        eBLOGALHurkB10 = nil,
        bReload = false,
        bComeOnMan = false,
        eTest = nil,
        ePlayer2CarID = nil,
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.OMNI_MIS_580_B10_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "CoopFailRequiresAllPlayer",
                type = "bool",
            },
            [2] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [3] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener_v2.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "genericdb",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/RegenerateNavmesh.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Completed",
                delayed = true,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "RegionEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/SetVehicleAsLeashAnchor.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ClearMissionVehicle",
            },
            [1] = {
                name = "SetMissionVehicle",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnMissionVehicleCleared",
                delayed = false,
            },
            [1] = {
                name = "OnMissionVehicleSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "targetVehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
                name = "enableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "immediateDespawn",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/HealthListener_v6.lua")] = {
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
                name = "Critical",
                delayed = true,
            },
            [1] = {
                name = "Damaged",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Downed",
                delayed = true,
            },
            [4] = {
                name = "Enabled",
                delayed = false,
            },
            [5] = {
                name = "Healed",
                delayed = true,
            },
            [6] = {
                name = "Killed",
                delayed = true,
            },
            [7] = {
                name = "Revived",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "current",
                type = "float",
            },
            [1] = {
                name = "delta",
                type = "float",
            },
            [2] = {
                name = "emitterName",
                type = "string",
            },
            [3] = {
                name = "hitLocation",
                type = "string",
            },
            [4] = {
                name = "instigator",
                type = "entity",
            },
            [5] = {
                name = "sourceType",
                type = "string",
            },
            [6] = {
                name = "victim",
                type = "entity",
            },
        },
        dataOutCount = 7,
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
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
                dynamicType = 1,
            },
            [1] = {
                name = "Reset",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Out",
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
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
    metadataTable[GetPathID("Domino/System/SetBoolean_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "False",
            },
            [1] = {
                name = "FromBool",
            },
            [2] = {
                name = "Toggle",
            },
            [3] = {
                name = "True",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Bool",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
                type = "bool",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act1_Barricade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Entered",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
            [1] = {
                name = "Player_In_Car",
                delayed = false,
            },
            [2] = {
                name = "WarpZone",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act2_JumpNSquads.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Entered",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act3_BarrelOFun.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Entered",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.DistanceCheckHurk.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FirstDistance25",
            },
            [1] = {
                name = "SecondDistance30",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Target_TooFar",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Car",
                type = "entity",
            },
            [1] = {
                name = "fDistanceFail",
                type = "float",
            },
            [2] = {
                name = "fDistanceWarning",
                type = "float",
            },
            [3] = {
                name = "FollowTarget",
                type = "entity",
            },
            [4] = {
                name = "oWarningMsg",
                type = "oasis",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.OMNI_CarExplodeB10.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Enabled",
                delayed = false,
            },
            [1] = {
                name = "FuckThisCar",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bFuckThisCar",
                type = "bool",
            },
            [1] = {
                name = "eCarID",
                type = "entity",
            },
            [2] = {
                name = "eHurkID",
                type = "entity",
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
    self._name = "OMNI_MIS_580_B10_main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main";
    self.box_Act1_Barricade_6 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act1_Barricade.debug.lua");
    l0 = self.box_Act1_Barricade_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Act1_Barricade_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|7726762");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Act1_Barricade_6_Finished,
        -- Player_In_Car,
        [1] = self.f_box_Act1_Barricade_6_Player_In_Car,
    });
    self.box_HealthListener_v6_25 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|18995892");
    l0:SetConnections({
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_25_Enabled,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_25_Killed,
    });
    self.box_OMNI_CarExplodeB10_13 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.OMNI_CarExplodeB10.debug.lua");
    l0 = self.box_OMNI_CarExplodeB10_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OMNI_CarExplodeB10_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|21568955");
    l0:SetConnections({
        -- Enabled,
        [0] = self.f_box_OMNI_CarExplodeB10_13_Enabled,
    });
    self.box_GunsForHireSystemModifier_22 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|49608141");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_22_Disabled,
    });
    self.box_CoopActivePlayers_46 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|53824843");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_46_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_46_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_46_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_46_TwoPlayers,
    });
    self.box_EntityStatusListener_26 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|245569167");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_26_Loaded,
    });
    self.box_SetVehicleAsLeashAnchor_41 = cbox:CreateBox("Domino/System/Coop/SetVehicleAsLeashAnchor.lua");
    l0 = self.box_SetVehicleAsLeashAnchor_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetVehicleAsLeashAnchor_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|408365486");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|707122569");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_ProximityTrigger_v3_42 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|717329466");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v3_42_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_42_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_42_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_42_Leave,
        -- OnAllInside,
        [4] = self.f_box_ProximityTrigger_v3_42_OnAllInside,
        -- OnEmpty,
        [5] = self.f_box_ProximityTrigger_v3_42_OnEmpty,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_42_OnOccupied,
        -- Use,
        [7] = self.f_box_ProximityTrigger_v3_42_Use,
    });
    self.box_OnceOnly_v3_19 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|740988308");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 1,
        },
        controlOut = {
            [0] = 1,
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
                [0] = self.f_box_OnceOnly_v3_19_Out_0,
            },
            count = 1,
        },
    });
    self.box_ProximityRadiusListener_v3_37 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1064596272");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_37_SomeoneNear,
    });
    self.box_ExitZoneWarningListener_v3_39 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1163244237");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_39_FailingZoneEntered,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1190424009");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_43_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1229957896");
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
        [0] = self.f_box_MultipleOR_1_Out,
    });
    self.box_TeleportPawns_44 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1230516875");
    l0:SetConnections({
    });
    self.box_ExitZoneWarningListener_v3_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1238271319");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_29_FailingZoneEntered,
    });
    self.box_CharacterLoadedIdListener_v2_23 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener_v2.lua");
    l0 = self.box_CharacterLoadedIdListener_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1260350750");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_v2_23_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_v2_23_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_v2_23_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_v2_23_LoadedIdReceived,
    });
    self.box_Act2_JumpNSquads_7 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act2_JumpNSquads.debug.lua");
    l0 = self.box_Act2_JumpNSquads_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Act2_JumpNSquads_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1428917798");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Act2_JumpNSquads_7_Finished,
    });
    self.box_RegenerateNavmesh_33 = cbox:CreateBox("Domino/System/AI/RegenerateNavmesh.lua");
    l0 = self.box_RegenerateNavmesh_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RegenerateNavmesh_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1645025006");
    l0:SetConnections({
        -- Completed,
        [0] = self.f_box_RegenerateNavmesh_33_Completed,
        -- Out,
        [1] = self.f_box_RegenerateNavmesh_33_Out,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1646904103");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_VehicleDamageListener_v2_17 = cbox:CreateBox("Domino/System/VehicleDamageListener_v2.lua");
    l0 = self.box_VehicleDamageListener_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleDamageListener_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1727543977");
    l0:SetConnections({
        -- Destroyed,
        [2] = self.f_box_VehicleDamageListener_v2_17_Destroyed,
    });
    self.box_Delay_v5_18 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1755372109");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_18_TimeElapsed,
    });
    self.box_DistanceCheckHurk_12 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.DistanceCheckHurk.debug.lua");
    l0 = self.box_DistanceCheckHurk_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DistanceCheckHurk_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1888238056");
    l0:SetConnections({
        -- Target_TooFar,
        [0] = self.f_box_DistanceCheckHurk_12_Target_TooFar,
    });
    self.box_Act3_BarrelOFun_8 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Act3_BarrelOFun.debug.lua");
    l0 = self.box_Act3_BarrelOFun_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Act3_BarrelOFun_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|2037955635");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Act3_BarrelOFun_8_Finished,
    });
    self.box_MultipleOR_47 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|2093470254");
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
        [0] = self.f_box_MultipleOR_47_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1783666028", "1783666028", "OMNI_MIS_580_B10_main", "In", "box_OutputOrder_v2_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Act1_Barricade_6_Finished()
    local l0, l1;
    l0 = self.box_Act1_Barricade_6;
    l1 = self.box_Act2_JumpNSquads_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|380383959", "380383959", "OMNI_MIS_580_B10_main", "box_Act1_Barricade_6.Finished", "box_Act2_JumpNSquads_7.Entered", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entered
    l1:Exec(0, {
    });
end;

function export:f_box_Act1_Barricade_6_Player_In_Car()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_Act1_Barricade_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|582008042", "582008042", "OMNI_MIS_580_B10_main", "box_Act1_Barricade_6.Player_In_Car", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_25_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_26();
    l0 = self.box_HealthListener_v6_25;
    l1 = self.box_EntityStatusListener_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|442503124", "442503124", "OMNI_MIS_580_B10_main", "box_HealthListener_v6_25.Enabled", "box_EntityStatusListener_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_25_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_25;
    l1 = self.box_OnceOnly_v3_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1438917694", "1438917694", "OMNI_MIS_580_B10_main", "box_HealthListener_v6_25.Killed", "box_OnceOnly_v3_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OMNI_CarExplodeB10_13_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_10();
    l0 = self.box_OMNI_CarExplodeB10_13;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|630170302", "630170302", "OMNI_MIS_580_B10_main", "box_OMNI_CarExplodeB10_13.Enabled", "box_VehicleModifier_v2_10.SetAsIndestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsIndestructable
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_22_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_22;
    l1 = self.box_Act1_Barricade_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1101283172", "1101283172", "OMNI_MIS_580_B10_main", "box_GunsForHireSystemModifier_22.Disabled", "box_Act1_Barricade_6.Entered", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entered
    l1:Exec(0, {
    });
end;

function export:f_box_CoopActivePlayers_46_PlayerAdded()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_46;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|642248739", "642248739", "OMNI_MIS_580_B10_main", "box_CoopActivePlayers_46.PlayerAdded", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_46_TwoPlayers()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_46_TwoPlayers();
    l0 = self.box_CoopActivePlayers_46;
    l1 = self.box_MultipleOR_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1742098363", "1742098363", "OMNI_MIS_580_B10_main", "box_CoopActivePlayers_46.TwoPlayers", "box_MultipleOR_47.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetEntity_v2_14_Out()
    local params, l0;
    self:OnExit_box_SetEntity_v2_14_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_22();
    l0 = self.box_GunsForHireSystemModifier_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|426891032", "426891032", "OMNI_MIS_580_B10_main", "box_SetEntity_v2_14.Out", "box_GunsForHireSystemModifier_22.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_26_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleDamageListener_v2_17();
    l0 = self.box_EntityStatusListener_26;
    l1 = self.box_VehicleDamageListener_v2_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|2242401", "2242401", "OMNI_MIS_580_B10_main", "box_EntityStatusListener_26.Loaded", "box_VehicleDamageListener_v2_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_18();
    l0 = self.box_Delay_v5_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1959228886", "1959228886", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_31.Out", "box_Delay_v5_18.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_37();
    l0 = self.box_ProximityRadiusListener_v3_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1387940657", "1387940657", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_31.Out", "box_ProximityRadiusListener_v3_37.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_29();
    l0 = self.box_ExitZoneWarningListener_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1394444548", "1394444548", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_31.Out", "box_ExitZoneWarningListener_v3_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_39();
    l0 = self.box_ExitZoneWarningListener_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1178369664", "1178369664", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_31.Out", "box_ExitZoneWarningListener_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetVehicleAsLeashAnchor_41();
    l0 = self.box_SetVehicleAsLeashAnchor_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|740619860", "740619860", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_31.Out", "box_SetVehicleAsLeashAnchor_41.SetMissionVehicle", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetMissionVehicle
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|234298827", "234298827", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_31.Out", "box_Delay_v5_43.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|284739074", "284739074", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_2.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|834825702", "834825702", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_2.Out", "box_Print_v2_5.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_28_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_11();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|413744604", "413744604", "OMNI_MIS_580_B10_main", "box_SetBoolean_v2_28.Out", "box_OutputOrder_v2_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|807581546", "807581546", "OMNI_MIS_580_B10_main", "box_ActivityInitialized_3.Out", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_42_Disabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_CoopActivePlayers_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1952007208", "1952007208", "OMNI_MIS_580_B10_main", "box_ProximityTrigger_v3_42.Disabled", "box_CoopActivePlayers_46.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, {
    });
end;

function export:f_box_ProximityTrigger_v3_42_Enabled()
    self:OnExit_box_ProximityTrigger_v3_42_Enabled();
end;

function export:f_box_ProximityTrigger_v3_42_Enter()
    self:OnExit_box_ProximityTrigger_v3_42_Enter();
end;

function export:f_box_ProximityTrigger_v3_42_Leave()
    self:OnExit_box_ProximityTrigger_v3_42_Leave();
end;

function export:f_box_ProximityTrigger_v3_42_OnEmpty()
    self:OnExit_box_ProximityTrigger_v3_42_OnEmpty();
end;

function export:f_box_ProximityTrigger_v3_42_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v3_42_OnOccupied();
    params = self:OnEnter_box_TeleportPawns_44();
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_TeleportPawns_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1068622810", "1068622810", "OMNI_MIS_580_B10_main", "box_ProximityTrigger_v3_42.OnOccupied", "box_TeleportPawns_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v3_42_Use()
    self:OnExit_box_ProximityTrigger_v3_42_Use();
end;

function export:f_box_OnceOnly_v3_19_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_16();
    l0 = self.box_OnceOnly_v3_19;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1223576941", "1223576941", "OMNI_MIS_580_B10_main", "box_OnceOnly_v3_19.Out", "box_ActivityRetry_v2_16.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_37_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_DistanceCheckHurk_12();
    l0 = self.box_ProximityRadiusListener_v3_37;
    l1 = self.box_DistanceCheckHurk_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1647177784", "1647177784", "OMNI_MIS_580_B10_main", "box_ProximityRadiusListener_v3_37.SomeoneNear", "box_DistanceCheckHurk_12.FirstDistance25", l0:GetLuaBox(), l1:GetLuaBox());
    -- FirstDistance25
    l1:Exec(0, params);
end;

function export:f_box_ExitZoneWarningListener_v3_39_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_40();
    l0 = self.box_ExitZoneWarningListener_v3_39;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|403944950", "403944950", "OMNI_MIS_580_B10_main", "box_ExitZoneWarningListener_v3_39.FailingZoneEntered", "box_ActivityRetry_v2_40.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_14();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1921592241", "1921592241", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_15.Out", "box_SetEntity_v2_14.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_25();
    l0 = self.box_HealthListener_v6_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1114002337", "1114002337", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_15.Out", "box_HealthListener_v6_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_43_Started()
    local l0, l1;
    l0 = self.box_Delay_v5_43;
    l1 = self.box_CoopActivePlayers_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1681653025", "1681653025", "OMNI_MIS_580_B10_main", "box_Delay_v5_43.Started", "box_CoopActivePlayers_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_42();
    l0 = self.box_Delay_v5_43;
    l1 = self.box_ProximityTrigger_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1045574762", "1045574762", "OMNI_MIS_580_B10_main", "box_Delay_v5_43.TimeElapsed", "box_ProximityTrigger_v3_42.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GroupAddToGroup_v2_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1160027930", "1160027930", "OMNI_MIS_580_B10_main", "box_GroupAddToGroup_v2_36.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_1_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_1;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1989182987", "1989182987", "OMNI_MIS_580_B10_main", "box_MultipleOR_1.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_ExitZoneWarningListener_v3_29_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_30();
    l0 = self.box_ExitZoneWarningListener_v3_29;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1938456589", "1938456589", "OMNI_MIS_580_B10_main", "box_ExitZoneWarningListener_v3_29.FailingZoneEntered", "box_ActivityRetry_v2_30.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_24_Out()
    local l0;
    self:OnExit_box_SetBoolean_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|926221021", "926221021", "OMNI_MIS_580_B10_main", "box_SetBoolean_v2_24.Out", "box_MultipleOR_1.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CharacterLoadedIdListener_v2_23_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_v2_23_LoadedIdReceived();
    params = self:OnEnter_box_GroupAddToGroup_v2_20();
    l0 = self.box_CharacterLoadedIdListener_v2_23;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|680911460", "680911460", "OMNI_MIS_580_B10_main", "box_CharacterLoadedIdListener_v2_23.LoadedIdReceived", "box_GroupAddToGroup_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Act2_JumpNSquads_7_Finished()
    local l0, l1;
    l0 = self.box_Act2_JumpNSquads_7;
    l1 = self.box_Act3_BarrelOFun_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1820931908", "1820931908", "OMNI_MIS_580_B10_main", "box_Act2_JumpNSquads_7.Finished", "box_Act3_BarrelOFun_8.Entered", l0:GetLuaBox(), l1:GetLuaBox());
    -- Entered
    l1:Exec(0, {
    });
end;

function export:f_box_GroupAddToGroup_v2_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_36();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1593197720", "1593197720", "OMNI_MIS_580_B10_main", "box_GroupAddToGroup_v2_20.Out", "box_GroupAddToGroup_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RegenerateNavmesh_33_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_34();
    l0 = self.box_RegenerateNavmesh_33;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|375184679", "375184679", "OMNI_MIS_580_B10_main", "box_RegenerateNavmesh_33.Completed", "box_Print_v2_34.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RegenerateNavmesh_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_35();
    l0 = self.box_RegenerateNavmesh_33;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|236877004", "236877004", "OMNI_MIS_580_B10_main", "box_RegenerateNavmesh_33.Out", "box_Print_v2_35.ToAll", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToAll
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1062125539", "1062125539", "OMNI_MIS_580_B10_main", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_24();
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1284515732", "1284515732", "OMNI_MIS_580_B10_main", "box_ActivityAcknowledgeGate_4.Reloaded", "box_SetBoolean_v2_24.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_28();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1091319337", "1091319337", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_32.Out", "box_SetBoolean_v2_28.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RegenerateNavmesh_33();
    l0 = self.box_RegenerateNavmesh_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|2125784691", "2125784691", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_32.Out", "box_RegenerateNavmesh_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_VehicleDamageListener_v2_17_Destroyed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_27();
    l0 = self.box_VehicleDamageListener_v2_17;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1830030574", "1830030574", "OMNI_MIS_580_B10_main", "box_VehicleDamageListener_v2_17.Destroyed", "box_ActivityRetry_v2_27.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_18_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_45();
    l0 = self.box_Delay_v5_18;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|570662571", "570662571", "OMNI_MIS_580_B10_main", "box_Delay_v5_18.TimeElapsed", "box_VehicleModifier_v2_45.SetInputEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInputEnabled
    l1:Exec(19, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_45_OnSetInputEnabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OMNI_CarExplodeB10_13();
    l0 = self.box_OMNI_CarExplodeB10_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|282748085", "282748085", "OMNI_MIS_580_B10_main", "box_VehicleModifier_v2_45.OnSetInputEnabled", "box_OMNI_CarExplodeB10_13.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, params);
end;

function export:f_box_DistanceCheckHurk_12_Target_TooFar()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_v2_38();
    l0 = self.box_DistanceCheckHurk_12;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1299627288", "1299627288", "OMNI_MIS_580_B10_main", "box_DistanceCheckHurk_12.Target_TooFar", "box_ActivityRetry_v2_38.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Act3_BarrelOFun_8_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_9();
    l0 = self.box_Act3_BarrelOFun_8;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|483286544", "483286544", "OMNI_MIS_580_B10_main", "box_Act3_BarrelOFun_8.Finished", "box_ActivityEnd_9.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_11_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_v2_23();
    l0 = self.box_CharacterLoadedIdListener_v2_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|187343517", "187343517", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_11.Out", "box_CharacterLoadedIdListener_v2_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_29();
    l0 = self.box_ExitZoneWarningListener_v3_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1573065898", "1573065898", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_11.Out", "box_ExitZoneWarningListener_v3_29.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_11_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1252292783", "1252292783", "OMNI_MIS_580_B10_main", "box_OutputOrder_v2_11.Out", "box_Print_v2_21.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_47_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v3_42();
    l0 = self.box_MultipleOR_47;
    l1 = self.box_ProximityTrigger_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1905178303", "1905178303", "OMNI_MIS_580_B10_main", "box_MultipleOR_47.Out", "box_ProximityTrigger_v3_42.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:OnEnter_box_HealthListener_v6_25()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- pawns,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_OMNI_CarExplodeB10_13()
    local params;
    params = {
        -- bFuckThisCar,
        [0] = false,
        -- eCarID,
        [1] = "2108255104097328563",
        -- eHurkID,
        [2] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_22()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = Globals.OMNI_MIS_580_B10.bReload,
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|233387417");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_14_Out,
    });
    params = {
        -- Entity,
        [0] = "2108255104097328563",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_26()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108255104097328563",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|373884190");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
                [3] = self.f_box_OutputOrder_v2_31_Out_3,
                [4] = self.f_box_OutputOrder_v2_31_Out_4,
                [5] = self.f_box_OutputOrder_v2_31_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|386097518");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 22,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "MIS_580_B10",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetVehicleAsLeashAnchor_41()
    local params;
    params = {
        -- targetVehicleEntity,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|434892990");
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

function export:OnEnter_box_ActivityEnd_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|457375544");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|600561594");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_42()
    local params, l0;
    l0 = self.box_CoopActivePlayers_46;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = l0:GetDataOutValue(1),
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109979649260928472",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|905840311");
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
        [8] = "MIS_580_B10_Acknowledge",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- id2,
        [3] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1120804344");
    l0:SetConnections({
    });
    params = {
        -- targets,
        [0] = "2108255104097328563",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1139933720");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 11,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Navmesh regen Completed",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_39()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2109483571098957226",
        -- WarningZoneTrigger,
        [3] = "2109483551427671463",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1187180149");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1210940402");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_36_Out,
    });
    params = {
        -- FromGroup,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- ToGroup,
        [1] = "#D78DAAD3",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_44()
    local params, l0;
    l0 = self.box_ProximityTrigger_v3_42;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2108184915624339644",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = l0:GetDataOutValue(0),
        -- UseBlackScreen,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_29()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = false,
        -- FailingZoneTrigger,
        [2] = "2109882375929348022",
        -- WarningZoneTrigger,
        [3] = "2109882368260063157",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1259826393");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_24_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_v2_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015206727351417",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1304875498");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Fail",
            item = "MIS_580_HurkDied",
            id = "1021572",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1343977800");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "yellow",
        -- duration,
        [3] = 11,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Navmesh Regen Sarted",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1420749517");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Mission Generic Messages",
            item = "MSG_MISSION_EXITMISSIONZONE_FAILED",
            id = "869998",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1479466894");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_20_Out,
    });
    params = {
        -- FromGroup,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- ToGroup,
        [1] = "#4A8509EF",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1519138490");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Fail",
            item = "MIS_580_HurkLeft",
            id = "1034600",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RegenerateNavmesh_33()
    local params;
    params = {
        -- RegionEntity,
        [0] = "2109579061127823502",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1697747128");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleDamageListener_v2_17()
    local params;
    params = {
        -- Vehicle,
        [0] = "2108255104097328563",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_18()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|1804991953");
    l0:SetConnections({
        -- OnSetInputEnabled,
        [19] = self.f_box_VehicleModifier_v2_45_OnSetInputEnabled,
    });
    params = {
        -- targets,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
    };
    return params;
end;

function export:OnEnter_box_DistanceCheckHurk_12()
    local params;
    params = {
        -- Car,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
        -- fDistanceFail,
        [1] = 60,
        -- fDistanceWarning,
        [2] = 30,
        -- FollowTarget,
        [3] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- oWarningMsg,
        [4] = {
            section = "Warning",
            item = "MIS_580_WARN_Hurk_too_far",
            id = "1034596",
        },
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|2023821828");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Fail",
            item = "MIS_580_CarExplode",
            id = "1021571",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|2076655633");
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
                [0] = self.f_box_OutputOrder_v2_11_Out_0,
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

function export:OnEnter_box_ActivityRetry_v2_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@OMNI_MIS_580_B10_main|2097385714");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Mission Generic Messages",
            item = "MSG_MISSION_EXITMISSIONZONE_FAILED",
            id = "869998",
        },
        -- Reload,
        [1] = true,
    };
    return params;
end;

function export:OnExit_box_CoopActivePlayers_46_TwoPlayers()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_46;
    l1 = self.box_ProximityTrigger_v3_42;
    l1:GetLuaBox().colliderFilterId = l0:GetDataOutValue(1);
end;

function export:OnExit_box_SetEntity_v2_14_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    Globals.OMNI_MIS_580_B10.eBLOGALCarB10 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_28_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.OMNI_MIS_580_B10.bComeOnMan = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_42_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_TeleportPawns_44;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_42_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_TeleportPawns_44;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_42_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_TeleportPawns_44;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_42_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_TeleportPawns_44;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_42_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_TeleportPawns_44;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v3_42_Use()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_42;
    l1 = self.box_TeleportPawns_44;
    l1:GetLuaBox().Pawns = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    Globals.OMNI_MIS_580_B10.bReload = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_v2_23_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_v2_23;
    Globals.OMNI_MIS_580_B10.eBLOGALHurkB10 = l0:GetDataOutValue(0);
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
