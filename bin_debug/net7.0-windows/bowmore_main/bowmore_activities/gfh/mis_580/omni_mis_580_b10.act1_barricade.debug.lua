LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/gfh/mis_580/omni_mis_580_b10.domino
-- User graph: Act1_Barricade
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/GetContextualAction.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/BoobyTrapModifier.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DiplayTextModifier_v6.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Hurk_walk_and_talk.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2202359790.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4033334705.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2790491358.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1633585098.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3698356956.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1043463955.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2079751113.bnk]], "CSoundResource");
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")] = {
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
                name = "CharacterId",
                type = "genericdb",
            },
            [1] = {
                name = "Marker",
                type = "entity",
            },
            [2] = {
                name = "ObjectiveId",
                type = "oasis",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "InCAIndex",
                type = "int",
            },
            [2] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "OutCAIndex",
                type = "int",
            },
            [1] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")] = {
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
                name = "pawnId",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "contextualActionId",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
                name = "ContextualActionIndex",
                type = "int",
            },
            [2] = {
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Bind_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Bind",
            },
            [1] = {
                name = "UnBind",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Bound",
                delayed = false,
            },
            [1] = {
                name = "UnBound",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "EntityA",
                type = "entity",
            },
            [2] = {
                name = "EntityB",
                type = "entity",
            },
            [3] = {
                name = "IsMultiBeatBind",
                type = "bool",
            },
            [4] = {
                name = "PositionOnly",
                type = "bool",
            },
            [5] = {
                name = "RemoveOffset",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BoobyTrapModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Activate",
            },
            [1] = {
                name = "Disable",
            },
            [2] = {
                name = "Enable",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Activated",
                delayed = false,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "vehicleEntity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")] = {
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
                name = "Entities",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/DiplayTextModifier_v6.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ClearText",
            },
            [1] = {
                name = "DisplayText",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "TextCleared",
                delayed = false,
            },
            [1] = {
                name = "TextDisplayed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "displayOverCinematic",
                type = "bool",
            },
            [1] = {
                name = "displayTimer",
                type = "float",
            },
            [2] = {
                name = "forceInstantDisplay",
                type = "bool",
            },
            [3] = {
                name = "isKarmaEvent",
                type = "bool",
            },
            [4] = {
                name = "textId",
                type = "oasis",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetPawnVehicleInfo.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InVehicle",
                delayed = false,
            },
            [1] = {
                name = "NotInVehicle",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "seatType",
                type = "string",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
            [3] = {
                name = "vehicleType",
                type = "string",
            },
        },
        dataOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/MultipleAND_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Condition",
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
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "AutoReset",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/PlayDialog_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CancelQueued",
            },
            [1] = {
                name = "PlayDialog",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "FinishedInterrupted",
                delayed = true,
            },
            [2] = {
                name = "QueueCancelled",
                delayed = false,
            },
            [3] = {
                name = "Queued",
                delayed = true,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "StartedPriorityFailed",
                delayed = true,
            },
            [6] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/StaticBreakableListener.lua")] = {
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
                name = "OnBreak",
                delayed = true,
            },
            [3] = {
                name = "OnBreakAll",
                delayed = true,
            },
            [4] = {
                name = "OnDamage",
                delayed = true,
            },
            [5] = {
                name = "OnHit",
                delayed = true,
            },
            [6] = {
                name = "OnStateChanged",
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
                name = "entity",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "instigatorID",
                type = "entity",
            },
            [1] = {
                name = "stateID",
                type = "int",
            },
            [2] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/TriggerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsUnusable",
            },
            [1] = {
                name = "SetAsUsable",
            },
            [2] = {
                name = "SetDisabled",
            },
            [3] = {
                name = "SetEnabled",
            },
        },
        controlInCount = 4,
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
                name = "OnSetUnusable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUsable",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "CheckAngle",
                type = "bool",
            },
            [1] = {
                name = "CheckLookAt",
                type = "bool",
            },
            [2] = {
                name = "Trigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Hurk_walk_and_talk.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Hurk_Start_Talking",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Hurk_done_Talking",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "Act1_Barricade";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade";
    self.Finished = DummyFunction;
    self.WarpZone = DummyFunction;
    self.Player_In_Car = DummyFunction;
    self.fReinforcementDelay = 0;
    self.bStopReinforcement = false;
    self.eHurkID = nil;
    self.fFirstGetVehicleSpeed = 0;
    self.iCountFirstTime = 0;
    self.eInstigatorID = nil;
    self.bShutUpHurk = false;
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|165761752");
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
                [0] = self.f_box_OnceOnly_v3_33_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|172762124");
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
        [0] = self.f_box_MultipleOR_35_Out,
    });
    self.box_MultipleOR_141 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_141");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|179626479");
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
        [0] = self.f_box_MultipleOR_141_Out,
    });
    self.box_MultipleOR_118 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_118");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|254286763");
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
        [0] = self.f_box_MultipleOR_118_Out,
    });
    self.box_ProximityTrigger_v3_150 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_150");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|344727272");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_150_Enter,
    });
    self.box_OnceOnly_v3_54 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|345983639");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_54_Out_0,
            },
            count = 2,
        },
    });
    self.box_Bind_v4_61 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|360547088");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_61_Bound,
    });
    self.box_MultipleOR_1 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|433397650");
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
    self.box_OnceOnly_v3_143 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_143");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|462631067");
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
                [0] = self.f_box_OnceOnly_v3_143_Out_0,
            },
            count = 1,
        },
    });
    self.box_PlayDialog_v6_120 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_120");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|507009438");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_120_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_120_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_120_StartedPriorityFailed,
    });
    self.box_Delay_v5_112 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_112");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|607399483");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_112_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_112_TimeElapsed,
    });
    self.box_OnceOnly_v3_27 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|611464675");
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
                [0] = self.f_box_OnceOnly_v3_27_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_32 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|682845947");
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
        [0] = self.f_box_MultipleOR_32_Out,
    });
    self.box_Hurk_walk_and_talk_9 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/GFH/MIS_580/OMNI_MIS_580_B10.Hurk_walk_and_talk.debug.lua");
    l0 = self.box_Hurk_walk_and_talk_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Hurk_walk_and_talk_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|730440799");
    l0:SetConnections({
        -- Hurk_done_Talking,
        [0] = self.f_box_Hurk_walk_and_talk_9_Hurk_done_Talking,
    });
    self.box_MultipleAND_v2_15 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|766049411");
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
        [0] = self.f_box_MultipleAND_v2_15_Out,
    });
    self.box_VehicleListener_v3_36 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|772941506");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_36_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_36_OnSit,
    });
    self.box_MultipleOR_137 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_137");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|788675546");
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
        [0] = self.f_box_MultipleOR_137_Out,
    });
    self.box_StaticBreakableListener_138 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_138");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|911080936");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_138_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_138_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_138_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_138_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_138_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_138_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_138_OnStateChanged,
    });
    self.box_SpawnAI_161 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_161");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|923322685");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_161_Out,
    });
    self.box_Bind_v4_45 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|927074485");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_45_Bound,
    });
    self.box_ContextualActionListener_13 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1023803328");
    l0:SetConnections({
        -- Available,
        [0] = self.f_box_ContextualActionListener_13_Available,
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_13_Enabled,
    });
    self.box_CoopActivePlayers_2 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1028501810");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_2_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_2_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_2_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_2_TwoPlayers,
    });
    self.box_SpawnAI_160 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_160");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1154287099");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_142 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_142;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_142");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1155505653");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_142_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_142_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_142_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_142_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_142_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_142_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_142_OnStateChanged,
    });
    self.box_PlayDialog_v6_145 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_145");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1215361863");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_37 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1288700185");
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
        [0] = self.f_box_MultipleAND_v2_37_Out,
    });
    self.box_ProximityTrigger_v3_11 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1297989835");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_11_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_11_Enter,
    });
    self.box_MultipleAND_v2_26 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1341444973");
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
        [0] = self.f_box_MultipleAND_v2_26_Out,
    });
    self.box_PlayDialog_v6_121 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_121");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1404629943");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_121_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_121_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_121_StartedPriorityFailed,
    });
    self.box_MultipleOR_119 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_119");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1440449927");
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
        [0] = self.f_box_MultipleOR_119_Out,
    });
    self.box_ProximityTrigger_v3_56 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1514009457");
    l0:SetConnections({
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v3_56_Leave,
        -- OnOccupied,
        [6] = self.f_box_ProximityTrigger_v3_56_OnOccupied,
    });
    self.box_PlayDialog_v6_149 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_149");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1582951967");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_149_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_149_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_149_StartedPriorityFailed,
    });
    self.box_VehicleListener_v3_133 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_133");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1599774348");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_133_Enabled,
        -- OnSit,
        [6] = self.f_box_VehicleListener_v3_133_OnSit,
    });
    self.box_PlayDialog_v6_151 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_151");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1603490478");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_39 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1633307668");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_39_Started,
    });
    self.box_ProximityTrigger_v3_152 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_152");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1670390102");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_152_Enter,
    });
    self.box_PlayDialog_v6_116 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_116");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1771388046");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_116_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_116_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_116_StartedPriorityFailed,
    });
    self.box_ProximityTrigger_v3_40 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1781871070");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_40_Enter,
    });
    self.box_StaticBreakableListener_140 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_140");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1928461665");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_140_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_140_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_140_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_140_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_140_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_140_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_140_OnStateChanged,
    });
    self.box_OnceOnly_v3_59 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2076861123");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_59_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2090402732");
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
        [0] = self.f_box_MultipleOR_49_Out,
    });
    self.box_Delay_v5_131 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_131");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2090899202");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_131_TimeElapsed,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2112339394");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
end;

function export:Entered()
    local params, l0;
    params = self:OnEnter_box_Simple_Node_100();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1177710639", "1177710639", "Act1_Barricade", "Entered", "box_Simple_Node_100.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_48();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1439614909", "1439614909", "Act1_Barricade", "box_Simple_Node_58.Out", "box_TriggerState_v2_48.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_BoobyTrapModifier_14();
    l0 = self.box_OnceOnly_v3_33;
    l1 = Boxes[GetPathID("Domino/System/BoobyTrapModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1124595970", "1124595970", "Act1_Barricade", "box_OnceOnly_v3_33.Out", "box_BoobyTrapModifier_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_35_Out()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_16();
    l0 = self.box_MultipleOR_35;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2086989639", "2086989639", "Act1_Barricade", "box_MultipleOR_35.Out", "box_VehicleModifier_v2_16.SetInputDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetInputDisabled
    l1:Exec(18, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_139();
    l0 = self.box_MultipleOR_141;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|948593129", "948593129", "Act1_Barricade", "box_MultipleOR_141.Out", "box_Compare_Entity_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|861214678", "861214678", "Act1_Barricade", "box_AddActivityObjective_v2_31.Out", "box_ActivityObjectiveMarkerModifier_v3_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_118_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_120();
    l0 = self.box_MultipleOR_118;
    l1 = self.box_PlayDialog_v6_120;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|51198835", "51198835", "Act1_Barricade", "box_MultipleOR_118.Out", "box_PlayDialog_v6_120.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_41_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_26();
    l0 = self.box_MultipleAND_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|389656966", "389656966", "Act1_Barricade", "box_UseContextualActionModifier_v3_41.UseCalled", "box_MultipleAND_v2_26.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ProximityTrigger_v3_150_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box_ProximityTrigger_v3_150;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|481661332", "481661332", "Act1_Barricade", "box_ProximityTrigger_v3_150.Enter", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_54_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_39();
    l0 = self.box_OnceOnly_v3_54;
    l1 = self.box_PlayDialog_v6_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1268832995", "1268832995", "Act1_Barricade", "box_OnceOnly_v3_54.Out", "box_PlayDialog_v6_39.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_132_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_131();
    l0 = self.box_Delay_v5_131;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1429920005", "1429920005", "Act1_Barricade", "box_UseContextualActionModifier_v3_132.Enabled", "box_Delay_v5_131.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Bind_v4_61_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_TriggerState_v2_48();
    l0 = self.box_Bind_v4_61;
    l1 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|669565051", "669565051", "Act1_Barricade", "box_Bind_v4_61.Bound", "box_TriggerState_v2_48.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_3_InVehicle()
    local params, l0;
    self:OnExit_box_GetPawnVehicleInfo_3_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    params = self:OnEnter_box_BoobyTrapModifier_7();
    l0 = Boxes[GetPathID("Domino/System/BoobyTrapModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|590262253", "590262253", "Act1_Barricade", "box_GetPawnVehicleInfo_3.InVehicle", "box_BoobyTrapModifier_7.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPawnVehicleInfo_3_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_3_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_3_Out()
    self:OnExit_box_GetPawnVehicleInfo_3_Out();
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|803995046", "803995046", "Act1_Barricade", "box_OutputOrder_v2_38.Out", "box_UseContextualActionModifier_v3_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_37();
    l0 = self.box_MultipleAND_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1347621192", "1347621192", "Act1_Barricade", "box_OutputOrder_v2_38.Out", "box_MultipleAND_v2_37.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_38_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1696041278", "1696041278", "Act1_Barricade", "box_OutputOrder_v2_38.Out", "box_Delay_v5_47.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPawnVehicleInfo_3();
    l0 = self.box_MultipleOR_1;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|601038433", "601038433", "Act1_Barricade", "box_MultipleOR_1.Out", "box_GetPawnVehicleInfo_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_143_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayTextModifier_v6_144();
    l0 = self.box_OnceOnly_v3_143;
    l1 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1852824447", "1852824447", "Act1_Barricade", "box_OnceOnly_v3_143.Out", "box_DisplayTextModifier_v6_144.DisplayText", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisplayText
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_154_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_155();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|104110003", "104110003", "Act1_Barricade", "box_AddActivityObjective_v2_154.Out", "box_ActivityObjectiveMarkerModifier_v3_155.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_120_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_120;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1921441797", "1921441797", "Act1_Barricade", "box_PlayDialog_v6_120.Finished", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_120_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_120;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1195474189", "1195474189", "Act1_Barricade", "box_PlayDialog_v6_120.FinishedInterrupted", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_120_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_120;
    l1 = self.box_MultipleOR_119;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|35898506", "35898506", "Act1_Barricade", "box_PlayDialog_v6_120.StartedPriorityFailed", "box_MultipleOR_119.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_DisplayTextModifier_v6_144_TextDisplayed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_142();
    l0 = self.box_StaticBreakableListener_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1817720147", "1817720147", "Act1_Barricade", "box_DisplayTextModifier_v6_144.TextDisplayed", "box_StaticBreakableListener_142.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_135();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|195078288", "195078288", "Act1_Barricade", "box_OutputOrder_v2_55.Out", "box_AddActivityObjective_v2_135.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1766401316", "1766401316", "Act1_Barricade", "box_OutputOrder_v2_55.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1708397911", "1708397911", "Act1_Barricade", "box_OutputOrder_v2_55.Out", "box_Delay_v5_47.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Compare_Entity_139_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_142();
    l0 = self.box_StaticBreakableListener_142;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|727918470", "727918470", "Act1_Barricade", "box_Compare_Entity_139.Equal", "box_StaticBreakableListener_142.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_112_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_43();
    l0 = self.box_Delay_v5_112;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1209941997", "1209941997", "Act1_Barricade", "box_Delay_v5_112.Started", "box_SetContextualStrategy_43.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_112_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_112;
    l1 = self.box_Hurk_walk_and_talk_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|419161774", "419161774", "Act1_Barricade", "box_Delay_v5_112.TimeElapsed", "box_Hurk_walk_and_talk_9.Hurk_Start_Talking", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hurk_Start_Talking
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_27_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_121();
    l0 = self.box_OnceOnly_v3_27;
    l1 = self.box_PlayDialog_v6_121;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|899690621", "899690621", "Act1_Barricade", "box_OnceOnly_v3_27.Out", "box_PlayDialog_v6_121.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_50_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_42();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1983366622", "1983366622", "Act1_Barricade", "box_UseContextualActionModifier_v3_50.Disabled", "box_SetContextualStrategy_42.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_50_ForceNormalEndCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_50();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|959563074", "959563074", "Act1_Barricade", "box_UseContextualActionModifier_v3_50.ForceNormalEndCalled", "box_UseContextualActionModifier_v3_50.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_40();
    l0 = self.box_ProximityTrigger_v3_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|488072746", "488072746", "Act1_Barricade", "box_OutputOrder_v2_18.Out", "box_ProximityTrigger_v3_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_32_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_32;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1746574248", "1746574248", "Act1_Barricade", "box_MultipleOR_32.Out", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleModifier_v2_34_OnSetAsUsable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_36();
    l0 = self.box_VehicleListener_v3_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1587582075", "1587582075", "Act1_Barricade", "box_VehicleModifier_v2_34.OnSetAsUsable", "box_VehicleListener_v3_36.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_21();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1645555514", "1645555514", "Act1_Barricade", "box_SetContextualStrategy_43.Out", "box_UseContextualActionModifier_v3_21.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Hurk_walk_and_talk_9_Hurk_done_Talking()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_26();
    l0 = self.box_Hurk_walk_and_talk_9;
    l1 = self.box_MultipleAND_v2_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|815264732", "815264732", "Act1_Barricade", "box_Hurk_walk_and_talk_9.Hurk_done_Talking", "box_MultipleAND_v2_26.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_GetContextualAction_51_Out()
    local params, l0;
    self:OnExit_box_GetContextualAction_51_Out();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_50();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1437345393", "1437345393", "Act1_Barricade", "box_GetContextualAction_51.Out", "box_UseContextualActionModifier_v3_50.CallForceNormalEnd", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallForceNormalEnd
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_15_Out()
    local l0;
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1198000210", "1198000210", "Act1_Barricade", "box_MultipleAND_v2_15.Out", "Player_In_Car", l0:GetLuaBox(), self);
    self:Player_In_Car();
end;

function export:f_box_VehicleListener_v3_36_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_132();
    l0 = self.box_VehicleListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1014192522", "1014192522", "Act1_Barricade", "box_VehicleListener_v3_36.Enabled", "box_UseContextualActionModifier_v3_132.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_36_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_37();
    l0 = self.box_VehicleListener_v3_36;
    l1 = self.box_MultipleAND_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1511385103", "1511385103", "Act1_Barricade", "box_VehicleListener_v3_36.OnSit", "box_MultipleAND_v2_37.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_137_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_137;
    l1 = self.box_OnceOnly_v3_143;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1033422222", "1033422222", "Act1_Barricade", "box_MultipleOR_137.Out", "box_OnceOnly_v3_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MissionBlockLayer_130_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_129();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|969670554", "969670554", "Act1_Barricade", "box_MissionBlockLayer_130.Activated", "box_SetContextualStrategy_129.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_135_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_136();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|906563946", "906563946", "Act1_Barricade", "box_AddActivityObjective_v2_135.Out", "box_ActivityObjectiveMarkerModifier_v3_136.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_149();
    l0 = self.box_PlayDialog_v6_149;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2057562405", "2057562405", "Act1_Barricade", "box_OutputOrder_v2_156.Out", "box_PlayDialog_v6_149.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_161();
    l0 = self.box_SpawnAI_161;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|162749620", "162749620", "Act1_Barricade", "box_OutputOrder_v2_156.Out", "box_SpawnAI_161.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_10_UseCalled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|591918161", "591918161", "Act1_Barricade", "box_UseContextualActionModifier_v3_10.UseCalled", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StaticBreakableListener_138_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_140();
    l0 = self.box_StaticBreakableListener_138;
    l1 = self.box_StaticBreakableListener_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1695798981", "1695798981", "Act1_Barricade", "box_StaticBreakableListener_138.Disabled", "box_StaticBreakableListener_140.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_138_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_140();
    l0 = self.box_StaticBreakableListener_138;
    l1 = self.box_StaticBreakableListener_140;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|223791723", "223791723", "Act1_Barricade", "box_StaticBreakableListener_138.Enabled", "box_StaticBreakableListener_140.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_138_OnBreak()
    self:OnExit_box_StaticBreakableListener_138_OnBreak();
end;

function export:f_box_StaticBreakableListener_138_OnBreakAll()
    self:OnExit_box_StaticBreakableListener_138_OnBreakAll();
end;

function export:f_box_StaticBreakableListener_138_OnDamage()
    self:OnExit_box_StaticBreakableListener_138_OnDamage();
end;

function export:f_box_StaticBreakableListener_138_OnHit()
    self:OnExit_box_StaticBreakableListener_138_OnHit();
end;

function export:f_box_StaticBreakableListener_138_OnStateChanged()
    local l0, l1;
    self:OnExit_box_StaticBreakableListener_138_OnStateChanged();
    l0 = self.box_StaticBreakableListener_138;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1629032724", "1629032724", "Act1_Barricade", "box_StaticBreakableListener_138.OnStateChanged", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_160();
    l0 = self.box_SpawnAI_161;
    l1 = self.box_SpawnAI_160;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1617301682", "1617301682", "Act1_Barricade", "box_SpawnAI_161.Out", "box_SpawnAI_160.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_45_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_61();
    l0 = self.box_Bind_v4_45;
    l1 = self.box_Bind_v4_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|683578804", "683578804", "Act1_Barricade", "box_Bind_v4_45.Bound", "box_Bind_v4_61.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_TriggerState_v2_48_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_56();
    l0 = self.box_ProximityTrigger_v3_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1568596607", "1568596607", "Act1_Barricade", "box_TriggerState_v2_48.Disabled", "box_ProximityTrigger_v3_56.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_TriggerState_v2_48_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_56();
    l0 = self.box_ProximityTrigger_v3_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|149612638", "149612638", "Act1_Barricade", "box_TriggerState_v2_48.Enabled", "box_ProximityTrigger_v3_56.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_ContextualActionListener_13_Available()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    l0 = self.box_ContextualActionListener_13;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1975443889", "1975443889", "Act1_Barricade", "box_ContextualActionListener_13.Available", "box_UseContextualActionModifier_v3_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_13_Enabled()
    local l0, l1;
    l0 = self.box_ContextualActionListener_13;
    l1 = self.box_OnceOnly_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|190242300", "190242300", "Act1_Barricade", "box_ContextualActionListener_13.Enabled", "box_OnceOnly_v3_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_2_PlayerAdded()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_2_PlayerAdded();
    l0 = self.box_CoopActivePlayers_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|922050230", "922050230", "Act1_Barricade", "box_CoopActivePlayers_2.PlayerAdded", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_CoopActivePlayers_2_PlayerRemoved()
    self:OnExit_box_CoopActivePlayers_2_PlayerRemoved();
end;

function export:f_box_CoopActivePlayers_2_TwoPlayers()
    local l0, l1;
    self:OnExit_box_CoopActivePlayers_2_TwoPlayers();
    l0 = self.box_CoopActivePlayers_2;
    l1 = self.box_MultipleOR_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2054433633", "2054433633", "Act1_Barricade", "box_CoopActivePlayers_2.TwoPlayers", "box_MultipleOR_1.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_41();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1458814458", "1458814458", "Act1_Barricade", "box_SetContextualStrategy_42.Out", "box_UseContextualActionModifier_v3_41.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_28_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_112();
    l0 = self.box_Delay_v5_112;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1421276786", "1421276786", "Act1_Barricade", "box_ActivityObjectiveMarkerModifier_v3_28.Enabled", "box_Delay_v5_112.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_StaticBreakableListener_142_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_138();
    l0 = self.box_StaticBreakableListener_142;
    l1 = self.box_StaticBreakableListener_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|367254752", "367254752", "Act1_Barricade", "box_StaticBreakableListener_142.Disabled", "box_StaticBreakableListener_138.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_142_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_StaticBreakableListener_138();
    l0 = self.box_StaticBreakableListener_142;
    l1 = self.box_StaticBreakableListener_138;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1250254996", "1250254996", "Act1_Barricade", "box_StaticBreakableListener_142.Enabled", "box_StaticBreakableListener_138.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_142_OnBreak()
    self:OnExit_box_StaticBreakableListener_142_OnBreak();
end;

function export:f_box_StaticBreakableListener_142_OnBreakAll()
    self:OnExit_box_StaticBreakableListener_142_OnBreakAll();
end;

function export:f_box_StaticBreakableListener_142_OnDamage()
    self:OnExit_box_StaticBreakableListener_142_OnDamage();
end;

function export:f_box_StaticBreakableListener_142_OnHit()
    self:OnExit_box_StaticBreakableListener_142_OnHit();
end;

function export:f_box_StaticBreakableListener_142_OnStateChanged()
    local l0, l1;
    self:OnExit_box_StaticBreakableListener_142_OnStateChanged();
    l0 = self.box_StaticBreakableListener_142;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|512696393", "512696393", "Act1_Barricade", "box_StaticBreakableListener_142.OnStateChanged", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|249434604", "249434604", "Act1_Barricade", "box_UseContextualActionModifier_v3_24.Disabled", "box_OutputOrder_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_24_InterruptCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_130();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|452442021", "452442021", "Act1_Barricade", "box_UseContextualActionModifier_v3_24.InterruptCalled", "box_MissionBlockLayer_130.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_21_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1881926654", "1881926654", "Act1_Barricade", "box_UseContextualActionModifier_v3_21.UseCalled", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_100_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_45();
    l0 = self.box_Bind_v4_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|442369346", "442369346", "Act1_Barricade", "box_Simple_Node_100.Out", "box_Bind_v4_45.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_MultipleAND_v2_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|701133703", "701133703", "Act1_Barricade", "box_MultipleAND_v2_37.Out", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_11_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_11;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1739030841", "1739030841", "Act1_Barricade", "box_ProximityTrigger_v3_11.Enabled", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_11_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_136();
    l0 = self.box_ProximityTrigger_v3_11;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1068622810", "1068622810", "Act1_Barricade", "box_ProximityTrigger_v3_11.Enter", "box_ActivityObjectiveMarkerModifier_v3_136.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BoobyTrapModifier_14_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BoobyTrapModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1598569794", "1598569794", "Act1_Barricade", "box_BoobyTrapModifier_14.Disabled", "box_AddActivityObjective_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_13();
    l0 = self.box_MultipleAND_v2_26;
    l1 = self.box_ContextualActionListener_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1281543343", "1281543343", "Act1_Barricade", "box_MultipleAND_v2_26.Out", "box_ContextualActionListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EndActivityObjective_v2_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_148();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1705419741", "1705419741", "Act1_Barricade", "box_EndActivityObjective_v2_17.Out", "box_OutputOrder_v2_148.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_10();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|515636444", "515636444", "Act1_Barricade", "box_SetContextualStrategy_5.Out", "box_UseContextualActionModifier_v3_10.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveFromGroup_v2_6_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_5();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|53219505", "53219505", "Act1_Barricade", "box_RemoveFromGroup_v2_6.Out", "box_SetContextualStrategy_5.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_23_OnSetAsUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2138377441", "2138377441", "Act1_Barricade", "box_VehicleModifier_v2_23.OnSetAsUnusable", "box_AddActivityObjective_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_121_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_121;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|243228957", "243228957", "Act1_Barricade", "box_PlayDialog_v6_121.Finished", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_121_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_121;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|941515695", "941515695", "Act1_Barricade", "box_PlayDialog_v6_121.FinishedInterrupted", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_121_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_121;
    l1 = self.box_MultipleOR_118;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|310496261", "310496261", "Act1_Barricade", "box_PlayDialog_v6_121.StartedPriorityFailed", "box_MultipleOR_118.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleModifier_v2_57_OnSetAsDestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_57();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1070590902", "1070590902", "Act1_Barricade", "box_VehicleModifier_v2_57.OnSetAsDestructible", "box_VehicleModifier_v2_57.SetExplosion", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetExplosion
    l0:Exec(17, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_57_OnSetExplosion()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_v2_60();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1949905370", "1949905370", "Act1_Barricade", "box_VehicleModifier_v2_57.OnSetExplosion", "box_ActivityRetry_v2_60.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_119_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_116();
    l0 = self.box_MultipleOR_119;
    l1 = self.box_PlayDialog_v6_116;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2098938960", "2098938960", "Act1_Barricade", "box_MultipleOR_119.Out", "box_PlayDialog_v6_116.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_56_Leave()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_57();
    l0 = self.box_ProximityTrigger_v3_56;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|80699066", "80699066", "Act1_Barricade", "box_ProximityTrigger_v3_56.Leave", "box_VehicleModifier_v2_57.SetAsDestructable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsDestructable
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_56_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_56;
    l1 = self.box_OnceOnly_v3_59;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|641356674", "641356674", "Act1_Barricade", "box_ProximityTrigger_v3_56.OnOccupied", "box_OnceOnly_v3_59.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_AddActivityObjective_v2_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|521492939", "521492939", "Act1_Barricade", "box_AddActivityObjective_v2_29.Out", "box_ActivityObjectiveMarkerModifier_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_149_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_149;
    l1 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2647583", "2647583", "Act1_Barricade", "box_PlayDialog_v6_149.Finished", "box_MultipleOR_137.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_149_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_149;
    l1 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1365589549", "1365589549", "Act1_Barricade", "box_PlayDialog_v6_149.FinishedInterrupted", "box_MultipleOR_137.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_149_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_149;
    l1 = self.box_MultipleOR_137;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1632424158", "1632424158", "Act1_Barricade", "box_PlayDialog_v6_149.StartedPriorityFailed", "box_MultipleOR_137.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_VehicleListener_v3_133_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_34();
    l0 = self.box_VehicleListener_v3_133;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1683393727", "1683393727", "Act1_Barricade", "box_VehicleListener_v3_133.Enabled", "box_VehicleModifier_v2_34.SetAsUsable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUsable
    l1:Exec(7, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_133_OnSit()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_VehicleListener_v3_133;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|144136938", "144136938", "Act1_Barricade", "box_VehicleListener_v3_133.OnSit", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_39_Started()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_PlayDialog_v6_39;
    l1 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2041454824", "2041454824", "Act1_Barricade", "box_PlayDialog_v6_39.Started", "box_MultipleAND_v2_15.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_30_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|441852579", "441852579", "Act1_Barricade", "box_ActivityObjectiveMarkerModifier_v3_30.Enabled", "box_MultipleOR_35.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v3_152_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_146();
    l0 = self.box_ProximityTrigger_v3_152;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|942327876", "942327876", "Act1_Barricade", "box_ProximityTrigger_v3_152.Enter", "box_OutputOrder_v2_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_148_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_152();
    l0 = self.box_ProximityTrigger_v3_152;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1702964415", "1702964415", "Act1_Barricade", "box_OutputOrder_v2_148.Out", "box_ProximityTrigger_v3_152.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_148_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_15();
    l0 = self.box_MultipleAND_v2_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1382868807", "1382868807", "Act1_Barricade", "box_OutputOrder_v2_148.Out", "box_MultipleAND_v2_15.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_148_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_150();
    l0 = self.box_ProximityTrigger_v3_150;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1225399312", "1225399312", "Act1_Barricade", "box_OutputOrder_v2_148.Out", "box_ProximityTrigger_v3_150.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_146_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_147();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|666820845", "666820845", "Act1_Barricade", "box_OutputOrder_v2_146.Out", "box_Print_v2_147.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_146_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_151();
    l0 = self.box_PlayDialog_v6_151;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|45988700", "45988700", "Act1_Barricade", "box_OutputOrder_v2_146.Out", "box_PlayDialog_v6_151.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_146_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|376255905", "376255905", "Act1_Barricade", "box_OutputOrder_v2_146.Out", "Finished", clone:GetLuaBox(), self);
    self:Finished();
end;

function export:f_box_Compare_Boolean_4_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_23();
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1075103904", "1075103904", "Act1_Barricade", "box_Compare_Boolean_4.A_is_False", "box_VehicleModifier_v2_23.SetAsUnusable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsUnusable
    l0:Exec(6, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_4_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1791441759", "1791441759", "Act1_Barricade", "box_Compare_Boolean_4.A_is_True", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_12_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_12();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1886555057", "1886555057", "Act1_Barricade", "box_UseContextualActionModifier_v3_12.Enabled", "box_UseContextualActionModifier_v3_12.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_116_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_116;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1659801922", "1659801922", "Act1_Barricade", "box_PlayDialog_v6_116.Finished", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_116_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_116;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|425673541", "425673541", "Act1_Barricade", "box_PlayDialog_v6_116.FinishedInterrupted", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_116_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_116;
    l1 = self.box_MultipleOR_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1472362055", "1472362055", "Act1_Barricade", "box_PlayDialog_v6_116.StartedPriorityFailed", "box_MultipleOR_32.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v3_40_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_GetContextualAction_51();
    l0 = self.box_ProximityTrigger_v3_40;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|831912072", "831912072", "Act1_Barricade", "box_ProximityTrigger_v3_40.Enter", "box_GetContextualAction_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_16_OnSetInputDisabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleListener_v3_133();
    l0 = self.box_VehicleListener_v3_133;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2117588415", "2117588415", "Act1_Barricade", "box_VehicleModifier_v2_16.OnSetInputDisabled", "box_VehicleListener_v3_133.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_140_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_145();
    l0 = self.box_StaticBreakableListener_140;
    l1 = self.box_PlayDialog_v6_145;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|267277522", "267277522", "Act1_Barricade", "box_StaticBreakableListener_140.Disabled", "box_PlayDialog_v6_145.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_140_OnBreak()
    self:OnExit_box_StaticBreakableListener_140_OnBreak();
end;

function export:f_box_StaticBreakableListener_140_OnBreakAll()
    self:OnExit_box_StaticBreakableListener_140_OnBreakAll();
end;

function export:f_box_StaticBreakableListener_140_OnDamage()
    self:OnExit_box_StaticBreakableListener_140_OnDamage();
end;

function export:f_box_StaticBreakableListener_140_OnHit()
    self:OnExit_box_StaticBreakableListener_140_OnHit();
end;

function export:f_box_StaticBreakableListener_140_OnStateChanged()
    local l0, l1;
    self:OnExit_box_StaticBreakableListener_140_OnStateChanged();
    l0 = self.box_StaticBreakableListener_140;
    l1 = self.box_MultipleOR_141;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|178720423", "178720423", "Act1_Barricade", "box_StaticBreakableListener_140.OnStateChanged", "box_MultipleOR_141.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_155_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1597669075", "1597669075", "Act1_Barricade", "box_ActivityObjectiveMarkerModifier_v3_155.Enabled", "box_RemoveFromGroup_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_24();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|644068380", "644068380", "Act1_Barricade", "box_OutputOrder_v2_52.Out", "box_UseContextualActionModifier_v3_24.CallInterrupt", clone:GetLuaBox(), l0:GetLuaBox());
    -- CallInterrupt
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_53();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2144784803", "2144784803", "Act1_Barricade", "box_OutputOrder_v2_52.Out", "box_UseContextualActionModifier_v3_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_EndActivityObjective_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|41563592", "41563592", "Act1_Barricade", "box_SetContextualStrategy_129.Out", "box_EndActivityObjective_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CoopActivePlayers_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|319637967", "319637967", "Act1_Barricade", "box_OutputOrder_v2_8.Out", "box_CoopActivePlayers_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_154();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2074986058", "2074986058", "Act1_Barricade", "box_OutputOrder_v2_8.Out", "box_AddActivityObjective_v2_154.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_59_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_4();
    l0 = self.box_OnceOnly_v3_59;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2130877181", "2130877181", "Act1_Barricade", "box_OnceOnly_v3_59.Out", "box_Compare_Boolean_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_49_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_49;
    l1 = self.box_OnceOnly_v3_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2053374676", "2053374676", "Act1_Barricade", "box_MultipleOR_49.Out", "box_OnceOnly_v3_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_131_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_132();
    l0 = self.box_Delay_v5_131;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|871688789", "871688789", "Act1_Barricade", "box_Delay_v5_131.TimeElapsed", "box_UseContextualActionModifier_v3_132.Use", l0:GetLuaBox(), l1:GetLuaBox());
    -- Use
    l1:Exec(4, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_47;
    l1 = self.box_MultipleOR_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|313816972", "313816972", "Act1_Barricade", "box_Delay_v5_47.TimeElapsed", "box_MultipleOR_49.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_136_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|310707794", "310707794", "Act1_Barricade", "box_ActivityObjectiveMarkerModifier_v3_136.Disabled", "box_ActivityObjectiveMarkerModifier_v3_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_136_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_11();
    l0 = self.box_ProximityTrigger_v3_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2038142019", "2038142019", "Act1_Barricade", "box_ActivityObjectiveMarkerModifier_v3_136.Enabled", "box_ProximityTrigger_v3_11.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|@StopCarDestructionFail");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_147");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|191855101");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 10,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Act1 Barricade FINISHED",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|201696556");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_31_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_Sit_In_Car",
            id = "1013036",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|321287597");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_41_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108182168768358655",
        -- Entity,
        [2] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|340046396");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2108311378457528159",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_ReachParkingLot",
            id = "1033576",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_150()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108185550157523485",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_132");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|357274519");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_132_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108213638079711283",
        -- Entity,
        [2] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_61()
    local params;
    params = {
        -- EntityA,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
        -- EntityB,
        [2] = "2109706762320911041",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|370521994");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_3_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_3_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_3_Out,
    });
    params = {
        -- pawn,
        [0] = Globals.OMNI_MIS_580_B10.ePlayer2CarID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|384839009");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
                [2] = self.f_box_OutputOrder_v2_38_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_154");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|480279854");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_154_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_Sit_In_Car",
            id = "1013036",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_120()
    local params;
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2790491358",
    };
    return params;
end;

function export:OnEnter_box_DisplayTextModifier_v6_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DiplayTextModifier_v6.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayTextModifier_v6_144");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|525772273");
    l0:SetConnections({
        -- TextDisplayed,
        [1] = self.f_box_DisplayTextModifier_v6_144_TextDisplayed,
    });
    params = {
        -- displayOverCinematic,
        [0] = false,
        -- displayTimer,
        [1] = 12,
        -- forceInstantDisplay,
        [2] = false,
        -- isKarmaEvent,
        [3] = false,
        -- textId,
        [4] = {
            section = "Dialogs",
            item = "MIS_580_TutoShootOrangeWall",
            id = "1021770",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|546450179");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
                [2] = self.f_box_OutputOrder_v2_55_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|590258993");
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

function export:OnEnter_box_Compare_Entity_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_139");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|590803878");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_139_Equal,
    });
    params = {
        -- Entity1,
        [0] = self.eInstigatorID,
        -- Entity2,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_112()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 4,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|618979739");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_50_Disabled,
        -- ForceNormalEndCalled,
        [2] = self.f_box_UseContextualActionModifier_v3_50_ForceNormalEndCalled,
    });
    params = {
        -- ContextualAction,
        [0] = self._sld_contextualActionId_box_GetContextualAction_51,
        -- Entity,
        [2] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|675344500");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|706585166");
    l0:SetConnections({
        -- OnSetAsUsable,
        [7] = self.f_box_VehicleModifier_v2_34_OnSetAsUsable,
    });
    params = {
        -- targets,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|717691161");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_43_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2109868210764398068",
        -- Group,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_GetContextualAction_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetContextualAction_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|757822803");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetContextualAction_51_Out,
    });
    params = {
        -- pawnId,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_15()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_36()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- vehicle,
        [4] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_130");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|807238595");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_130_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160306475631487",
        -- missionLayerId,
        [1] = "27160317349616068",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|814923224");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2109706762320911041",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_135");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|856786163");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_135_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_ReachParkingLot",
            id = "1033576",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|867878440");
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
                [0] = self.f_box_OutputOrder_v2_156_Out_0,
                [1] = self.f_box_OutputOrder_v2_156_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|876893441");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_10_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108182168768358655",
        -- Entity,
        [2] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_138()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2109315767280350065",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_161()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108241354592109420",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_45()
    local params;
    params = {
        -- EntityA,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
        -- EntityB,
        [2] = "2108184655126597487",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_BoobyTrapModifier_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BoobyTrapModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BoobyTrapModifier_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|979682266");
    l0:SetConnections({
    });
    params = {
        -- vehicleEntity,
        [0] = self._sld_vehicle_box_GetPawnVehicleInfo_3,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1017900611");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_48_Disabled,
        -- Enabled,
        [1] = self.f_box_TriggerState_v2_48_Enabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2110258365113316010",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_13()
    local params;
    params = {
        -- ContextualAction,
        [0] = "2108182168768358655",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1058080651");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_42_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108928716909326143",
        -- Group,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1075469034");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_28_Enabled,
    });
    params = {
        -- CharacterId,
        [0] = "9015206727351417",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_Follow_hurk",
            id = "1030275",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_160()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2108241351339426621",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_142()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2109315707756884847",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1159369240");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_24_Disabled,
        -- InterruptCalled,
        [3] = self.f_box_UseContextualActionModifier_v3_24_InterruptCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108182168768358655",
        -- Entity,
        [2] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1170385407");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_21_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2109868404136492536",
        -- Entity,
        [2] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_145()
    local params;
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "3698356956",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_100");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1273690404");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_100_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_37()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108184121160247614",
    };
    return params;
end;

function export:OnEnter_box_BoobyTrapModifier_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BoobyTrapModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BoobyTrapModifier_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1316892511");
    l0:SetConnections({
        -- Disabled,
        [1] = self.f_box_BoobyTrapModifier_14_Disabled,
    });
    params = {
        -- vehicleEntity,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_26()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1355086715");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_17_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_Sit_In_Car",
            id = "1013036",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1357131247");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_5_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108928716909326143",
        -- Group,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1366910741");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_6_Out,
    });
    params = {
        -- Entities,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- Group,
        [1] = "#D78DAAD3",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1379460109");
    l0:SetConnections({
        -- OnSetAsUnusable,
        [6] = self.f_box_VehicleModifier_v2_23_OnSetAsUnusable,
    });
    params = {
        -- targets,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_121()
    local params;
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "4033334705",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1427074322");
    l0:SetConnections({
        -- OnSetAsDestructible,
        [3] = self.f_box_VehicleModifier_v2_57_OnSetAsDestructible,
        -- OnSetExplosion,
        [17] = self.f_box_VehicleModifier_v2_57_OnSetExplosion,
    });
    params = {
        -- targets,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_56()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2110258365113316010",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1541814309");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_29_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_Follow_hurk",
            id = "1030275",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_149()
    local params;
    DrawTextToScreen("Comment: Use your guns to take out them barrier", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Use your guns to take out them barrier");
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2079751113",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_133()
    local params;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- SeatType,
        [3] = 1,
        -- vehicle,
        [4] = "2108255104097328563",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_151()
    local params;
    DrawTextToScreen("Comment: Just Keep Following the train tracks", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Just Keep Following the train tracks");
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 5,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1043463955",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_39()
    local params;
    DrawTextToScreen("Comment: Oh shit. That there thats the booby-trap", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v6')-- Comment: Oh shit. That there thats the booby-trap");
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 3,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2202359790",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1663199932");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_30_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108184655126597487",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_Sit_In_Car",
            id = "1013036",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_152()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2108184094708869434",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_148");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1716487781");
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
                [0] = self.f_box_OutputOrder_v2_148_Out_0,
                [3] = self.f_box_OutputOrder_v2_148_Out_3,
                [4] = self.f_box_OutputOrder_v2_148_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_146");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1723188905");
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
                [0] = self.f_box_OutputOrder_v2_146_Out_0,
                [2] = self.f_box_OutputOrder_v2_146_Out_2,
                [3] = self.f_box_OutputOrder_v2_146_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1723651045");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_4_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_4_A_is_True,
    });
    params = {
        -- A,
        [0] = Globals.OMNI_MIS_580_B10.bReload,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_12()
    local params, l0;
    DrawTextToScreen("Comment: Hurk is not using the fucking STP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UseContextualActionModifier_v3')-- Comment: Hurk is not using the fucking STP");
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1741156449");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_12_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108182168768358655",
        -- Entity,
        [2] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_116()
    local params;
    params = {
        -- Group,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- RelevancyTime,
        [1] = 4,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "1633585098",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109276581496111892",
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1797731623");
    l0:SetConnections({
        -- OnSetInputDisabled,
        [18] = self.f_box_VehicleModifier_v2_16_OnSetInputDisabled,
    });
    params = {
        -- targets,
        [0] = Globals.OMNI_MIS_580_B10.eBLOGALCarB10,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_140()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2109179686220216000",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_155");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|1997717534");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_155_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2108184655126597487",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_Sit_In_Car",
            id = "1013036",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2021024099");
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

function export:OnEnter_box_SetContextualStrategy_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_129");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2024000564");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_129_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108213660940765245",
        -- Group,
        [1] = Globals.OMNI_MIS_580_B10.eBLOGALHurkB10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2047965577");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_131()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_136");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\GFH\\MIS_580\\OMNI_MIS_580_B10.domino|@Act1_Barricade|2120443962");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_136_Disabled,
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_136_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2109691131953430280",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "MIS_580_B10_OBJ_ReachParkingLot",
            id = "1033576",
        },
    };
    return params;
end;

function export:OnExit_box_GetPawnVehicleInfo_3_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_3 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_3_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_3 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self._sld_vehicle_box_GetPawnVehicleInfo_3 = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetContextualAction_51_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/GetContextualAction.lua")];
    self._sld_contextualActionId_box_GetContextualAction_51 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_138_OnBreak()
    local l0;
    l0 = self.box_StaticBreakableListener_138;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_138_OnBreakAll()
    local l0;
    l0 = self.box_StaticBreakableListener_138;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_138_OnDamage()
    local l0;
    l0 = self.box_StaticBreakableListener_138;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_138_OnHit()
    local l0;
    l0 = self.box_StaticBreakableListener_138;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_138_OnStateChanged()
    local l0;
    l0 = self.box_StaticBreakableListener_138;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_2_PlayerAdded()
    local l0;
    l0 = self.box_CoopActivePlayers_2;
    Globals.OMNI_MIS_580_B10.ePlayer2CarID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_2_PlayerRemoved()
    local l0;
    l0 = self.box_CoopActivePlayers_2;
    Globals.OMNI_MIS_580_B10.ePlayer2CarID = l0:GetDataOutValue(2);
end;

function export:OnExit_box_CoopActivePlayers_2_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_2;
    Globals.OMNI_MIS_580_B10.ePlayer2CarID = l0:GetDataOutValue(1);
end;

function export:OnExit_box_StaticBreakableListener_142_OnBreak()
    local l0;
    l0 = self.box_StaticBreakableListener_142;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_142_OnBreakAll()
    local l0;
    l0 = self.box_StaticBreakableListener_142;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_142_OnDamage()
    local l0;
    l0 = self.box_StaticBreakableListener_142;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_142_OnHit()
    local l0;
    l0 = self.box_StaticBreakableListener_142;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_142_OnStateChanged()
    local l0;
    l0 = self.box_StaticBreakableListener_142;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_140_OnBreak()
    local l0;
    l0 = self.box_StaticBreakableListener_140;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_140_OnBreakAll()
    local l0;
    l0 = self.box_StaticBreakableListener_140;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_140_OnDamage()
    local l0;
    l0 = self.box_StaticBreakableListener_140;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_140_OnHit()
    local l0;
    l0 = self.box_StaticBreakableListener_140;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_140_OnStateChanged()
    local l0;
    l0 = self.box_StaticBreakableListener_140;
    self.eInstigatorID = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Finished()
    
end;
function export:WarpZone()
    
end;
function export:Player_In_Car()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Entered" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Finished" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="Player_In_Car" AnchorDynType="0" IsDelayed="0" />
		<ControlOut Name="WarpZone" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
