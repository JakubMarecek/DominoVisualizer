LUACml -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni04/uni04_intro.domino
-- User graph: UNI04_INTRO
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/BurnableObjectListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/IsEntityInGroup.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetHealthState.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PawnInvincibleState_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TriggerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInterationListener.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[468584310.bnk]], "CSoundResource");
        cboxRes:LoadResource([[235051865.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3518623951.bnk]], "CSoundResource");
        cboxRes:LoadResource([[318212496.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3440398239.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2140228884.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3248700444.bnk]], "CSoundResource");
        cboxRes:LoadResource([[151334223.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO.UNI04_INTRO.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua")] = {
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
                name = "NextMarker",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "fMarkerHeight",
                type = "float",
            },
            [2] = {
                name = "Mission_Objective",
                type = "oasis",
            },
            [3] = {
                name = "Mobile_Marker",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua")] = {
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
                name = "ExtraMarkers",
                delayed = false,
            },
            [2] = {
                name = "ObjectDestroyed",
                delayed = false,
            },
            [3] = {
                name = "Started",
                delayed = false,
            },
            [4] = {
                name = "Success",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "Destroy_Group",
                type = "group",
            },
            [2] = {
                name = "has_ProgressBar",
                type = "bool",
            },
            [3] = {
                name = "Mission_Objective",
                type = "oasis",
            },
            [4] = {
                name = "opt_Marker_MissionArea",
                type = "entity",
            },
            [5] = {
                name = "Success_Percentage",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua")] = {
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
                name = "Started",
                delayed = false,
            },
            [2] = {
                name = "Success",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "b_CompletePreviousObjective",
                type = "bool",
            },
            [1] = {
                name = "b_EntityIsProximityTrigger",
                type = "bool",
            },
            [2] = {
                name = "b_SkipObjectiveFlow",
                type = "bool",
            },
            [3] = {
                name = "e_EntityToInteractWith",
                type = "entity",
            },
            [4] = {
                name = "e_ObjectiveMarker",
                type = "entity",
            },
            [5] = {
                name = "InteractionHUD",
                type = "oasis",
            },
            [6] = {
                name = "o_ObjectiveText",
                type = "oasis",
            },
        },
        dataInCount = 7,
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityFact.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "GetFact",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FactNotSet",
                delayed = false,
            },
            [1] = {
                name = "FactSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ActivityIDOrEncounterPrefabID",
                type = "genericdb",
            },
            [1] = {
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Activity/SetActivityFact.lua")] = {
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
                name = "Fact",
                type = "string",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                type = "string",
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
    metadataTable[GetPathID("Domino/System/BurnableObjectListener_v2.lua")] = {
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
                name = "AlmostBurnedOut",
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
                name = "StartedBurning",
                delayed = true,
            },
            [4] = {
                name = "StoppedBurning",
                delayed = true,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "checkOnEnable",
                type = "bool",
            },
            [2] = {
                name = "objectId",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "targetID",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "False",
                delayed = false,
            },
            [1] = {
                name = "True",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity",
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
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
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
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GetHealthState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Critical",
                delayed = false,
            },
            [1] = {
                name = "Dead",
                delayed = false,
            },
            [2] = {
                name = "Down",
                delayed = false,
            },
            [3] = {
                name = "Healthy",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Health",
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
    metadataTable[GetPathID("Domino/System/GroupSizeListener_v5.lua")] = {
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
                name = "MemberAdded",
                delayed = true,
            },
            [3] = {
                name = "MemberRemoved",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "memberCount",
                type = "int",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/PawnInvincibleState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetInvincible",
            },
            [1] = {
                name = "UnsetInvincible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSet",
                delayed = false,
            },
            [1] = {
                name = "OnUnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pawn",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Switch.lua")] = {
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
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "OutputNb",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Interrupted",
                delayed = true,
            },
            [2] = {
                name = "Restarted",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "eLarry",
                type = "entity",
            },
            [1] = {
                name = "Mandatory",
                type = "bool",
            },
            [2] = {
                name = "SoundId",
                type = "Sound",
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
    self._name = "UNI04_INTRO";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO";
    self.ePlayer = nil;
    self.eLarry = nil;
    self.gPlayerGroup = nil;
    self.i_GeneratorRemaining = 0;
    self.box_BaseMissionBlock_v2_91 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|36301731");
    l0:SetConnections({
    });
    self.box_Delay_v5_73 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|61304830");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_73_TimeElapsed,
    });
    self.box_EntityStatusListener_46 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|68438910");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_46_Loaded,
    });
    self.box_Brick_Interact_With_Object_V5_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|106697409");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_6_Success,
    });
    self.box_EntityStatusListener_132 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|122002661");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_132_Loaded,
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|133662402");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_MultipleOR_98 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|150938249");
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
        [0] = self.f_box_MultipleOR_98_Out,
    });
    self.box_BurnableObjectListener_v2_125 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|152073532");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_125_AlmostBurnedOut,
    });
    self.box_CharacterLoadedIdListener_45 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|179279323");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_45_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_45_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_45_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_45_LoadedIdReceived,
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_56 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|188634949");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_56_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_56_Interrupted,
    });
    self.box_MultipleOR_156 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|200607776");
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
        [0] = self.f_box_MultipleOR_156_Out,
    });
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|204614885");
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
        [0] = self.f_box_MultipleOR_75_Out,
    });
    self.box_BurnableObjectListener_v2_118 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|219945332");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_118_AlmostBurnedOut,
    });
    self.box_MultipleOR_60 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|227890655");
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
        [0] = self.f_box_MultipleOR_60_Out,
    });
    self.box_EntityStatusListener_134 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|229756979");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_134_Loaded,
    });
    self.box_MultipleOR_70 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|286578962");
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
        [0] = self.f_box_MultipleOR_70_Out,
    });
    self.box_BurnableObjectListener_v2_119 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|288699643");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_119_AlmostBurnedOut,
    });
    self.box_Gate_v3_81 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|315134860");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_81_Out,
    });
    self.box_ProximityRadiusListener_v3_100 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|327987256");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_100_SomeoneNear,
    });
    self.box_OnceOnly_v3_117 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|338042254");
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
                [0] = self.f_box_OnceOnly_v3_117_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_18 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|370054673");
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
                [0] = self.f_box_OnceOnly_v3_18_Out_0,
            },
            count = 2,
        },
    });
    self.box_BaseMissionBlock_v2_96 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|398466848");
    l0:SetConnections({
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|400191014");
    l0:SetConnections({
    });
    self.box_MultipleOR_106 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|416996141");
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
        [0] = self.f_box_MultipleOR_106_Out,
    });
    self.box_Brick_Destroy_ObjectsVehicles_MAIN_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_MAIN.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_MAIN_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|422477860");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_13_Started,
        -- Success,
        [4] = self.f_box_Brick_Destroy_ObjectsVehicles_MAIN_13_Success,
    });
    self.box_EntityStatusListener_51 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|505476889");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_51_Loaded,
    });
    self.box_NavLinkModifier_49 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|530241479");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_64 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|560489004");
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
                [0] = self.f_box_OnceOnly_v3_64_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_141 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|606854926");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_141_Out,
    });
    self.box_UniversalInteractionListener_129 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|610415618");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_129_Interacted,
    });
    self.box_StartCelebration_131 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|651143344");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_131_Ended,
    });
    self.box_UniversalInteractionModifier_v2_138 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|665999675");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_93 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|690423168");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_93_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_93_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_93_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_93_MemberRemoved,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|718422985");
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
        [0] = self.f_box_MultipleOR_82_Out,
    });
    self.box_ProximityRadiusListener_v3_34 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|721297350");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_34_AllFar,
    });
    self.box_NavLinkModifier_42 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|751371286");
    l0:SetConnections({
    });
    self.box_BaseMissionBlock_v2_95 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|754766813");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_95_Disabled,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|762357949");
    l0:SetConnections({
    });
    self.box_BaseMissionBlock_v2_22 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|767885128");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_22_Disabled,
    });
    self.box_Brick_Interact_With_Object_V5_12 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|779205559");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_12_Success,
    });
    self.box_HealthListener_v6_162 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|819601476");
    l0:SetConnections({
        -- Revived,
        [7] = self.f_box_HealthListener_v6_162_Revived,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|825982294");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_OnceOnly_v3_148 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|844300650");
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
                [0] = self.f_box_OnceOnly_v3_148_Out_0,
            },
            count = 2,
        },
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_63 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|858702225");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_63_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_63_Interrupted,
    });
    self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Destroy_Object.Brick_Destroy_ObjectsVehicles_ExtraMarker_v3.debug.lua");
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|893943777");
    l0:SetConnections({
    });
    self.box_MultipleOR_102 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|905832421");
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
        [0] = self.f_box_MultipleOR_102_Out,
    });
    self.box_OnceOnly_v3_109 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|937603180");
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
                [0] = self.f_box_OnceOnly_v3_109_Out_0,
            },
            count = 2,
        },
    });
    self.box_GroupSizeListener_v5_1 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1012449916");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_1_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_1_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_1_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_1_MemberRemoved,
    });
    self.box_OnceOnly_v3_87 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1024530519");
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
                [0] = self.f_box_OnceOnly_v3_87_Out_0,
            },
            count = 2,
        },
    });
    self.box_UniversalInteractionModifier_v2_136 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1074539372");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_41 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1107955056");
    l0:SetConnections({
    });
    self.box_Switch_68 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1124123603");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 5,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_68_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_68_Output_0,
                [1] = self.f_box_Switch_68_Output_1,
                [2] = self.f_box_Switch_68_Output_2,
                [3] = self.f_box_Switch_68_Output_3,
                [4] = self.f_box_Switch_68_Output_4,
            },
            count = 5,
        },
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1132832158");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1150967272");
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
        [0] = self.f_box_MultipleOR_59_Out,
    });
    self.box_OnceOnly_v3_116 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1158816476");
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
                [0] = self.f_box_OnceOnly_v3_116_Out_0,
            },
            count = 2,
        },
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_62 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1166045688");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_62_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_62_Interrupted,
    });
    self.box_Delay_v5_74 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1196407676");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_74_TimeElapsed,
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_97 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1285246291");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_97_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_97_Interrupted,
    });
    self.box_OnceOnly_v3_164 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1309807494");
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
                [0] = self.f_box_OnceOnly_v3_164_Out_0,
            },
            count = 2,
        },
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_154 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_154;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1324089913");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_154_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_154_Interrupted,
    });
    self.box_MultipleOR_153 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1332550409");
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
        [0] = self.f_box_MultipleOR_153_Out,
    });
    self.box_StaticBreakableListener_107 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1360826561");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_107_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_107_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_107_OnBreak,
    });
    self.box_OnceOnly_v3_144 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1374357250");
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
                [0] = self.f_box_OnceOnly_v3_144_Out_0,
            },
            count = 2,
        },
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_27 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1398974367");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_27_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_27_Interrupted,
    });
    self.box_StaticBreakableListener_31 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1400327967");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_31_OnBreak,
    });
    self.box_MultipleOR_114 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1416840292");
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
        [0] = self.f_box_MultipleOR_114_Out,
    });
    self.box_BaseMissionBlock_v2_104 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1421673214");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_104_Disabled,
    });
    self.box_GroupSizeListener_v5_143 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1462985888");
    l0:SetConnections({
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_143_MemberRemoved,
    });
    self.box_MultipleOR_115 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1496256281");
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
        [0] = self.f_box_MultipleOR_115_Out,
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1509719624");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
    self.box_EntityStatusListener_40 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1530112042");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_40_Loaded,
    });
    self.box_BaseMissionBlock_v2_103 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1532621966");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_103_Disabled,
    });
    self.box_OnceOnly_v3_69 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1567833682");
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
                [0] = self.f_box_OnceOnly_v3_69_Out_0,
            },
            count = 2,
        },
    });
    self.box_NavLinkModifier_48 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1600129511");
    l0:SetConnections({
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_67 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1604944747");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_67_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_67_Interrupted,
    });
    self.box_MultipleOR_80 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1627271597");
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
        [0] = self.f_box_MultipleOR_80_Out,
    });
    self.box_UniversalInteractionListener_99 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1647919567");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_99_Interacted,
    });
    self.box_OnceOnly_v3_161 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1654543216");
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
                [0] = self.f_box_OnceOnly_v3_161_Out_0,
            },
            count = 2,
        },
    });
    self.box_ActivityAcknowledgeGate_52 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1690544601");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_52_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_52_Reloaded,
    });
    self.box_OnceOnly_v3_145 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1699560438");
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
                [0] = self.f_box_OnceOnly_v3_145_Out_0,
            },
            count = 2,
        },
    });
    self.box_Delay_v5_89 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1700695547");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_89_TimeElapsed,
    });
    self.box_StaticBreakableListener_112 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1714474795");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_112_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_112_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_112_OnBreak,
    });
    self.box_EntityStatusListener_44 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1716903365");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_44_Loaded,
    });
    self.box_MultipleOR_146 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_146;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1727742767");
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
        [0] = self.f_box_MultipleOR_146_Out,
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_65 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1839932198");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_65_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_65_Interrupted,
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_83 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1859502066");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_83_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_83_Interrupted,
    });
    self.box_MultipleOR_78 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1908717021");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 6,
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
        [0] = self.f_box_MultipleOR_78_Out,
    });
    self.box_EntityStatusListener_33 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1920834857");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_33_Loaded,
    });
    self.box_UniversalInteractionModifier_v2_137 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1932158896");
    l0:SetConnections({
    });
    self.box_UniversalInteractionListener_127 = cbox:CreateBox("Domino/System/UniversalInterationListener.lua");
    l0 = self.box_UniversalInteractionListener_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionListener_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1951936392");
    l0:SetConnections({
        -- Interacted,
        [2] = self.f_box_UniversalInteractionListener_127_Interacted,
    });
    self.box_ActivityInitialized_9 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1958749583");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_9_Out,
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1992566680");
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
        [0] = self.f_box_MultipleOR_77_Out,
    });
    self.box_MultipleOR_79 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2006580433");
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
        [0] = self.f_box_MultipleOR_79_Out,
    });
    self.box__UNI04_Brick_PlayDialog_Relax_Healthy_66 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_INTRO._UNI04_Brick_PlayDialog_Relax_Healthy.debug.lua");
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box__UNI04_Brick_PlayDialog_Relax_Healthy_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2011981011");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_66_Finished,
        -- Interrupted,
        [1] = self.f_box__UNI04_Brick_PlayDialog_Relax_Healthy_66_Interrupted,
    });
    self.box_StaticBreakableListener_120 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2012795593");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_120_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_120_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_120_OnBreak,
    });
    self.box_MultipleOR_72 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2035147135");
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
        [0] = self.f_box_MultipleOR_72_Out,
    });
    self.box_Brick_Interact_With_Object_V5_5 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2056817043");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_5_Success,
    });
    self.box_EntityStatusListener_135 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2097365676");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_135_Loaded,
    });
    self.box_MultipleOR_159 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2106202318");
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
        [0] = self.f_box_MultipleOR_159_Out,
    });
    self.box_Delay_v5_150 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2145025159");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_150_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|604833861", "604833861", "UNI04_INTRO", "In", "box_OutputOrder_v2_50.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_SetActivityFact_168();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1404005583", "1404005583", "UNI04_INTRO", "OnLeaveZone", "box_SetActivityFact_168.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_171_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|744440969", "744440969", "UNI04_INTRO", "box_Simple_Node_171.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_90_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|255173329", "255173329", "UNI04_INTRO", "box_Simple_Node_90.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Simple_Node_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1532305065", "1532305065", "UNI04_INTRO", "box_Simple_Node_38.Out", "box_OutputOrder_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_Gate_v3_81();
    l0 = self.box_Gate_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|213596567", "213596567", "UNI04_INTRO", "box_Simple_Node_38.Out", "box_Gate_v3_81.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v5_93();
    l0 = self.box_GroupSizeListener_v5_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2110543763", "2110543763", "UNI04_INTRO", "box_Simple_Node_38.Out", "box_GroupSizeListener_v5_93.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_141();
    l0 = self.box_Gate_v3_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1829540824", "1829540824", "UNI04_INTRO", "box_Simple_Node_38.Out", "box_Gate_v3_141.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_34();
    l0 = self.box_ProximityRadiusListener_v3_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|898736578", "898736578", "UNI04_INTRO", "box_Simple_Node_38.Out", "box_ProximityRadiusListener_v3_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_EntityStatusListener_33();
    l0 = self.box_EntityStatusListener_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|505318677", "505318677", "UNI04_INTRO", "box_Simple_Node_38.Out", "box_EntityStatusListener_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_84_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|306451036", "306451036", "UNI04_INTRO", "box_Simple_Node_84.Out", "box_MultipleOR_80.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_68();
    l0 = self.box_Switch_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1128720818", "1128720818", "UNI04_INTRO", "box_Simple_Node_85.Out", "box_Switch_68.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_149_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1821187234", "1821187234", "UNI04_INTRO", "box_Simple_Node_149.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_51();
    l0 = self.box_EntityStatusListener_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1106279328", "1106279328", "UNI04_INTRO", "box_OutputOrder_v2_47.Out", "box_EntityStatusListener_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_40();
    l0 = self.box_EntityStatusListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1812563432", "1812563432", "UNI04_INTRO", "box_OutputOrder_v2_47.Out", "box_EntityStatusListener_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_44();
    l0 = self.box_EntityStatusListener_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|702593211", "702593211", "UNI04_INTRO", "box_OutputOrder_v2_47.Out", "box_EntityStatusListener_44.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_46();
    l0 = self.box_EntityStatusListener_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|193789045", "193789045", "UNI04_INTRO", "box_OutputOrder_v2_47.Out", "box_EntityStatusListener_46.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_126_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_112();
    l0 = self.box_StaticBreakableListener_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|831453594", "831453594", "UNI04_INTRO", "box_OutputOrder_v2_126.Out", "box_StaticBreakableListener_112.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_126_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_99();
    l0 = self.box_UniversalInteractionListener_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1558331189", "1558331189", "UNI04_INTRO", "box_OutputOrder_v2_126.Out", "box_UniversalInteractionListener_99.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_73_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_73;
    l1 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|250315878", "250315878", "UNI04_INTRO", "box_Delay_v5_73.TimeElapsed", "box_MultipleOR_80.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_46_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_42();
    l0 = self.box_EntityStatusListener_46;
    l1 = self.box_NavLinkModifier_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1511267669", "1511267669", "UNI04_INTRO", "box_EntityStatusListener_46.Loaded", "box_NavLinkModifier_42.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_123_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_110();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1007784186", "1007784186", "UNI04_INTRO", "box_OutputOrder_v2_123.Out", "box_IsEntityInGroup_110.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_121();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|533872184", "533872184", "UNI04_INTRO", "box_OutputOrder_v2_123.Out", "box_IsEntityInGroup_121.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_123_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_122();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1225306439", "1225306439", "UNI04_INTRO", "box_OutputOrder_v2_123.Out", "box_IsEntityInGroup_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_6_Success()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_30();
    l0 = self.box_Brick_Interact_With_Object_V5_6;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|210801201", "210801201", "UNI04_INTRO", "box_Brick_Interact_With_Object_V5_6.Success", "box_RemoveFromGroup_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_110_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1317473493", "1317473493", "UNI04_INTRO", "box_IsEntityInGroup_110.True", "box_OutputOrder_v2_130.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_132_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_137();
    l0 = self.box_EntityStatusListener_132;
    l1 = self.box_UniversalInteractionModifier_v2_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|939884244", "939884244", "UNI04_INTRO", "box_EntityStatusListener_132.Loaded", "box_UniversalInteractionModifier_v2_137.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_21_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_21;
    l1 = self.box_OnceOnly_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1938399635", "1938399635", "UNI04_INTRO", "box_MultipleOR_21.Out", "box_OnceOnly_v3_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_65();
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1117042833", "1117042833", "UNI04_INTRO", "box_OutputOrder_v2_101.Out", "box__UNI04_Brick_PlayDialog_Relax_Healthy_65.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_89();
    l0 = self.box_Delay_v5_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1831920443", "1831920443", "UNI04_INTRO", "box_OutputOrder_v2_101.Out", "box_Delay_v5_89.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_98_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_98;
    l1 = self.box_OnceOnly_v3_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1774005884", "1774005884", "UNI04_INTRO", "box_MultipleOR_98.Out", "box_OnceOnly_v3_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BurnableObjectListener_v2_125_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_125;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2031026148", "2031026148", "UNI04_INTRO", "box_BurnableObjectListener_v2_125.AlmostBurnedOut", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CharacterLoadedIdListener_45_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_45_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_169();
    l0 = self.box_CharacterLoadedIdListener_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|496786330", "496786330", "UNI04_INTRO", "box_CharacterLoadedIdListener_45.LoadedIdReceived", "box_OutputOrder_v2_169.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_56_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_56;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|50782038", "50782038", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_56.Finished", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_56_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_56;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|657377942", "657377942", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_56.Interrupted", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_57();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1166161275", "1166161275", "UNI04_INTRO", "box_OutputOrder_v2_58.Out", "box_Print_v2_57.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|3560908", "3560908", "UNI04_INTRO", "box_OutputOrder_v2_58.Out", "box_ActivityAcknowledgeGate_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_156_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_156;
    l1 = self.box_OnceOnly_v3_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|427570031", "427570031", "UNI04_INTRO", "box_MultipleOR_156.Out", "box_OnceOnly_v3_69.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_75_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_75;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1528420902", "1528420902", "UNI04_INTRO", "box_MultipleOR_75.Out", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_BurnableObjectListener_v2_118_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_118;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1749558319", "1749558319", "UNI04_INTRO", "box_BurnableObjectListener_v2_118.AlmostBurnedOut", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_60_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_60;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1181736787", "1181736787", "UNI04_INTRO", "box_MultipleOR_60.Out", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_134_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_136();
    l0 = self.box_EntityStatusListener_134;
    l1 = self.box_UniversalInteractionModifier_v2_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|387841193", "387841193", "UNI04_INTRO", "box_EntityStatusListener_134.Loaded", "box_UniversalInteractionModifier_v2_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsEntityInGroup_7_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1458150506", "1458150506", "UNI04_INTRO", "box_IsEntityInGroup_7.False", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IsEntityInGroup_7_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|17948573", "17948573", "UNI04_INTRO", "box_IsEntityInGroup_7.True", "box_OnceOnly_v3_145.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_70_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_70;
    l1 = self.box_OnceOnly_v3_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|369565155", "369565155", "UNI04_INTRO", "box_MultipleOR_70.Out", "box_OnceOnly_v3_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BurnableObjectListener_v2_119_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_119;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2049218222", "2049218222", "UNI04_INTRO", "box_BurnableObjectListener_v2_119.AlmostBurnedOut", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_147_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|627609287", "627609287", "UNI04_INTRO", "box_Simple_Node_147.Out", "box_MultipleOR_146.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_68();
    l0 = self.box_Gate_v3_81;
    l1 = self.box_Switch_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|815790214", "815790214", "UNI04_INTRO", "box_Gate_v3_81.Out", "box_Switch_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_100_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = self.box_ProximityRadiusListener_v3_100;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1851295443", "1851295443", "UNI04_INTRO", "box_ProximityRadiusListener_v3_100.SomeoneNear", "box_OutputOrder_v2_101.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_117_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_111();
    l0 = self.box_OnceOnly_v3_117;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1458801021", "1458801021", "UNI04_INTRO", "box_OnceOnly_v3_117.Out", "box_RemoveFromGroup_v2_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_18_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_UseContextualActionModifier_v3_151();
    l0 = self.box_OnceOnly_v3_18;
    l1 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1078005673", "1078005673", "UNI04_INTRO", "box_OnceOnly_v3_18.Out", "box_UseContextualActionModifier_v3_151.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_132();
    l0 = self.box_EntityStatusListener_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|577985902", "577985902", "UNI04_INTRO", "box_OutputOrder_v2_139.Out", "box_EntityStatusListener_132.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_139_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_135();
    l0 = self.box_EntityStatusListener_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1752952333", "1752952333", "UNI04_INTRO", "box_OutputOrder_v2_139.Out", "box_EntityStatusListener_135.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_139_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_134();
    l0 = self.box_EntityStatusListener_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|899772416", "899772416", "UNI04_INTRO", "box_OutputOrder_v2_139.Out", "box_EntityStatusListener_134.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_106_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_106;
    l1 = self.box_OnceOnly_v3_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|372791749", "372791749", "UNI04_INTRO", "box_MultipleOR_106.Out", "box_OnceOnly_v3_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_105();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_13;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|125580911", "125580911", "UNI04_INTRO", "box_Brick_Destroy_ObjectsVehicles_MAIN_13.Started", "box_Simple_Node_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Destroy_ObjectsVehicles_MAIN_13_Success()
    local l0, l1;
    l0 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_13;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1817327908", "1817327908", "UNI04_INTRO", "box_Brick_Destroy_ObjectsVehicles_MAIN_13.Success", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TriggerState_v2_43_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1305774735", "1305774735", "UNI04_INTRO", "box_TriggerState_v2_43.Disabled", "box_Delay_v5_26.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_GetHealthState_160_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_162();
    l0 = self.box_HealthListener_v6_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|328963944", "328963944", "UNI04_INTRO", "box_GetHealthState_160.Down", "box_HealthListener_v6_162.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_160_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|936372493", "936372493", "UNI04_INTRO", "box_GetHealthState_160.Healthy", "box_MultipleOR_159.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_51_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_41();
    l0 = self.box_EntityStatusListener_51;
    l1 = self.box_NavLinkModifier_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|217541637", "217541637", "UNI04_INTRO", "box_EntityStatusListener_51.Loaded", "box_NavLinkModifier_41.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_11_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_88();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|520979884", "520979884", "UNI04_INTRO", "box_Compare_Integers_11.A_eq_B", "box_Simple_Node_88.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_11_A_ne_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_100();
    l0 = self.box_ProximityRadiusListener_v3_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1652037567", "1652037567", "UNI04_INTRO", "box_Compare_Integers_11.A_ne_B", "box_ProximityRadiusListener_v3_100.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_64_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17();
    l0 = self.box_OnceOnly_v3_64;
    l1 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1155642425", "1155642425", "UNI04_INTRO", "box_OnceOnly_v3_64.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_141_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_37();
    l0 = self.box_Gate_v3_141;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|653870612", "653870612", "UNI04_INTRO", "box_Gate_v3_141.Out", "box_ActivityRetry_37.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionListener_129_Interacted()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_129;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|190816892", "190816892", "UNI04_INTRO", "box_UniversalInteractionListener_129.Interacted", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_StartCelebration_131_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_StartCelebration_131;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|731160963", "731160963", "UNI04_INTRO", "box_StartCelebration_131.Ended", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_94_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_96();
    l0 = self.box_BaseMissionBlock_v2_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|143034938", "143034938", "UNI04_INTRO", "box_Compare_Integers_94.A_eq_B", "box_BaseMissionBlock_v2_96.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_GetPlayerGroup_v2_55_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_45();
    l0 = self.box_CharacterLoadedIdListener_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|3322552", "3322552", "UNI04_INTRO", "box_GetPlayerGroup_v2_55.Out", "box_CharacterLoadedIdListener_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityFact_170_FactSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_171();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|25517459", "25517459", "UNI04_INTRO", "box_GetActivityFact_170.FactSet", "box_Simple_Node_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_93_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_93_Enabled();
    l0 = self.box_GroupSizeListener_v5_93;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1324988458", "1324988458", "UNI04_INTRO", "box_GroupSizeListener_v5_93.Enabled", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_93_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_93_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_93_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_93_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_93;
    l1 = self.box_MultipleOR_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1704593578", "1704593578", "UNI04_INTRO", "box_GroupSizeListener_v5_93.MemberRemoved", "box_MultipleOR_102.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|341347877", "341347877", "UNI04_INTRO", "box_OutputOrder_v2_35.Out", "box_Simple_Node_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1094556953", "1094556953", "UNI04_INTRO", "box_OutputOrder_v2_35.Out", "box_ActivityEnd_29.EndNoSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndNoSave
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_82;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|695236896", "695236896", "UNI04_INTRO", "box_MultipleOR_82.Out", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_ProximityRadiusListener_v3_34_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_39();
    l0 = self.box_ProximityRadiusListener_v3_34;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1047044892", "1047044892", "UNI04_INTRO", "box_ProximityRadiusListener_v3_34.AllFar", "box_HealthModifier_v2_39.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_95_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_91();
    l0 = self.box_BaseMissionBlock_v2_95;
    l1 = self.box_BaseMissionBlock_v2_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|961023513", "961023513", "UNI04_INTRO", "box_BaseMissionBlock_v2_95.Disabled", "box_BaseMissionBlock_v2_91.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_BaseMissionBlock_v2_22_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_103();
    l0 = self.box_BaseMissionBlock_v2_22;
    l1 = self.box_BaseMissionBlock_v2_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|485396476", "485396476", "UNI04_INTRO", "box_BaseMissionBlock_v2_22.Disabled", "box_BaseMissionBlock_v2_103.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_Brick_Interact_With_Object_V5_12_Success()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_23();
    l0 = self.box_Brick_Interact_With_Object_V5_12;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|878424596", "878424596", "UNI04_INTRO", "box_Brick_Interact_With_Object_V5_12.Success", "box_RemoveFromGroup_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_39_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_141();
    l0 = self.box_Gate_v3_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1012165323", "1012165323", "UNI04_INTRO", "box_HealthModifier_v2_39.Damaged", "box_Gate_v3_141.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_HealthListener_v6_162_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_162;
    l1 = self.box_MultipleOR_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2061897954", "2061897954", "UNI04_INTRO", "box_HealthListener_v6_162.Revived", "box_MultipleOR_159.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_84();
    l0 = self.box_Delay_v5_76;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1305702857", "1305702857", "UNI04_INTRO", "box_Delay_v5_76.TimeElapsed", "box_Simple_Node_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_148_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_OnceOnly_v3_148;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1863129771", "1863129771", "UNI04_INTRO", "box_OnceOnly_v3_148.Out", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_63_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_63;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1184449767", "1184449767", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_63.Finished", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_63_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_63;
    l1 = self.box_MultipleOR_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1903442346", "1903442346", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_63.Interrupted", "box_MultipleOR_72.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_102_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_92();
    l0 = self.box_MultipleOR_102;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|254958846", "254958846", "UNI04_INTRO", "box_MultipleOR_102.Out", "box_Compare_Integers_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_109_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_113();
    l0 = self.box_OnceOnly_v3_109;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|977044179", "977044179", "UNI04_INTRO", "box_OnceOnly_v3_109.Out", "box_RemoveFromGroup_v2_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1769446931", "1769446931", "UNI04_INTRO", "box_OutputOrder_v2_140.Out", "box_Simple_Node_38.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_32();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2090301969", "2090301969", "UNI04_INTRO", "box_OutputOrder_v2_140.Out", "box_ActivityRetry_32.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_92_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_95();
    l0 = self.box_BaseMissionBlock_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2109473017", "2109473017", "UNI04_INTRO", "box_Compare_Integers_92.A_eq_B", "box_BaseMissionBlock_v2_95.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_92_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_94();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1151438644", "1151438644", "UNI04_INTRO", "box_Compare_Integers_92.A_gt_B", "box_Compare_Integers_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_92_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|785700185", "785700185", "UNI04_INTRO", "box_Compare_Integers_92.A_lt_B", "box_Simple_Node_108.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_1_Enabled()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_1_Enabled();
    params = self:OnEnter_box_Compare_Integers_11();
    l0 = self.box_GroupSizeListener_v5_1;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|274889247", "274889247", "UNI04_INTRO", "box_GroupSizeListener_v5_1.Enabled", "box_Compare_Integers_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_1_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_1_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_1_MemberRemoved()
    self:OnExit_box_GroupSizeListener_v5_1_MemberRemoved();
end;

function export:f_box_Simple_Node_108_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_90();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1713640296", "1713640296", "UNI04_INTRO", "box_Simple_Node_108.Out", "box_Simple_Node_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_87_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_150();
    l0 = self.box_OnceOnly_v3_87;
    l1 = self.box_Delay_v5_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1936648719", "1936648719", "UNI04_INTRO", "box_OnceOnly_v3_87.Out", "box_Delay_v5_150.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_IsEntityInGroup_4_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_5();
    l0 = self.box_Brick_Interact_With_Object_V5_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|640421737", "640421737", "UNI04_INTRO", "box_IsEntityInGroup_4.True", "box_Brick_Interact_With_Object_V5_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetHealthState_160();
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1517611697", "1517611697", "UNI04_INTRO", "box_OutputOrder_v2_86.Out", "box_GetHealthState_160.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|910261118", "910261118", "UNI04_INTRO", "box_OutputOrder_v2_86.Out", "box_MultipleOR_156.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|939459287", "939459287", "UNI04_INTRO", "box_Simple_Node_105.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Switch_68_None()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_66();
    l0 = self.box_Switch_68;
    l1 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|692315259", "692315259", "UNI04_INTRO", "box_Switch_68.None", "box__UNI04_Brick_PlayDialog_Relax_Healthy_66.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_68_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_83();
    l0 = self.box_Switch_68;
    l1 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1395268140", "1395268140", "UNI04_INTRO", "box_Switch_68.Output", "box__UNI04_Brick_PlayDialog_Relax_Healthy_83.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_68_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_27();
    l0 = self.box_Switch_68;
    l1 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|329175458", "329175458", "UNI04_INTRO", "box_Switch_68.Output", "box__UNI04_Brick_PlayDialog_Relax_Healthy_27.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_68_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_67();
    l0 = self.box_Switch_68;
    l1 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1720599694", "1720599694", "UNI04_INTRO", "box_Switch_68.Output", "box__UNI04_Brick_PlayDialog_Relax_Healthy_67.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_68_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_154();
    l0 = self.box_Switch_68;
    l1 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_154;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|791282282", "791282282", "UNI04_INTRO", "box_Switch_68.Output", "box__UNI04_Brick_PlayDialog_Relax_Healthy_154.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_68_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_97();
    l0 = self.box_Switch_68;
    l1 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|468560774", "468560774", "UNI04_INTRO", "box_Switch_68.Output", "box__UNI04_Brick_PlayDialog_Relax_Healthy_97.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_22();
    l0 = self.box_Delay_v5_26;
    l1 = self.box_BaseMissionBlock_v2_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|843162158", "843162158", "UNI04_INTRO", "box_Delay_v5_26.TimeElapsed", "box_BaseMissionBlock_v2_22.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_Simple_Node_88_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1457878940", "1457878940", "UNI04_INTRO", "box_Simple_Node_88.Out", "box_MultipleOR_21.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_59_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_59;
    l1 = self.box_ActivityInitialized_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|488422895", "488422895", "UNI04_INTRO", "box_MultipleOR_59.Out", "box_ActivityInitialized_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OnceOnly_v3_116_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_124();
    l0 = self.box_OnceOnly_v3_116;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1079176726", "1079176726", "UNI04_INTRO", "box_OnceOnly_v3_116.Out", "box_RemoveFromGroup_v2_124.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnInvincibleState_v2_8_OnUnSet()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_131();
    l0 = self.box_StartCelebration_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1173200600", "1173200600", "UNI04_INTRO", "box_PawnInvincibleState_v2_8.OnUnSet", "box_StartCelebration_131.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_62_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_62;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|288095512", "288095512", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_62.Finished", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_62_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_62;
    l1 = self.box_MultipleOR_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1426244128", "1426244128", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_62.Interrupted", "box_MultipleOR_98.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_74_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_63();
    l0 = self.box_Delay_v5_74;
    l1 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1138056958", "1138056958", "UNI04_INTRO", "box_Delay_v5_74.TimeElapsed", "box__UNI04_Brick_PlayDialog_Relax_Healthy_63.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_155_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1999888806", "1999888806", "UNI04_INTRO", "box_OutputOrder_v2_155.Out", "box_MultipleOR_78.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_OutputOrder_v2_155_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|825227264", "825227264", "UNI04_INTRO", "box_OutputOrder_v2_155.Out", "box_Simple_Node_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_107();
    l0 = self.box_StaticBreakableListener_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2015124267", "2015124267", "UNI04_INTRO", "box_OutputOrder_v2_130.Out", "box_StaticBreakableListener_107.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_129();
    l0 = self.box_UniversalInteractionListener_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1990010762", "1990010762", "UNI04_INTRO", "box_OutputOrder_v2_130.Out", "box_UniversalInteractionListener_129.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SetActivityFact_168_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_140();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1762300294", "1762300294", "UNI04_INTRO", "box_SetActivityFact_168.Out", "box_OutputOrder_v2_140.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_121_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_128();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1516786546", "1516786546", "UNI04_INTRO", "box_IsEntityInGroup_121.True", "box_OutputOrder_v2_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_97_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_97;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2124416462", "2124416462", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_97.Finished", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_97_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_97;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1227478106", "1227478106", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_97.Interrupted", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_41();
    l0 = self.box_NavLinkModifier_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|957427599", "957427599", "UNI04_INTRO", "box_OutputOrder_v2_53.Out", "box_NavLinkModifier_41.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_49();
    l0 = self.box_NavLinkModifier_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|778741951", "778741951", "UNI04_INTRO", "box_OutputOrder_v2_53.Out", "box_NavLinkModifier_49.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_48();
    l0 = self.box_NavLinkModifier_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1444704008", "1444704008", "UNI04_INTRO", "box_OutputOrder_v2_53.Out", "box_NavLinkModifier_48.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_42();
    l0 = self.box_NavLinkModifier_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|660162327", "660162327", "UNI04_INTRO", "box_OutputOrder_v2_53.Out", "box_NavLinkModifier_42.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_164_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_74();
    l0 = self.box_OnceOnly_v3_164;
    l1 = self.box_Delay_v5_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1251947262", "1251947262", "UNI04_INTRO", "box_OnceOnly_v3_164.Out", "box_Delay_v5_74.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_154_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_154;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1594644030", "1594644030", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_154.Finished", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_154_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_154;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1123952644", "1123952644", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_154.Interrupted", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_153_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_155();
    l0 = self.box_MultipleOR_153;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1346545426", "1346545426", "UNI04_INTRO", "box_MultipleOR_153.Out", "box_OutputOrder_v2_155.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_107_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_118();
    l0 = self.box_StaticBreakableListener_107;
    l1 = self.box_BurnableObjectListener_v2_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|17543485", "17543485", "UNI04_INTRO", "box_StaticBreakableListener_107.Disabled", "box_BurnableObjectListener_v2_118.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_107_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_118();
    l0 = self.box_StaticBreakableListener_107;
    l1 = self.box_BurnableObjectListener_v2_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|241717504", "241717504", "UNI04_INTRO", "box_StaticBreakableListener_107.Enabled", "box_BurnableObjectListener_v2_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_107_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_107;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1189375900", "1189375900", "UNI04_INTRO", "box_StaticBreakableListener_107.OnBreak", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_144_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14();
    l0 = self.box_OnceOnly_v3_144;
    l1 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1989602949", "1989602949", "UNI04_INTRO", "box_OnceOnly_v3_144.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_27_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_27;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|743811832", "743811832", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_27.Finished", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_27_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_27;
    l1 = self.box_MultipleOR_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|280211379", "280211379", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_27.Interrupted", "box_MultipleOR_79.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_31_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_28();
    l0 = self.box_StaticBreakableListener_31;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1734244083", "1734244083", "UNI04_INTRO", "box_StaticBreakableListener_31.OnBreak", "box_SetActivityFact_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_3();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1919041985", "1919041985", "UNI04_INTRO", "box_OutputOrder_v2_2.Out", "box_IsEntityInGroup_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_4();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1403470807", "1403470807", "UNI04_INTRO", "box_OutputOrder_v2_2.Out", "box_IsEntityInGroup_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_10();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1891152405", "1891152405", "UNI04_INTRO", "box_OutputOrder_v2_2.Out", "box_IsEntityInGroup_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_2_Out_3()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_146;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|350787048", "350787048", "UNI04_INTRO", "box_OutputOrder_v2_2.Out", "box_MultipleOR_146.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_2_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_31();
    l0 = self.box_StaticBreakableListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|116114339", "116114339", "UNI04_INTRO", "box_OutputOrder_v2_2.Out", "box_StaticBreakableListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_114_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_114;
    l1 = self.box_OnceOnly_v3_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1733390297", "1733390297", "UNI04_INTRO", "box_MultipleOR_114.Out", "box_OnceOnly_v3_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BaseMissionBlock_v2_104_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PawnInvincibleState_v2_8();
    l0 = self.box_BaseMissionBlock_v2_104;
    l1 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|815663681", "815663681", "UNI04_INTRO", "box_BaseMissionBlock_v2_104.Disabled", "box_PawnInvincibleState_v2_8.UnsetInvincible", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnsetInvincible
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_16_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_143();
    l0 = self.box_GroupSizeListener_v5_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1362980000", "1362980000", "UNI04_INTRO", "box_OutputOrder_v2_16.Out", "box_GroupSizeListener_v5_143.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_16_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_142();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2040554197", "2040554197", "UNI04_INTRO", "box_OutputOrder_v2_16.Out", "box_OutputOrder_v2_142.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_143_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_147();
    l0 = self.box_GroupSizeListener_v5_143;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1248050831", "1248050831", "UNI04_INTRO", "box_GroupSizeListener_v5_143.MemberRemoved", "box_Simple_Node_147.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_115_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_115;
    l1 = self.box_OnceOnly_v3_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1294377582", "1294377582", "UNI04_INTRO", "box_MultipleOR_115.Out", "box_OnceOnly_v3_117.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_71_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_71;
    l1 = self.box_OnceOnly_v3_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|373609264", "373609264", "UNI04_INTRO", "box_MultipleOR_71.Out", "box_OnceOnly_v3_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_40_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_49();
    l0 = self.box_EntityStatusListener_40;
    l1 = self.box_NavLinkModifier_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|350809822", "350809822", "UNI04_INTRO", "box_EntityStatusListener_40.Loaded", "box_NavLinkModifier_49.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_103_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_104();
    l0 = self.box_BaseMissionBlock_v2_103;
    l1 = self.box_BaseMissionBlock_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1291935688", "1291935688", "UNI04_INTRO", "box_BaseMissionBlock_v2_103.Disabled", "box_BaseMissionBlock_v2_104.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_IsEntityInGroup_3_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_12();
    l0 = self.box_Brick_Interact_With_Object_V5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|160404374", "160404374", "UNI04_INTRO", "box_IsEntityInGroup_3.True", "box_Brick_Interact_With_Object_V5_12.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_69_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_13();
    l0 = self.box_OnceOnly_v3_69;
    l1 = self.box_Brick_Destroy_ObjectsVehicles_MAIN_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1211942128", "1211942128", "UNI04_INTRO", "box_OnceOnly_v3_69.Out", "box_Brick_Destroy_ObjectsVehicles_MAIN_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IsEntityInGroup_10_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_6();
    l0 = self.box_Brick_Interact_With_Object_V5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|207251947", "207251947", "UNI04_INTRO", "box_IsEntityInGroup_10.True", "box_Brick_Interact_With_Object_V5_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_67_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_67;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|8857107", "8857107", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_67.Finished", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_67_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_67;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1610774289", "1610774289", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_67.Interrupted", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_81();
    l0 = self.box_MultipleOR_80;
    l1 = self.box_Gate_v3_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|76327757", "76327757", "UNI04_INTRO", "box_MultipleOR_80.Out", "box_Gate_v3_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_128_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_120();
    l0 = self.box_StaticBreakableListener_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2061517076", "2061517076", "UNI04_INTRO", "box_OutputOrder_v2_128.Out", "box_StaticBreakableListener_120.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_128_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UniversalInteractionListener_127();
    l0 = self.box_UniversalInteractionListener_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1765072682", "1765072682", "UNI04_INTRO", "box_OutputOrder_v2_128.Out", "box_UniversalInteractionListener_127.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_99_Interacted()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_99;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1817280782", "1817280782", "UNI04_INTRO", "box_UniversalInteractionListener_99.Interacted", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_161_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_62();
    l0 = self.box_OnceOnly_v3_161;
    l1 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1681636254", "1681636254", "UNI04_INTRO", "box_OnceOnly_v3_161.Out", "box__UNI04_Brick_PlayDialog_Relax_Healthy_62.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_IsEntityInGroup_24_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|909191958", "909191958", "UNI04_INTRO", "box_IsEntityInGroup_24.False", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IsEntityInGroup_24_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|656923533", "656923533", "UNI04_INTRO", "box_IsEntityInGroup_24.True", "box_OnceOnly_v3_144.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UseContextualActionModifier_v3_151_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_152();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1584060887", "1584060887", "UNI04_INTRO", "box_UseContextualActionModifier_v3_151.Disabled", "box_Simple_Node_152.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_52_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_52;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1736941427", "1736941427", "UNI04_INTRO", "box_ActivityAcknowledgeGate_52.Acknowledged", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_52_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_133();
    l0 = self.box_ActivityAcknowledgeGate_52;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1178741779", "1178741779", "UNI04_INTRO", "box_ActivityAcknowledgeGate_52.Reloaded", "box_OutputOrder_v2_133.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_15();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|642493792", "642493792", "UNI04_INTRO", "box_OutputOrder_v2_142.Out", "box_IsEntityInGroup_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_24();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|96927327", "96927327", "UNI04_INTRO", "box_OutputOrder_v2_142.Out", "box_IsEntityInGroup_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_142_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_7();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1122679268", "1122679268", "UNI04_INTRO", "box_OutputOrder_v2_142.Out", "box_IsEntityInGroup_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_133_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_139();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|240351658", "240351658", "UNI04_INTRO", "box_OutputOrder_v2_133.Out", "box_OutputOrder_v2_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_133_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2062813959", "2062813959", "UNI04_INTRO", "box_OutputOrder_v2_133.Out", "box_MultipleOR_59.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_145_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19();
    l0 = self.box_OnceOnly_v3_145;
    l1 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1381058652", "1381058652", "UNI04_INTRO", "box_OnceOnly_v3_145.Out", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_89_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_149();
    l0 = self.box_Delay_v5_89;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2078982517", "2078982517", "UNI04_INTRO", "box_Delay_v5_89.TimeElapsed", "box_Simple_Node_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_112_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_125();
    l0 = self.box_StaticBreakableListener_112;
    l1 = self.box_BurnableObjectListener_v2_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|804727876", "804727876", "UNI04_INTRO", "box_StaticBreakableListener_112.Disabled", "box_BurnableObjectListener_v2_125.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_112_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_125();
    l0 = self.box_StaticBreakableListener_112;
    l1 = self.box_BurnableObjectListener_v2_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|592728226", "592728226", "UNI04_INTRO", "box_StaticBreakableListener_112.Enabled", "box_BurnableObjectListener_v2_125.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_112_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_112;
    l1 = self.box_MultipleOR_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1455655363", "1455655363", "UNI04_INTRO", "box_StaticBreakableListener_112.OnBreak", "box_MultipleOR_106.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_44_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_48();
    l0 = self.box_EntityStatusListener_44;
    l1 = self.box_NavLinkModifier_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|469729604", "469729604", "UNI04_INTRO", "box_EntityStatusListener_44.Loaded", "box_NavLinkModifier_48.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_146_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_16();
    l0 = self.box_MultipleOR_146;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|231848316", "231848316", "UNI04_INTRO", "box_MultipleOR_146.Out", "box_OutputOrder_v2_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_1();
    l0 = self.box_GroupSizeListener_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1643207328", "1643207328", "UNI04_INTRO", "box_OutputOrder_v2_36.Out", "box_GroupSizeListener_v5_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_93();
    l0 = self.box_GroupSizeListener_v5_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|671393893", "671393893", "UNI04_INTRO", "box_OutputOrder_v2_36.Out", "box_GroupSizeListener_v5_93.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_33();
    l0 = self.box_EntityStatusListener_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|233521977", "233521977", "UNI04_INTRO", "box_OutputOrder_v2_36.Out", "box_EntityStatusListener_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|867250209", "867250209", "UNI04_INTRO", "box_OutputOrder_v2_50.Out", "box_OutputOrder_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_123();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1984462252", "1984462252", "UNI04_INTRO", "box_OutputOrder_v2_50.Out", "box_OutputOrder_v2_123.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1544201529", "1544201529", "UNI04_INTRO", "box_OutputOrder_v2_50.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_65_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_65;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1980811143", "1980811143", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_65.Finished", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_65_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_65;
    l1 = self.box_MultipleOR_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|402569917", "402569917", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_65.Interrupted", "box_MultipleOR_70.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_169_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityFact_170();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1500856100", "1500856100", "UNI04_INTRO", "box_OutputOrder_v2_169.Out", "box_GetActivityFact_170.GetFact", clone:GetLuaBox(), l0:GetLuaBox());
    -- GetFact
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_169_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1396842076", "1396842076", "UNI04_INTRO", "box_OutputOrder_v2_169.Out", "box_OutputOrder_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_83_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_83;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|861144158", "861144158", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_83.Finished", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_83_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_83;
    l1 = self.box_MultipleOR_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1931508628", "1931508628", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_83.Interrupted", "box_MultipleOR_60.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_152_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_20();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2108690779", "2108690779", "UNI04_INTRO", "box_Simple_Node_152.Out", "box_UseContextualActionModifier_v3_20.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_78_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_MultipleOR_78;
    l1 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1879461814", "1879461814", "UNI04_INTRO", "box_MultipleOR_78.Out", "box_Delay_v5_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_33_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_34();
    l0 = self.box_EntityStatusListener_33;
    l1 = self.box_ProximityRadiusListener_v3_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|63334210", "63334210", "UNI04_INTRO", "box_EntityStatusListener_33.Loaded", "box_ProximityRadiusListener_v3_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_UniversalInteractionListener_127_Interacted()
    local l0, l1;
    l0 = self.box_UniversalInteractionListener_127;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|319343826", "319343826", "UNI04_INTRO", "box_UniversalInteractionListener_127.Interacted", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_ActivityInitialized_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_55();
    l0 = self.box_ActivityInitialized_9;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|579546771", "579546771", "UNI04_INTRO", "box_ActivityInitialized_9.Out", "box_GetPlayerGroup_v2_55.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_77_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_77;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1123278618", "1123278618", "UNI04_INTRO", "box_MultipleOR_77.Out", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_IsEntityInGroup_15_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17();
    l0 = self.box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|157447827", "157447827", "UNI04_INTRO", "box_IsEntityInGroup_15.False", "box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_IsEntityInGroup_15_True()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1356927932", "1356927932", "UNI04_INTRO", "box_IsEntityInGroup_15.True", "box_OnceOnly_v3_64.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_79_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_79;
    l1 = self.box_MultipleOR_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1130201438", "1130201438", "UNI04_INTRO", "box_MultipleOR_79.Out", "box_MultipleOR_78.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_66_Finished()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_66;
    l1 = self.box_MultipleOR_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|388127167", "388127167", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_66.Finished", "box_MultipleOR_153.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box__UNI04_Brick_PlayDialog_Relax_Healthy_66_Interrupted()
    local l0, l1;
    l0 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_66;
    l1 = self.box_MultipleOR_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|868144530", "868144530", "UNI04_INTRO", "box__UNI04_Brick_PlayDialog_Relax_Healthy_66.Interrupted", "box_MultipleOR_153.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_120_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_119();
    l0 = self.box_StaticBreakableListener_120;
    l1 = self.box_BurnableObjectListener_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1371579814", "1371579814", "UNI04_INTRO", "box_StaticBreakableListener_120.Disabled", "box_BurnableObjectListener_v2_119.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_120_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_119();
    l0 = self.box_StaticBreakableListener_120;
    l1 = self.box_BurnableObjectListener_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1242435453", "1242435453", "UNI04_INTRO", "box_StaticBreakableListener_120.Enabled", "box_BurnableObjectListener_v2_119.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_120_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_120;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1676174860", "1676174860", "UNI04_INTRO", "box_StaticBreakableListener_120.OnBreak", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_73();
    l0 = self.box_MultipleOR_72;
    l1 = self.box_Delay_v5_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|759360836", "759360836", "UNI04_INTRO", "box_MultipleOR_72.Out", "box_Delay_v5_73.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Brick_Interact_With_Object_V5_5_Success()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_25();
    l0 = self.box_Brick_Interact_With_Object_V5_5;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1771472466", "1771472466", "UNI04_INTRO", "box_Brick_Interact_With_Object_V5_5.Success", "box_RemoveFromGroup_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_135_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_138();
    l0 = self.box_EntityStatusListener_135;
    l1 = self.box_UniversalInteractionModifier_v2_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1682705546", "1682705546", "UNI04_INTRO", "box_EntityStatusListener_135.Loaded", "box_UniversalInteractionModifier_v2_138.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_159_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_159;
    l1 = self.box_OnceOnly_v3_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1087872065", "1087872065", "UNI04_INTRO", "box_MultipleOR_159.Out", "box_OnceOnly_v3_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IsEntityInGroup_122_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_126();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|305622559", "305622559", "UNI04_INTRO", "box_IsEntityInGroup_122.True", "box_OutputOrder_v2_126.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_UseContextualActionModifier_v3_20_UseCalled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_TriggerState_v2_43();
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1858027691", "1858027691", "UNI04_INTRO", "box_UseContextualActionModifier_v3_20.UseCalled", "box_TriggerState_v2_43.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_150_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_56();
    l0 = self.box_Delay_v5_150;
    l1 = self.box__UNI04_Brick_PlayDialog_Relax_Healthy_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|158659050", "158659050", "UNI04_INTRO", "box_Delay_v5_150.TimeElapsed", "box__UNI04_Brick_PlayDialog_Relax_Healthy_56.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|@n_Ack_AfterAbandon");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_171_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|@n_AllGeneratorsDestroyed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_84()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|@n_NewLine");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_84_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_85()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|@n_ResetProbability");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|@n_TimerFailsafe");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_149_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|13618931");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
                [2] = self.f_box_OutputOrder_v2_47_Out_2,
                [3] = self.f_box_OutputOrder_v2_47_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_91()
    local params;
    params = {
        -- missionBlockId,
        [0] = "63189040304857693",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|60925666");
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
                [0] = self.f_box_OutputOrder_v2_126_Out_0,
                [1] = self.f_box_OutputOrder_v2_126_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_73()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_46()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100206128620112835",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|73742721");
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
                [0] = self.f_box_OutputOrder_v2_123_Out_0,
                [1] = self.f_box_OutputOrder_v2_123_Out_1,
                [2] = self.f_box_OutputOrder_v2_123_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_6()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2100025937545409369",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "UNI04_INTRO_OBJ",
            id = "587733",
        },
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|112766084");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_110_True,
    });
    params = {
        -- Entity,
        [0] = "2100069676083060902",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_132()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100069676083060902",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|150408265");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_125()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2100025937545409369",
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_45()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184709204329",
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_56()
    local params;
    DrawTextToScreen("Comment: I've got three little generators hooked up to this machine. ...", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: '_UNI04_Brick_PlayDialog_Relax_Healthy')-- Comment: I've got three little generators hooked up to this machine. ...");
    params = {
        -- eLarry,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "2140228884",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|199421417");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_124()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|209057744");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2100025937545409369",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_118()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2100069676083060902",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_134()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100025914866807637",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|277229795");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_7_False,
        -- True,
        [1] = self.f_box_IsEntityInGroup_7_True,
    });
    params = {
        -- Entity,
        [0] = "2100025937545409369",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_119()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "2100025914866807637",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_147()
    local params, l0;
    DrawTextToScreen("Comment: Object Destroyed or Interacted with", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: Object Destroyed or Interacted with");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|311187722");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_147_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_81()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_100()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = self.eLarry,
        -- nearZone,
        [4] = 10,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|392766639");
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
                [0] = self.f_box_OutputOrder_v2_139_Out_0,
                [1] = self.f_box_OutputOrder_v2_139_Out_1,
                [2] = self.f_box_OutputOrder_v2_139_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_96()
    local params;
    params = {
        -- missionBlockId,
        [0] = "63189040304857693",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_19()
    local params;
    DrawTextToScreen("Comment: Marker 3", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Destroy_ObjectsVehicles_ExtraMarker_v3')-- Comment: Marker 3");
    params = {
        -- Entity,
        [0] = "2100025937545409369",
        -- fMarkerHeight,
        [1] = 1.5,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI04_INTRO_OBJ",
            id = "587733",
        },
        -- Mobile_Marker,
        [3] = "2100606742726452710",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_MAIN_13()
    local params;
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- Destroy_Group,
        [1] = "#7ED71277",
        -- has_ProgressBar,
        [2] = false,
        -- Mission_Objective,
        [3] = {
            section = "Objectives",
            item = "UNI04_INTRO_OBJ",
            id = "587733",
        },
        -- Success_Percentage,
        [5] = 100,
    };
    return params;
end;

function export:OnEnter_box_TriggerState_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/TriggerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TriggerState_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|484943230");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TriggerState_v2_43_Disabled,
    });
    params = {
        -- CheckAngle,
        [0] = false,
        -- CheckLookAt,
        [1] = false,
        -- Trigger,
        [2] = "2099890321600025634",
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_160()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|504313560");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_160_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_160_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_51()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100205888850637144",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|514307154");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_11_A_eq_B,
        -- A_ne_B,
        [5] = self.f_box_Compare_Integers_11_A_ne_B,
    });
    params = {
        -- A,
        [0] = self.i_GeneratorRemaining,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_49()
    local params;
    params = {
        -- Entity,
        [0] = "2100205894846394716",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|579678366");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_141()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_129()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2100069676083060902",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_131()
    local params;
    DrawTextToScreen("Comment: ZET-331808", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'StartCelebration')-- Comment: ZET-331808");
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_138()
    local params;
    params = {
        -- usableEntity,
        [4] = "2100025937545409369",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|673435959");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_94_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.i_GeneratorRemaining,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|681770974");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityFact_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityFact_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|688000262");
    l0:SetConnections({
        -- FactSet,
        [1] = self.f_box_GetActivityFact_170_FactSet,
    });
    params = {
        -- ActivityIDOrEncounterPrefabID,
        [0] = "9015201912608134",
        -- Fact,
        [1] = "IntroPreviouslyAbandoned",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_93()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|692719768");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "2104355703329136019",
        -- farZone,
        [2] = 3.5,
        -- id2,
        [3] = self.eLarry,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_42()
    local params;
    params = {
        -- Entity,
        [0] = "2100206128620112835",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_95()
    local params;
    params = {
        -- missionBlockId,
        [0] = "45174641795367777",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_17()
    local params;
    DrawTextToScreen("Comment: Marker 1", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Destroy_ObjectsVehicles_ExtraMarker_v3')-- Comment: Marker 1");
    params = {
        -- Entity,
        [0] = "2100069676083060902",
        -- fMarkerHeight,
        [1] = 1.5,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI04_INTRO_OBJ",
            id = "587733",
        },
        -- Mobile_Marker,
        [3] = "2100688921800214621",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_22()
    local params;
    params = {
        -- missionBlockId,
        [0] = "18152988850674354",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_12()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2100069676083060902",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "UNI04_INTRO_OBJ",
            id = "587733",
        },
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|815713941");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_39_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = self.eLarry,
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_162()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    DrawTextToScreen("Comment: Delay for new Line", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: Delay for new Line");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_63()
    local params;
    DrawTextToScreen("Comment:  blue cables", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: '_UNI04_Brick_PlayDialog_Relax_Healthy')-- Comment:  blue cables");
    params = {
        -- eLarry,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "3518623951",
    };
    return params;
end;

function export:OnEnter_box_Brick_Destroy_ObjectsVehicles_ExtraMarker_v3_14()
    local params;
    DrawTextToScreen("Comment: Marker 2", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_Destroy_ObjectsVehicles_ExtraMarker_v3')-- Comment: Marker 2");
    params = {
        -- Entity,
        [0] = "2100025914866807637",
        -- fMarkerHeight,
        [1] = 1.5,
        -- Mission_Objective,
        [2] = {
            section = "Objectives",
            item = "UNI04_INTRO_OBJ",
            id = "587733",
        },
        -- Mobile_Marker,
        [3] = "2100606737808631266",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|957099435");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "UNI04_INTRO_FAIL_LarryExit",
            id = "825407",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|998919003");
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
                [0] = self.f_box_OutputOrder_v2_140_Out_0,
                [1] = self.f_box_OutputOrder_v2_140_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1005588256");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_92_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_92_A_gt_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_92_A_lt_B,
    });
    params = {
        -- A,
        [0] = self.i_GeneratorRemaining,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_1()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_108()
    local params, l0;
    DrawTextToScreen("Comment: No Generators", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: No Generators");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1024507288");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_136()
    local params;
    params = {
        -- usableEntity,
        [4] = "2100025914866807637",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1094543188");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_4_True,
    });
    params = {
        -- Entity,
        [0] = "2100025914866807637",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1098455660");
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
                [0] = self.f_box_OutputOrder_v2_86_Out_0,
                [1] = self.f_box_OutputOrder_v2_86_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_41()
    local params;
    params = {
        -- Entity,
        [0] = "2100205888850637144",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1108836829");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Switch_68()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1134534555");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_88_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PawnInvincibleState_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnInvincibleState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnInvincibleState_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1164349472");
    l0:SetConnections({
        -- OnUnSet,
        [1] = self.f_box_PawnInvincibleState_v2_8_OnUnSet,
    });
    params = {
        -- Pawn,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_62()
    local params;
    DrawTextToScreen("Comment: don't get close", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: '_UNI04_Brick_PlayDialog_Relax_Healthy')-- Comment: don't get close");
    params = {
        -- eLarry,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "235051865",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_74()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1210811515");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2100025937545409369",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1229360878");
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
                [0] = self.f_box_OutputOrder_v2_155_Out_0,
                [1] = self.f_box_OutputOrder_v2_155_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1244596339");
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
                [0] = self.f_box_OutputOrder_v2_130_Out_0,
                [1] = self.f_box_OutputOrder_v2_130_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1271088323");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityFact_168_Out,
    });
    params = {
        -- Fact,
        [0] = "IntroPreviouslyAbandoned",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1284556510");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_121_True,
    });
    params = {
        -- Entity,
        [0] = "2100025914866807637",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_97()
    local params;
    DrawTextToScreen("Comment: It's as easy as following the blue cables.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: '_UNI04_Brick_PlayDialog_Relax_Healthy')-- Comment: It's as easy as following the blue cables.");
    params = {
        -- eLarry,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "3518623951",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1294968957");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2100025914866807637",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1308799490");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
                [2] = self.f_box_OutputOrder_v2_53_Out_2,
                [3] = self.f_box_OutputOrder_v2_53_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_154()
    local params;
    DrawTextToScreen("Comment: C'mon, quickly. They're watching us right now!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: '_UNI04_Brick_PlayDialog_Relax_Healthy')-- Comment: C'mon, quickly. They're watching us right now!");
    params = {
        -- eLarry,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "3248700444",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_107()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100069676083060902",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1362229854");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2100025914866807637",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1380214781");
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
        [8] = "--- UNI04_010_INTRO SCRIPT IS RUNNING ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_27()
    local params;
    DrawTextToScreen("Comment: pushing you", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: '_UNI04_Brick_PlayDialog_Relax_Healthy')-- Comment: pushing you");
    params = {
        -- eLarry,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "468584310",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_31()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1400752721");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
                [2] = self.f_box_OutputOrder_v2_2_Out_2,
                [3] = self.f_box_OutputOrder_v2_2_Out_3,
                [4] = self.f_box_OutputOrder_v2_2_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_104()
    local params;
    params = {
        -- missionBlockId,
        [0] = "63189040304857693",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1443459088");
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
                [0] = self.f_box_OutputOrder_v2_16_Out_0,
                [1] = self.f_box_OutputOrder_v2_16_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_143()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1513799766");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2100069676083060902",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_40()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100205894846394716",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_103()
    local params;
    params = {
        -- missionBlockId,
        [0] = "45174641795367777",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1549789742");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_3_True,
    });
    params = {
        -- Entity,
        [0] = "2100069676083060902",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1576293432");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_10_True,
    });
    params = {
        -- Entity,
        [0] = "2100025937545409369",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_48()
    local params;
    params = {
        -- Entity,
        [0] = "2100206128618015679",
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_67()
    local params;
    DrawTextToScreen("Comment: Anne, is this some sort of joke? Ha ha... Uh, not laughing.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: '_UNI04_Brick_PlayDialog_Relax_Healthy')-- Comment: Anne, is this some sort of joke? Ha ha... Uh, not laughing.");
    params = {
        -- eLarry,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "3440398239",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1642361039");
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
                [0] = self.f_box_OutputOrder_v2_128_Out_0,
                [1] = self.f_box_OutputOrder_v2_128_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_99()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2100025937545409369",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1666262655");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_24_False,
        -- True,
        [1] = self.f_box_IsEntityInGroup_24_True,
    });
    params = {
        -- Entity,
        [0] = "2100025914866807637",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_151()
    local params, l0;
    DrawTextToScreen("Comment: Disabling FULLY IMPAIRED STP ", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'UseContextualActionModifier_v3')-- Comment: Disabling FULLY IMPAIRED STP ");
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1684932052");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_UseContextualActionModifier_v3_151_Disabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2100610217738768986",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1694411770");
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
                [0] = self.f_box_OutputOrder_v2_142_Out_0,
                [1] = self.f_box_OutputOrder_v2_142_Out_1,
                [2] = self.f_box_OutputOrder_v2_142_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1697937601");
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
                [0] = self.f_box_OutputOrder_v2_133_Out_0,
                [1] = self.f_box_OutputOrder_v2_133_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_89()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 19,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_112()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100025937545409369",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_44()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100206128618015679",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1761877260");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1788062270");
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

function export:OnEnter_box_RemoveFromGroup_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1788619110");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2100069676083060902",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1794830145");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1797637903");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "uni04_generator_destroyed",
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_65()
    local params;
    DrawTextToScreen("Comment: Anne sent you right?", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: '_UNI04_Brick_PlayDialog_Relax_Healthy')-- Comment: Anne sent you right?");
    params = {
        -- eLarry,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "318212496",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1841333294");
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
                [0] = self.f_box_OutputOrder_v2_169_Out_0,
                [1] = self.f_box_OutputOrder_v2_169_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_83()
    local params;
    DrawTextToScreen("Comment: Save mankind", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: '_UNI04_Brick_PlayDialog_Relax_Healthy')-- Comment: Save mankind");
    params = {
        -- eLarry,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "151334223",
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_152()
    local params, l0;
    DrawTextToScreen("Comment: FULLY IMPAIRED STP Disabled", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Simple Node')-- Comment: FULLY IMPAIRED STP Disabled");
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1904834002");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_152_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_33()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103401672297460403",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_137()
    local params;
    params = {
        -- usableEntity,
        [4] = "2100069676083060902",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionListener_127()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- usableEntityId,
        [1] = "2100025914866807637",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|1994283438");
    l0:SetConnections({
        -- False,
        [0] = self.f_box_IsEntityInGroup_15_False,
        -- True,
        [1] = self.f_box_IsEntityInGroup_15_True,
    });
    params = {
        -- Entity,
        [0] = "2100069676083060902",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box__UNI04_Brick_PlayDialog_Relax_Healthy_66()
    local params;
    params = {
        -- eLarry,
        [0] = self.ePlayer,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "2140228884",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_120()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100025914866807637",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_5()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2100025914866807637",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objectives",
            item = "UNI04_INTRO_OBJ",
            id = "587733",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_135()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100025937545409369",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2121066605");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_122_True,
    });
    params = {
        -- Entity,
        [0] = "2100025937545409369",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_INTRO.domino|@UNI04_INTRO|2144500085");
    l0:SetConnections({
        -- UseCalled,
        [4] = self.f_box_UseContextualActionModifier_v3_20_UseCalled,
    });
    params = {
        -- ContextualAction,
        [0] = "2103496011063274465",
        -- Entity,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_150()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_45_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_45;
    self.eLarry = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_93_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_93;
    self.i_GeneratorRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_93_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_93;
    self.i_GeneratorRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_93_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_93;
    self.i_GeneratorRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_1_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_1;
    self.i_GeneratorRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_1_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_1;
    self.i_GeneratorRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_1_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_1;
    self.i_GeneratorRemaining = l0:GetDataOutValue(1);
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
