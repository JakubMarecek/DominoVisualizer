LUACBo -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni04/uni04_pre_intro.domino
-- User graph: UNI04_PRE_INTRO
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityFact.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
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
        cboxRes:RegisterBox("Domino/System/LookAtTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/StaticBreakableListener.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2453575734.bnk]], "CSoundResource");
        cboxRes:LoadResource([[921950423.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1739292488.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2432506040.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2645806811.bnk]], "CSoundResource");
        cboxRes:LoadResource([[412909182.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2140228884.bnk]], "CSoundResource");
        cboxRes:LoadResource([[600730228.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1875921779.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_PRE_INTRO.UNI04_PRE_INTRO.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua")] = {
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
                name = "Group",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/LookAtTrigger_v2.lua")] = {
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
                name = "EnterFOV",
                delayed = true,
            },
            [3] = {
                name = "LeaveFOV",
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
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "LookingPawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI04_PRE_INTRO";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO";
    self.ePlayer = nil;
    self.eLarry = nil;
    self.gPlayerGroup = nil;
    self.i_generatorAlive = 0;
    self.e_targetEntity = nil;
    self.i_gpCount = 0;
    self._2100610217738768986 = nil;
    self.i_GeneratorRemaining = 0;
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|22343752");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|39390452");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_ProximityRadiusListener_v3_39 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|85158450");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_39_SomeoneNear,
    });
    self.box_LookAtTrigger_v2_33 = cbox:CreateBox("Domino/System/LookAtTrigger_v2.lua");
    l0 = self.box_LookAtTrigger_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LookAtTrigger_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|104928424");
    l0:SetConnections({
        -- EnterFOV,
        [2] = self.f_box_LookAtTrigger_v2_33_EnterFOV,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|137502964");
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
        [0] = self.f_box_MultipleOR_7_Out,
    });
    self.box_CharacterLoadedIdListener_45 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|179279323");
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
    self.box_StaticBreakableListener_68 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|234608389");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_68_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_68_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_68_OnBreak,
        -- OnBreakAll,
        [3] = self.f_box_StaticBreakableListener_68_OnBreakAll,
        -- OnDamage,
        [4] = self.f_box_StaticBreakableListener_68_OnDamage,
        -- OnHit,
        [5] = self.f_box_StaticBreakableListener_68_OnHit,
        -- OnStateChanged,
        [6] = self.f_box_StaticBreakableListener_68_OnStateChanged,
    });
    self.box_BurnableObjectListener_v2_114 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|302004138");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_114_AlmostBurnedOut,
    });
    self.box_NavLinkModifier_48 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|316842682");
    l0:SetConnections({
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|318444284");
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
        [0] = self.f_box_MultipleOR_13_Out,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|344163712");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_BurnableObjectListener_v2_109 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|381757405");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_109_AlmostBurnedOut,
    });
    self.box_Brick_PlayDialog_Relax_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|385119167");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_6_Finished,
        -- Interrupted,
        [1] = self.f_box_Brick_PlayDialog_Relax_6_Interrupted,
    });
    self.box_Brick_Interact_With_Object_V5_26 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|401374693");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_26_Success,
    });
    self.box_HealthListener_v6_18 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|419958780");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_18_Downed,
    });
    self.box_Brick_PlayDialog_Relax_76 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|450365049");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_76_Finished,
        -- Interrupted,
        [1] = self.f_box_Brick_PlayDialog_Relax_76_Interrupted,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|503761671");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|540001321");
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
        [0] = self.f_box_MultipleOR_9_Out,
    });
    self.box_Brick_Interact_With_Object_V5_25 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|552299936");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_25_Success,
    });
    self.box_Switch_2 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|578179675");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 9,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- None,
        [0] = self.f_box_Switch_2_None,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_2_Output_0,
                [1] = self.f_box_Switch_2_Output_1,
                [2] = self.f_box_Switch_2_Output_2,
                [3] = self.f_box_Switch_2_Output_3,
                [4] = self.f_box_Switch_2_Output_4,
                [5] = self.f_box_Switch_2_Output_5,
                [6] = self.f_box_Switch_2_Output_6,
                [7] = self.f_box_Switch_2_Output_7,
                [8] = self.f_box_Switch_2_Output_8,
            },
            count = 9,
        },
    });
    self.box_EntityStatusListener_49 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|584754932");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_49_Loaded,
    });
    self.box_HealthListener_v6_118 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|604751116");
    l0:SetConnections({
        -- Revived,
        [7] = self.f_box_HealthListener_v6_118_Revived,
    });
    self.box_BurnableObjectListener_v2_69 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|651760509");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_69_AlmostBurnedOut,
    });
    self.box_EntityStatusListener_83 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|674159459");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_83_Loaded,
    });
    self.box_MultipleOR_95 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|731173749");
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
        [0] = self.f_box_MultipleOR_95_Out,
    });
    self.box_BurnableObjectListener_v2_98 = cbox:CreateBox("Domino/System/BurnableObjectListener_v2.lua");
    l0 = self.box_BurnableObjectListener_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BurnableObjectListener_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|766546705");
    l0:SetConnections({
        -- AlmostBurnedOut,
        [0] = self.f_box_BurnableObjectListener_v2_98_AlmostBurnedOut,
    });
    self.box_UniversalInteractionModifier_v2_28 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|767245354");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_28_Enabled,
    });
    self.box_OnceOnly_v3_96 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|777926166");
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
                [0] = self.f_box_OnceOnly_v3_96_Out_0,
            },
            count = 2,
        },
    });
    self.box_Brick_PlayDialog_Relax_46 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|791551207");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_46_Finished,
        -- Interrupted,
        [1] = self.f_box_Brick_PlayDialog_Relax_46_Interrupted,
    });
    self.box_EntityStatusListener_90 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|799729124");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_90_Loaded,
    });
    self.box_BaseMissionBlock_v2_88 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_88;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|872067940");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_88_Disabled,
    });
    self.box_Brick_PlayDialog_Relax_38 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|901562569");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_38_Finished,
        -- Interrupted,
        [1] = self.f_box_Brick_PlayDialog_Relax_38_Interrupted,
    });
    self.box_Brick_PlayDialog_Relax_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|920219714");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_75_Finished,
        -- Interrupted,
        [1] = self.f_box_Brick_PlayDialog_Relax_75_Interrupted,
    });
    self.box_Brick_Interact_With_Object_V5_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|922185347");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_15_Success,
    });
    self.box_EntityStatusListener_53 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|926251413");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_53_Loaded,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|957453470");
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
        [0] = self.f_box_MultipleOR_4_Out,
    });
    self.box_BaseMissionBlock_v2_37 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|969034785");
    l0:SetConnections({
    });
    self.box_Gate_v3_117 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|973150098");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_117_Out,
    });
    self.box_EntityStatusListener_79 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|978004695");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_79_Loaded,
    });
    self.box_BaseMissionBlock_v2_115 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1005787481");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_115_Disabled,
    });
    self.box_EntityStatusListener_78 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1043146419");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_78_Loaded,
    });
    self.box_MultipleOR_62 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1145297655");
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
        [0] = self.f_box_MultipleOR_62_Out,
    });
    self.box_MultipleOR_59 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1150967272");
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
    self.box_StaticBreakableListener_105 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1151260644");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_105_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_105_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_105_OnBreak,
    });
    self.box_GroupSizeListener_v5_34 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1168430496");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_34_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_34_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_34_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_34_MemberRemoved,
    });
    self.box_OnceOnly_v3_111 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1175669273");
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
                [0] = self.f_box_OnceOnly_v3_111_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_106 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1178350714");
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
                [0] = self.f_box_OnceOnly_v3_106_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1204777403");
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
        [0] = self.f_box_MultipleOR_17_Out,
    });
    self.box_ProximityRadiusListener_v3_91 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1208553955");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_91_AllFar,
    });
    self.box_NavLinkModifier_54 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1214739992");
    l0:SetConnections({
    });
    self.box_StaticBreakableListener_43 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1220126690");
    l0:SetConnections({
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_43_OnBreak,
    });
    self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1257052581");
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
        [0] = self.f_box_MultipleOR_14_Out,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1276313233");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_BaseMissionBlock_v2_67 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1285565444");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_67_Disabled,
    });
    self.box_OnceOnly_v3_66 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1329334276");
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
                [0] = self.f_box_OnceOnly_v3_66_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_86 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1360122690");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_86_Loaded,
    });
    self.box_BaseMissionBlock_v2_73 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1385568474");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_73_Disabled,
    });
    self.box_NavLinkModifier_84 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1520881368");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_87 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_87;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1560508561");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_87_Loaded,
    });
    self.box_BaseMissionBlock_v2_74 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1571208769");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_40 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1571273319");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_40_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_40_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_40_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_40_MemberRemoved,
    });
    self.box_StaticBreakableListener_113 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1601187542");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_113_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_113_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_113_OnBreak,
    });
    self.box_NavLinkModifier_85 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1623145588");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_21 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1639382870");
    l0:SetConnections({
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_21_SomeoneNear,
    });
    self.box_Brick_PlayDialog_Relax_47 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1643596536");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_47_Finished,
        -- Interrupted,
        [1] = self.f_box_Brick_PlayDialog_Relax_47_Interrupted,
    });
    self.box_MultipleOR_112 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1682539393");
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
        [0] = self.f_box_MultipleOR_112_Out,
    });
    self.box_ActivityAcknowledgeGate_52 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1690544601");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_52_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_52_Reloaded,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1711570122");
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
    self.box_Brick_PlayDialog_Relax_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1717853411");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_24_Finished,
        -- Interrupted,
        [1] = self.f_box_Brick_PlayDialog_Relax_24_Interrupted,
    });
    self.box_Gate_v3_121 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1863867960");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_121_Out,
    });
    self.box_UniversalInteractionModifier_v2_27 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1894049769");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_27_Enabled,
    });
    self.box_ActivityInitialized_60 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1912166714");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_60_Out,
    });
    self.box_StaticBreakableListener_110 = cbox:CreateBox("Domino/System/StaticBreakableListener.lua");
    l0 = self.box_StaticBreakableListener_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StaticBreakableListener_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1938011444");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_StaticBreakableListener_110_Disabled,
        -- Enabled,
        [1] = self.f_box_StaticBreakableListener_110_Enabled,
        -- OnBreak,
        [2] = self.f_box_StaticBreakableListener_110_OnBreak,
    });
    self.box_MultipleOR_120 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1951730936");
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
        [0] = self.f_box_MultipleOR_120_Out,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2021377950");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 10,
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_Brick_PlayDialog_Relax_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2083370573");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_36_Finished,
        -- Interrupted,
        [1] = self.f_box_Brick_PlayDialog_Relax_36_Interrupted,
    });
    self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2094552809");
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
        [0] = self.f_box_MultipleOR_99_Out,
    });
    self.box_Brick_PlayDialog_Relax_35 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2106993473");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_35_Finished,
        -- Interrupted,
        [1] = self.f_box_Brick_PlayDialog_Relax_35_Interrupted,
    });
    self.box_UniversalInteractionModifier_v2_82 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2113483142");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UniversalInteractionModifier_v2_82_Enabled,
    });
    self.box_BaseMissionBlock_v2_30 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2121098494");
    l0:SetConnections({
        -- Enabled,
        [3] = self.f_box_BaseMissionBlock_v2_30_Enabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|155610445", "155610445", "UNI04_PRE_INTRO", "In", "box_OutputOrder_v2_51.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_116();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|793981194", "793981194", "UNI04_PRE_INTRO", "OnLeaveZone", "box_OutputOrder_v2_116.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_40();
    l0 = self.box_GroupSizeListener_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1822318436", "1822318436", "UNI04_PRE_INTRO", "box_Simple_Node_89.Out", "box_GroupSizeListener_v5_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_91();
    l0 = self.box_ProximityRadiusListener_v3_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1885998815", "1885998815", "UNI04_PRE_INTRO", "box_Simple_Node_89.Out", "box_ProximityRadiusListener_v3_91.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_117();
    l0 = self.box_Gate_v3_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1547198833", "1547198833", "UNI04_PRE_INTRO", "box_Simple_Node_89.Out", "box_Gate_v3_117.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_21();
    l0 = self.box_ProximityRadiusListener_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|140682890", "140682890", "UNI04_PRE_INTRO", "box_Simple_Node_89.Out", "box_ProximityRadiusListener_v3_21.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_GroupSizeListener_v5_34();
    l0 = self.box_GroupSizeListener_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1359664891", "1359664891", "UNI04_PRE_INTRO", "box_Simple_Node_89.Out", "box_GroupSizeListener_v5_34.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_EntityStatusListener_90();
    l0 = self.box_EntityStatusListener_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|230317222", "230317222", "UNI04_PRE_INTRO", "box_Simple_Node_89.Out", "box_EntityStatusListener_90.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_121();
    l0 = self.box_Gate_v3_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1850022320", "1850022320", "UNI04_PRE_INTRO", "box_Simple_Node_89.Out", "box_Gate_v3_121.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_39();
    l0 = self.box_ProximityRadiusListener_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1042427560", "1042427560", "UNI04_PRE_INTRO", "box_Simple_Node_89.Out", "box_ProximityRadiusListener_v3_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_LookAtTrigger_v2_33();
    l0 = self.box_LookAtTrigger_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|701988402", "701988402", "UNI04_PRE_INTRO", "box_Simple_Node_89.Out", "box_LookAtTrigger_v2_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_102_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1091237908", "1091237908", "UNI04_PRE_INTRO", "box_Simple_Node_102.Out", "box_MultipleOR_7.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_2();
    l0 = self.box_Switch_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1552964647", "1552964647", "UNI04_PRE_INTRO", "box_Simple_Node_103.Out", "box_Switch_2.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_RemoveFromGroup_v2_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_80();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|246796323", "246796323", "UNI04_PRE_INTRO", "box_RemoveFromGroup_v2_29.Out", "box_Print_v2_80.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IsEntityInGroup_70();
    l0 = self.box_MultipleOR_71;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|80417240", "80417240", "UNI04_PRE_INTRO", "box_MultipleOR_71.Out", "box_IsEntityInGroup_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_102();
    l0 = self.box_Delay_v5_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2090661488", "2090661488", "UNI04_PRE_INTRO", "box_Delay_v5_1.TimeElapsed", "box_Simple_Node_102.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_39_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_LookAtTrigger_v2_33();
    l0 = self.box_ProximityRadiusListener_v3_39;
    l1 = self.box_LookAtTrigger_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|101663711", "101663711", "UNI04_PRE_INTRO", "box_ProximityRadiusListener_v3_39.SomeoneNear", "box_LookAtTrigger_v2_33.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LookAtTrigger_v2_33_EnterFOV()
    local l0, l1;
    l0 = self.box_LookAtTrigger_v2_33;
    l1 = self.box_OnceOnly_v3_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2046870651", "2046870651", "UNI04_PRE_INTRO", "box_LookAtTrigger_v2_33.EnterFOV", "box_OnceOnly_v3_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_121();
    l0 = self.box_MultipleOR_7;
    l1 = self.box_Gate_v3_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|899145458", "899145458", "UNI04_PRE_INTRO", "box_MultipleOR_7.Out", "box_Gate_v3_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_CharacterLoadedIdListener_45_LoadedIdReceived()
    local params, l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_45_LoadedIdReceived();
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_CharacterLoadedIdListener_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1695411842", "1695411842", "UNI04_PRE_INTRO", "box_CharacterLoadedIdListener_45.LoadedIdReceived", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_57();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1166161275", "1166161275", "UNI04_PRE_INTRO", "box_OutputOrder_v2_58.Out", "box_Print_v2_57.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1483053717", "1483053717", "UNI04_PRE_INTRO", "box_OutputOrder_v2_58.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_58_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|104909992", "104909992", "UNI04_PRE_INTRO", "box_OutputOrder_v2_58.Out", "box_ActivityAcknowledgeGate_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_StaticBreakableListener_68_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_69();
    l0 = self.box_StaticBreakableListener_68;
    l1 = self.box_BurnableObjectListener_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|455157928", "455157928", "UNI04_PRE_INTRO", "box_StaticBreakableListener_68.Disabled", "box_BurnableObjectListener_v2_69.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_68_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_69();
    l0 = self.box_StaticBreakableListener_68;
    l1 = self.box_BurnableObjectListener_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1972874054", "1972874054", "UNI04_PRE_INTRO", "box_StaticBreakableListener_68.Enabled", "box_BurnableObjectListener_v2_69.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_68_OnBreak()
    local l0, l1;
    self:OnExit_box_StaticBreakableListener_68_OnBreak();
    l0 = self.box_StaticBreakableListener_68;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1887450597", "1887450597", "UNI04_PRE_INTRO", "box_StaticBreakableListener_68.OnBreak", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StaticBreakableListener_68_OnBreakAll()
    self:OnExit_box_StaticBreakableListener_68_OnBreakAll();
end;

function export:f_box_StaticBreakableListener_68_OnDamage()
    self:OnExit_box_StaticBreakableListener_68_OnDamage();
end;

function export:f_box_StaticBreakableListener_68_OnHit()
    self:OnExit_box_StaticBreakableListener_68_OnHit();
end;

function export:f_box_StaticBreakableListener_68_OnStateChanged()
    self:OnExit_box_StaticBreakableListener_68_OnStateChanged();
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_21();
    l0 = self.box_ProximityRadiusListener_v3_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1465804812", "1465804812", "UNI04_PRE_INTRO", "box_OutputOrder_v2_23.Out", "box_ProximityRadiusListener_v3_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_39();
    l0 = self.box_ProximityRadiusListener_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1434814079", "1434814079", "UNI04_PRE_INTRO", "box_OutputOrder_v2_23.Out", "box_ProximityRadiusListener_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_BurnableObjectListener_v2_114_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_114;
    l1 = self.box_MultipleOR_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|244711712", "244711712", "UNI04_PRE_INTRO", "box_BurnableObjectListener_v2_114.AlmostBurnedOut", "box_MultipleOR_112.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_13_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_13;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1994266947", "1994266947", "UNI04_PRE_INTRO", "box_MultipleOR_13.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 7);
end;

function export:f_box_MultipleOR_16_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_16;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2003306273", "2003306273", "UNI04_PRE_INTRO", "box_MultipleOR_16.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_BurnableObjectListener_v2_109_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_109;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1430936135", "1430936135", "UNI04_PRE_INTRO", "box_BurnableObjectListener_v2_109.AlmostBurnedOut", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_30();
    l0 = self.box_BaseMissionBlock_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|855941085", "855941085", "UNI04_PRE_INTRO", "box_OutputOrder_v2_42.Out", "box_BaseMissionBlock_v2_30.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_18();
    l0 = self.box_HealthListener_v6_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|274807931", "274807931", "UNI04_PRE_INTRO", "box_OutputOrder_v2_42.Out", "box_HealthListener_v6_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_34();
    l0 = self.box_GroupSizeListener_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1987536702", "1987536702", "UNI04_PRE_INTRO", "box_OutputOrder_v2_42.Out", "box_GroupSizeListener_v5_34.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_43();
    l0 = self.box_StaticBreakableListener_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1306421402", "1306421402", "UNI04_PRE_INTRO", "box_OutputOrder_v2_42.Out", "box_StaticBreakableListener_43.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_40();
    l0 = self.box_GroupSizeListener_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1554722595", "1554722595", "UNI04_PRE_INTRO", "box_OutputOrder_v2_42.Out", "box_GroupSizeListener_v5_40.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_90();
    l0 = self.box_EntityStatusListener_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|938976357", "938976357", "UNI04_PRE_INTRO", "box_OutputOrder_v2_42.Out", "box_EntityStatusListener_90.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_101();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|449568578", "449568578", "UNI04_PRE_INTRO", "box_OutputOrder_v2_42.Out", "box_OutputOrder_v2_101.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayDialog_Relax_6_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_6;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|470250878", "470250878", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_6.Finished", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_6_Interrupted()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_6;
    l1 = self.box_MultipleOR_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|23067335", "23067335", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_6.Interrupted", "box_MultipleOR_14.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Interact_With_Object_V5_26_Success()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_31();
    l0 = self.box_Brick_Interact_With_Object_V5_26;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1645611471", "1645611471", "UNI04_PRE_INTRO", "box_Brick_Interact_With_Object_V5_26.Success", "box_RemoveFromGroup_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_18_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_56();
    l0 = self.box_HealthListener_v6_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1835483549", "1835483549", "UNI04_PRE_INTRO", "box_HealthListener_v6_18.Downed", "box_ActivityEnd_56.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayDialog_Relax_76_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_76;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1179255827", "1179255827", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_76.Finished", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_76_Interrupted()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_76;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2010645081", "2010645081", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_76.Interrupted", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_12_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_12;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|792062858", "792062858", "UNI04_PRE_INTRO", "box_MultipleOR_12.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|756657768", "756657768", "UNI04_PRE_INTRO", "box_MultipleOR_9.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Brick_Interact_With_Object_V5_25_Success()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_29();
    l0 = self.box_Brick_Interact_With_Object_V5_25;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1090175787", "1090175787", "UNI04_PRE_INTRO", "box_Brick_Interact_With_Object_V5_25.Success", "box_RemoveFromGroup_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_2_None()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_20();
    l0 = self.box_Switch_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1721873810", "1721873810", "UNI04_PRE_INTRO", "box_Switch_2.None", "box_Simple_Node_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_2_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_76();
    l0 = self.box_Switch_2;
    l1 = self.box_Brick_PlayDialog_Relax_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|955462566", "955462566", "UNI04_PRE_INTRO", "box_Switch_2.Output", "box_Brick_PlayDialog_Relax_76.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_2_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_47();
    l0 = self.box_Switch_2;
    l1 = self.box_Brick_PlayDialog_Relax_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|239041257", "239041257", "UNI04_PRE_INTRO", "box_Switch_2.Output", "box_Brick_PlayDialog_Relax_47.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_2_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_36();
    l0 = self.box_Switch_2;
    l1 = self.box_Brick_PlayDialog_Relax_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1581046650", "1581046650", "UNI04_PRE_INTRO", "box_Switch_2.Output", "box_Brick_PlayDialog_Relax_36.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_2_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_46();
    l0 = self.box_Switch_2;
    l1 = self.box_Brick_PlayDialog_Relax_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|108111166", "108111166", "UNI04_PRE_INTRO", "box_Switch_2.Output", "box_Brick_PlayDialog_Relax_46.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_2_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_75();
    l0 = self.box_Switch_2;
    l1 = self.box_Brick_PlayDialog_Relax_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1044974275", "1044974275", "UNI04_PRE_INTRO", "box_Switch_2.Output", "box_Brick_PlayDialog_Relax_75.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_2_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_35();
    l0 = self.box_Switch_2;
    l1 = self.box_Brick_PlayDialog_Relax_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|829506902", "829506902", "UNI04_PRE_INTRO", "box_Switch_2.Output", "box_Brick_PlayDialog_Relax_35.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_2_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_6();
    l0 = self.box_Switch_2;
    l1 = self.box_Brick_PlayDialog_Relax_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|277017617", "277017617", "UNI04_PRE_INTRO", "box_Switch_2.Output", "box_Brick_PlayDialog_Relax_6.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_2_Output_7()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_38();
    l0 = self.box_Switch_2;
    l1 = self.box_Brick_PlayDialog_Relax_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|607284822", "607284822", "UNI04_PRE_INTRO", "box_Switch_2.Output", "box_Brick_PlayDialog_Relax_38.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Switch_2_Output_8()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_24();
    l0 = self.box_Switch_2;
    l1 = self.box_Brick_PlayDialog_Relax_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|295837684", "295837684", "UNI04_PRE_INTRO", "box_Switch_2.Output", "box_Brick_PlayDialog_Relax_24.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_49_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_48();
    l0 = self.box_EntityStatusListener_49;
    l1 = self.box_NavLinkModifier_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|689189922", "689189922", "UNI04_PRE_INTRO", "box_EntityStatusListener_49.Loaded", "box_NavLinkModifier_48.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_118_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_118;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|299385412", "299385412", "UNI04_PRE_INTRO", "box_HealthListener_v6_118.Revived", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Integers_61_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_65();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1624714852", "1624714852", "UNI04_PRE_INTRO", "box_Compare_Integers_61.A_le_B", "box_OutputOrder_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BurnableObjectListener_v2_69_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_69;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|792871680", "792871680", "UNI04_PRE_INTRO", "box_BurnableObjectListener_v2_69.AlmostBurnedOut", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_83_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_82();
    l0 = self.box_EntityStatusListener_83;
    l1 = self.box_UniversalInteractionModifier_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1424205578", "1424205578", "UNI04_PRE_INTRO", "box_EntityStatusListener_83.Loaded", "box_UniversalInteractionModifier_v2_82.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayerGroup_v2_55_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_55_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_45();
    l0 = self.box_CharacterLoadedIdListener_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|3322552", "3322552", "UNI04_PRE_INTRO", "box_GetPlayerGroup_v2_55.Out", "box_CharacterLoadedIdListener_45.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_95_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_95;
    l1 = self.box_OnceOnly_v3_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|78376531", "78376531", "UNI04_PRE_INTRO", "box_MultipleOR_95.Out", "box_OnceOnly_v3_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BurnableObjectListener_v2_98_AlmostBurnedOut()
    local l0, l1;
    l0 = self.box_BurnableObjectListener_v2_98;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|64946879", "64946879", "UNI04_PRE_INTRO", "box_BurnableObjectListener_v2_98.AlmostBurnedOut", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_UniversalInteractionModifier_v2_28_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_25();
    l0 = self.box_UniversalInteractionModifier_v2_28;
    l1 = self.box_Brick_Interact_With_Object_V5_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|918244065", "918244065", "UNI04_PRE_INTRO", "box_UniversalInteractionModifier_v2_28.Enabled", "box_Brick_Interact_With_Object_V5_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_96_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_107();
    l0 = self.box_OnceOnly_v3_96;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2044888367", "2044888367", "UNI04_PRE_INTRO", "box_OnceOnly_v3_96.Out", "box_RemoveFromGroup_v2_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayDialog_Relax_46_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_46;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1529588853", "1529588853", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_46.Finished", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_46_Interrupted()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_46;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1597541112", "1597541112", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_46.Interrupted", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_90_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_91();
    l0 = self.box_EntityStatusListener_90;
    l1 = self.box_ProximityRadiusListener_v3_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|670365074", "670365074", "UNI04_PRE_INTRO", "box_EntityStatusListener_90.Loaded", "box_ProximityRadiusListener_v3_91.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetHealthState_119_Down()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_118();
    l0 = self.box_HealthListener_v6_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1115367255", "1115367255", "UNI04_PRE_INTRO", "box_GetHealthState_119.Down", "box_HealthListener_v6_118.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetHealthState_119_Healthy()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1345303145", "1345303145", "UNI04_PRE_INTRO", "box_GetHealthState_119.Healthy", "box_MultipleOR_120.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_65_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1613018063", "1613018063", "UNI04_PRE_INTRO", "box_OutputOrder_v2_65.Out", "box_Simple_Node_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_65_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_73();
    l0 = self.box_BaseMissionBlock_v2_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|348053856", "348053856", "UNI04_PRE_INTRO", "box_OutputOrder_v2_65.Out", "box_BaseMissionBlock_v2_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_RemoveFromGroup_v2_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_11();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|44170381", "44170381", "UNI04_PRE_INTRO", "box_RemoveFromGroup_v2_32.Out", "box_Print_v2_11.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_88_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_74();
    l0 = self.box_BaseMissionBlock_v2_88;
    l1 = self.box_BaseMissionBlock_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1406765212", "1406765212", "UNI04_PRE_INTRO", "box_BaseMissionBlock_v2_88.Disabled", "box_BaseMissionBlock_v2_74.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_Brick_PlayDialog_Relax_38_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_38;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|564282250", "564282250", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_38.Finished", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_38_Interrupted()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_38;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1365240841", "1365240841", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_38.Interrupted", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_PlayDialog_Relax_75_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_75;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|637624924", "637624924", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_75.Finished", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_75_Interrupted()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_75;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1288833357", "1288833357", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_75.Interrupted", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Brick_Interact_With_Object_V5_15_Success()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_32();
    l0 = self.box_Brick_Interact_With_Object_V5_15;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1720495925", "1720495925", "UNI04_PRE_INTRO", "box_Brick_Interact_With_Object_V5_15.Success", "box_RemoveFromGroup_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_53_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_54();
    l0 = self.box_EntityStatusListener_53;
    l1 = self.box_NavLinkModifier_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1277904401", "1277904401", "UNI04_PRE_INTRO", "box_EntityStatusListener_53.Loaded", "box_NavLinkModifier_54.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|319968404", "319968404", "UNI04_PRE_INTRO", "box_MultipleOR_4.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_117_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_93();
    l0 = self.box_Gate_v3_117;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1013074851", "1013074851", "UNI04_PRE_INTRO", "box_Gate_v3_117.Out", "box_ActivityRetry_93.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_92_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_117();
    l0 = self.box_Gate_v3_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|945122592", "945122592", "UNI04_PRE_INTRO", "box_HealthModifier_v2_92.Damaged", "box_Gate_v3_117.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_79_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_27();
    l0 = self.box_EntityStatusListener_79;
    l1 = self.box_UniversalInteractionModifier_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1270314928", "1270314928", "UNI04_PRE_INTRO", "box_EntityStatusListener_79.Loaded", "box_UniversalInteractionModifier_v2_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_115_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_67();
    l0 = self.box_BaseMissionBlock_v2_115;
    l1 = self.box_BaseMissionBlock_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|219503660", "219503660", "UNI04_PRE_INTRO", "box_BaseMissionBlock_v2_115.Disabled", "box_BaseMissionBlock_v2_67.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_78_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_28();
    l0 = self.box_EntityStatusListener_78;
    l1 = self.box_UniversalInteractionModifier_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1906916918", "1906916918", "UNI04_PRE_INTRO", "box_EntityStatusListener_78.Loaded", "box_UniversalInteractionModifier_v2_28.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_41_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_37();
    l0 = self.box_BaseMissionBlock_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1973850153", "1973850153", "UNI04_PRE_INTRO", "box_Compare_Integers_41.A_eq_B", "box_BaseMissionBlock_v2_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_61();
    l0 = self.box_MultipleOR_62;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1572458590", "1572458590", "UNI04_PRE_INTRO", "box_MultipleOR_62.Out", "box_Compare_Integers_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_59_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_59;
    l1 = self.box_ActivityInitialized_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|507837048", "507837048", "UNI04_PRE_INTRO", "box_MultipleOR_59.Out", "box_ActivityInitialized_60.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_StaticBreakableListener_105_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_109();
    l0 = self.box_StaticBreakableListener_105;
    l1 = self.box_BurnableObjectListener_v2_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|903873466", "903873466", "UNI04_PRE_INTRO", "box_StaticBreakableListener_105.Disabled", "box_BurnableObjectListener_v2_109.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_105_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_109();
    l0 = self.box_StaticBreakableListener_105;
    l1 = self.box_BurnableObjectListener_v2_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|578065084", "578065084", "UNI04_PRE_INTRO", "box_StaticBreakableListener_105.Enabled", "box_BurnableObjectListener_v2_109.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_105_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_105;
    l1 = self.box_MultipleOR_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1246146342", "1246146342", "UNI04_PRE_INTRO", "box_StaticBreakableListener_105.OnBreak", "box_MultipleOR_95.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_RemoveFromGroup_v2_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_81();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1087966318", "1087966318", "UNI04_PRE_INTRO", "box_RemoveFromGroup_v2_31.Out", "box_Print_v2_81.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_34_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_34_Enabled();
    l0 = self.box_GroupSizeListener_v5_34;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|283279795", "283279795", "UNI04_PRE_INTRO", "box_GroupSizeListener_v5_34.Enabled", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_34_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_34_MemberAdded();
    l0 = self.box_GroupSizeListener_v5_34;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1046884903", "1046884903", "UNI04_PRE_INTRO", "box_GroupSizeListener_v5_34.MemberAdded", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_34_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_34_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_34;
    l1 = self.box_MultipleOR_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|726111788", "726111788", "UNI04_PRE_INTRO", "box_GroupSizeListener_v5_34.MemberRemoved", "box_MultipleOR_62.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OnceOnly_v3_111_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_108();
    l0 = self.box_OnceOnly_v3_111;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|497571344", "497571344", "UNI04_PRE_INTRO", "box_OnceOnly_v3_111.Out", "box_RemoveFromGroup_v2_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_106_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_97();
    l0 = self.box_OnceOnly_v3_106;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|185382791", "185382791", "UNI04_PRE_INTRO", "box_OnceOnly_v3_106.Out", "box_RemoveFromGroup_v2_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_22_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_88();
    l0 = self.box_BaseMissionBlock_v2_88;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2017839805", "2017839805", "UNI04_PRE_INTRO", "box_Compare_Integers_22.A_eq_B", "box_BaseMissionBlock_v2_88.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
end;

function export:f_box_Compare_Integers_22_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_41();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|932565063", "932565063", "UNI04_PRE_INTRO", "box_Compare_Integers_22.A_gt_B", "box_Compare_Integers_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_17_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_17;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2015203520", "2015203520", "UNI04_PRE_INTRO", "box_MultipleOR_17.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_ProximityRadiusListener_v3_91_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_92();
    l0 = self.box_ProximityRadiusListener_v3_91;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|665468199", "665468199", "UNI04_PRE_INTRO", "box_ProximityRadiusListener_v3_91.AllFar", "box_HealthModifier_v2_92.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_43_OnBreak()
    local params, l0, l1;
    params = self:OnEnter_box_SetActivityFact_44();
    l0 = self.box_StaticBreakableListener_43;
    l1 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|592277760", "592277760", "UNI04_PRE_INTRO", "box_StaticBreakableListener_43.OnBreak", "box_SetActivityFact_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_14_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_14;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1544512134", "1544512134", "UNI04_PRE_INTRO", "box_MultipleOR_14.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 6);
end;

function export:f_box_MultipleOR_19_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_19;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|933564680", "933564680", "UNI04_PRE_INTRO", "box_MultipleOR_19.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 8);
end;

function export:f_box_BaseMissionBlock_v2_67_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_63();
    l0 = self.box_BaseMissionBlock_v2_67;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|4793353", "4793353", "UNI04_PRE_INTRO", "box_BaseMissionBlock_v2_67.Disabled", "box_ActivityEnd_63.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_49();
    l0 = self.box_EntityStatusListener_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1887913213", "1887913213", "UNI04_PRE_INTRO", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_53();
    l0 = self.box_EntityStatusListener_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1081396094", "1081396094", "UNI04_PRE_INTRO", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_53.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_87();
    l0 = self.box_EntityStatusListener_87;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|917464070", "917464070", "UNI04_PRE_INTRO", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_87.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_50_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_86();
    l0 = self.box_EntityStatusListener_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|371897605", "371897605", "UNI04_PRE_INTRO", "box_OutputOrder_v2_50.Out", "box_EntityStatusListener_86.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_66_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = self.box_OnceOnly_v3_66;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2120941097", "2120941097", "UNI04_PRE_INTRO", "box_OnceOnly_v3_66.Out", "box_OutputOrder_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_70_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveFromGroup_v2_72();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1734105727", "1734105727", "UNI04_PRE_INTRO", "box_IsEntityInGroup_70.True", "box_RemoveFromGroup_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_86_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_85();
    l0 = self.box_EntityStatusListener_86;
    l1 = self.box_NavLinkModifier_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|254878101", "254878101", "UNI04_PRE_INTRO", "box_EntityStatusListener_86.Loaded", "box_NavLinkModifier_85.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_73_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_115();
    l0 = self.box_BaseMissionBlock_v2_73;
    l1 = self.box_BaseMissionBlock_v2_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|774297084", "774297084", "UNI04_PRE_INTRO", "box_BaseMissionBlock_v2_73.Disabled", "box_BaseMissionBlock_v2_115.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|337453940", "337453940", "UNI04_PRE_INTRO", "box_OutputOrder_v2_51.Out", "box_OutputOrder_v2_50.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_58();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|182735920", "182735920", "UNI04_PRE_INTRO", "box_OutputOrder_v2_51.Out", "box_OutputOrder_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsEntityInGroup_94_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_105();
    l0 = self.box_StaticBreakableListener_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|584473007", "584473007", "UNI04_PRE_INTRO", "box_IsEntityInGroup_94.True", "box_StaticBreakableListener_105.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_87_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_84();
    l0 = self.box_EntityStatusListener_87;
    l1 = self.box_NavLinkModifier_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|779787436", "779787436", "UNI04_PRE_INTRO", "box_EntityStatusListener_87.Loaded", "box_NavLinkModifier_84.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_40_Enabled()
    self:OnExit_box_GroupSizeListener_v5_40_Enabled();
end;

function export:f_box_GroupSizeListener_v5_40_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_40_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_40_MemberRemoved()
    local params, l0, l1;
    self:OnExit_box_GroupSizeListener_v5_40_MemberRemoved();
    params = self:OnEnter_box_Compare_Integers_22();
    l0 = self.box_GroupSizeListener_v5_40;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1139896774", "1139896774", "UNI04_PRE_INTRO", "box_GroupSizeListener_v5_40.MemberRemoved", "box_Compare_Integers_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_113_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_114();
    l0 = self.box_StaticBreakableListener_113;
    l1 = self.box_BurnableObjectListener_v2_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1156812777", "1156812777", "UNI04_PRE_INTRO", "box_StaticBreakableListener_113.Disabled", "box_BurnableObjectListener_v2_114.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_113_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_114();
    l0 = self.box_StaticBreakableListener_113;
    l1 = self.box_BurnableObjectListener_v2_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|845120818", "845120818", "UNI04_PRE_INTRO", "box_StaticBreakableListener_113.Enabled", "box_BurnableObjectListener_v2_114.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_113_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_113;
    l1 = self.box_MultipleOR_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|308784420", "308784420", "UNI04_PRE_INTRO", "box_StaticBreakableListener_113.OnBreak", "box_MultipleOR_112.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityRadiusListener_v3_21_SomeoneNear()
    local l0, l1;
    l0 = self.box_ProximityRadiusListener_v3_21;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|737772907", "737772907", "UNI04_PRE_INTRO", "box_ProximityRadiusListener_v3_21.SomeoneNear", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_47_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_47;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|713706981", "713706981", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_47.Finished", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_47_Interrupted()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_47;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|744137644", "744137644", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_47.Interrupted", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_112_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_112;
    l1 = self.box_OnceOnly_v3_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1237193056", "1237193056", "UNI04_PRE_INTRO", "box_MultipleOR_112.Out", "box_OnceOnly_v3_111.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_52_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_52;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1736941427", "1736941427", "UNI04_PRE_INTRO", "box_ActivityAcknowledgeGate_52.Acknowledged", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_52_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_52;
    l1 = self.box_MultipleOR_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|43723379", "43723379", "UNI04_PRE_INTRO", "box_ActivityAcknowledgeGate_52.Reloaded", "box_MultipleOR_59.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_101_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_100();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1313505001", "1313505001", "UNI04_PRE_INTRO", "box_OutputOrder_v2_101.Out", "box_IsEntityInGroup_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_94();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|723326007", "723326007", "UNI04_PRE_INTRO", "box_OutputOrder_v2_101.Out", "box_IsEntityInGroup_94.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_101_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsEntityInGroup_104();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|215281138", "215281138", "UNI04_PRE_INTRO", "box_OutputOrder_v2_101.Out", "box_IsEntityInGroup_104.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2124715608", "2124715608", "UNI04_PRE_INTRO", "box_OutputOrder_v2_116.Out", "box_Simple_Node_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_116_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_64();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1756768991", "1756768991", "UNI04_PRE_INTRO", "box_OutputOrder_v2_116.Out", "box_ActivityRetry_64.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1140880678", "1140880678", "UNI04_PRE_INTRO", "box_MultipleOR_5.Out", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityInGroup_100_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_110();
    l0 = self.box_StaticBreakableListener_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|337626667", "337626667", "UNI04_PRE_INTRO", "box_IsEntityInGroup_100.True", "box_StaticBreakableListener_110.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Brick_PlayDialog_Relax_24_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_24;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1824321631", "1824321631", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_24.Finished", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_24_Interrupted()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_24;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|283433888", "283433888", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_24.Interrupted", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_83();
    l0 = self.box_EntityStatusListener_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1227775960", "1227775960", "UNI04_PRE_INTRO", "box_OutputOrder_v2_10.Out", "box_EntityStatusListener_83.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_78();
    l0 = self.box_EntityStatusListener_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|796291469", "796291469", "UNI04_PRE_INTRO", "box_OutputOrder_v2_10.Out", "box_EntityStatusListener_78.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_79();
    l0 = self.box_EntityStatusListener_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1742232680", "1742232680", "UNI04_PRE_INTRO", "box_OutputOrder_v2_10.Out", "box_EntityStatusListener_79.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_68();
    l0 = self.box_StaticBreakableListener_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|289219347", "289219347", "UNI04_PRE_INTRO", "box_OutputOrder_v2_10.Out", "box_StaticBreakableListener_68.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|473822237", "473822237", "UNI04_PRE_INTRO", "box_OutputOrder_v2_8.Out", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|568165268", "568165268", "UNI04_PRE_INTRO", "box_OutputOrder_v2_8.Out", "box_MultipleOR_3.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 9);
end;

function export:f_box_Gate_v3_121_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetHealthState_119();
    l0 = self.box_Gate_v3_121;
    l1 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|533927927", "533927927", "UNI04_PRE_INTRO", "box_Gate_v3_121.Out", "box_GetHealthState_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_UniversalInteractionModifier_v2_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_26();
    l0 = self.box_UniversalInteractionModifier_v2_27;
    l1 = self.box_Brick_Interact_With_Object_V5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|798924570", "798924570", "UNI04_PRE_INTRO", "box_UniversalInteractionModifier_v2_27.Enabled", "box_Brick_Interact_With_Object_V5_26.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_60_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_55();
    l0 = self.box_ActivityInitialized_60;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|312732946", "312732946", "UNI04_PRE_INTRO", "box_ActivityInitialized_60.Out", "box_GetPlayerGroup_v2_55.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StaticBreakableListener_110_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_98();
    l0 = self.box_StaticBreakableListener_110;
    l1 = self.box_BurnableObjectListener_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1610354285", "1610354285", "UNI04_PRE_INTRO", "box_StaticBreakableListener_110.Disabled", "box_BurnableObjectListener_v2_98.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_StaticBreakableListener_110_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_BurnableObjectListener_v2_98();
    l0 = self.box_StaticBreakableListener_110;
    l1 = self.box_BurnableObjectListener_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|886219166", "886219166", "UNI04_PRE_INTRO", "box_StaticBreakableListener_110.Enabled", "box_BurnableObjectListener_v2_98.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_StaticBreakableListener_110_OnBreak()
    local l0, l1;
    l0 = self.box_StaticBreakableListener_110;
    l1 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|325145319", "325145319", "UNI04_PRE_INTRO", "box_StaticBreakableListener_110.OnBreak", "box_MultipleOR_99.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_2();
    l0 = self.box_MultipleOR_120;
    l1 = self.box_Switch_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1977394061", "1977394061", "UNI04_PRE_INTRO", "box_MultipleOR_120.Out", "box_Switch_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1622034823", "1622034823", "UNI04_PRE_INTRO", "box_OutputOrder_v2_122.Out", "box_Simple_Node_89.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_77();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|150365578", "150365578", "UNI04_PRE_INTRO", "box_OutputOrder_v2_122.Out", "box_ActivityEnd_77.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_MultipleOR_3;
    l1 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1972432761", "1972432761", "UNI04_PRE_INTRO", "box_MultipleOR_3.Out", "box_Delay_v5_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Simple_Node_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1494677303", "1494677303", "UNI04_PRE_INTRO", "box_Simple_Node_20.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_PlayDialog_Relax_36_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_36;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1285807323", "1285807323", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_36.Finished", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_36_Interrupted()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_36;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1735394023", "1735394023", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_36.Interrupted", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_IsEntityInGroup_104_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    local clone = l0;
    params = self:OnEnter_box_StaticBreakableListener_113();
    l0 = self.box_StaticBreakableListener_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1900567400", "1900567400", "UNI04_PRE_INTRO", "box_IsEntityInGroup_104.True", "box_StaticBreakableListener_113.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_99_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_99;
    l1 = self.box_OnceOnly_v3_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1916074782", "1916074782", "UNI04_PRE_INTRO", "box_MultipleOR_99.Out", "box_OnceOnly_v3_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_35_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_35;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|226469348", "226469348", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_35.Finished", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Brick_PlayDialog_Relax_35_Interrupted()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_35;
    l1 = self.box_MultipleOR_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1139824614", "1139824614", "UNI04_PRE_INTRO", "box_Brick_PlayDialog_Relax_35.Interrupted", "box_MultipleOR_17.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_UniversalInteractionModifier_v2_82_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_15();
    l0 = self.box_UniversalInteractionModifier_v2_82;
    l1 = self.box_Brick_Interact_With_Object_V5_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|751908884", "751908884", "UNI04_PRE_INTRO", "box_UniversalInteractionModifier_v2_82.Enabled", "box_Brick_Interact_With_Object_V5_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_BaseMissionBlock_v2_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_BaseMissionBlock_v2_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|113861784", "113861784", "UNI04_PRE_INTRO", "box_BaseMissionBlock_v2_30.Enabled", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_89_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|@n_NewLine");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_102_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_103()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|@n_ResetLines");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|7405690");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_29_Out,
    });
    params = {
        -- Entities,
        [0] = "2100025937545409369",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|26317073");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "blue",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "--- UNI04_010_PRE_INTRO - GENERATOR 03 REMOVED FROM GROUP ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    DrawTextToScreen("Comment: Delay for new Line", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Delay_v5')-- Comment: Delay for new Line");
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = self.eLarry,
        -- nearZone,
        [4] = 32,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_LookAtTrigger_v2_33()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- pawns,
        [1] = self.gPlayerGroup,
        -- triggerId,
        [2] = "2100606539933951448",
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

function export:OnEnter_box_ActivityEnd_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|185784132");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|199421417");
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
                [0] = self.f_box_OutputOrder_v2_58_Out_0,
                [1] = self.f_box_OutputOrder_v2_58_Out_1,
                [2] = self.f_box_OutputOrder_v2_58_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_68()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- entity,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|278987558");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "blue",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "--- UNI04_010_PRE_INTRO - GENERATOR 01 REMOVED FROM GROUP ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|301686077");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_114()
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

function export:OnEnter_box_NavLinkModifier_48()
    local params;
    params = {
        -- Entity,
        [0] = "2100205888850637144",
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_109()
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

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|384504115");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 7,
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
                [3] = self.f_box_OutputOrder_v2_42_Out_3,
                [4] = self.f_box_OutputOrder_v2_42_Out_4,
                [5] = self.f_box_OutputOrder_v2_42_Out_5,
                [6] = self.f_box_OutputOrder_v2_42_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_6()
    local params;
    DrawTextToScreen("Comment: real mess", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_PlayDialog_Relax')-- Comment: real mess");
    params = {
        -- Group,
        [0] = "#FD83C1A4",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "600730228",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_26()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2100025914866807637",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_18()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_76()
    local params;
    DrawTextToScreen("Comment: Oh No!", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_PlayDialog_Relax')-- Comment: Oh No!");
    params = {
        -- Group,
        [0] = "#FD83C1A4",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "1875921779",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_25()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2100025937545409369",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
    };
    return params;
end;

function export:OnEnter_box_Switch_2()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_49()
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

function export:OnEnter_box_RemoveFromGroup_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|600255110");
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

function export:OnEnter_box_HealthListener_v6_118()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|631051993");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_61_A_le_B,
    });
    params = {
        -- A,
        [0] = self.i_generatorAlive,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_69()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkOnEnable,
        [1] = false,
        -- objectId,
        [2] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_83()
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

function export:OnEnter_box_GetPlayerGroup_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|681770974");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BurnableObjectListener_v2_98()
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

function export:OnEnter_box_UniversalInteractionModifier_v2_28()
    local params;
    params = {
        -- usableEntity,
        [4] = "2100025937545409369",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_46()
    local params;
    DrawTextToScreen("Comment: trapped. Wither and die", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_PlayDialog_Relax')-- Comment: trapped. Wither and die");
    params = {
        -- Group,
        [0] = "#FD83C1A4",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "1739292488",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_90()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104355703329136019",
    };
    return params;
end;

function export:OnEnter_box_GetHealthState_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetHealthState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetHealthState_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|817024342");
    l0:SetConnections({
        -- Down,
        [2] = self.f_box_GetHealthState_119_Down,
        -- Healthy,
        [3] = self.f_box_GetHealthState_119_Healthy,
    });
    params = {
        -- Pawn,
        [0] = self.eLarry,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|839682567");
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

function export:OnEnter_box_OutputOrder_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|842490135");
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
                [0] = self.f_box_OutputOrder_v2_65_Out_0,
                [1] = self.f_box_OutputOrder_v2_65_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|847557932");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_32_Out,
    });
    params = {
        -- Entities,
        [0] = "2100069676083060902",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_88()
    local params;
    params = {
        -- missionBlockId,
        [0] = "45174641795367777",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_38()
    local params;
    DrawTextToScreen("Comment: show yourself", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_PlayDialog_Relax')-- Comment: show yourself");
    params = {
        -- Group,
        [0] = "#FD83C1A4",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "2432506040",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_75()
    local params;
    DrawTextToScreen("Comment: Walk on by", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_PlayDialog_Relax')-- Comment: Walk on by");
    params = {
        -- Group,
        [0] = "#FD83C1A4",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "921950423",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_15()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = false,
        -- e_EntityToInteractWith,
        [3] = "2100069676083060902",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_53()
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

function export:OnEnter_box_ActivityRetry_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|933434303");
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

function export:OnEnter_box_BaseMissionBlock_v2_37()
    local params;
    params = {
        -- missionBlockId,
        [0] = "63189040304857693",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_117()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|975525990");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_92_Damaged,
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

function export:OnEnter_box_EntityStatusListener_79()
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

function export:OnEnter_box_BaseMissionBlock_v2_115()
    local params;
    params = {
        -- missionBlockId,
        [0] = "45174641795367777",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_78()
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

function export:OnEnter_box_Compare_Integers_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1053358910");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_41_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.i_GeneratorRemaining,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1073884988");
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

function export:OnEnter_box_RemoveFromGroup_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1146883804");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = self.e_targetEntity,
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_105()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100025914866807637",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1151402152");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveFromGroup_v2_31_Out,
    });
    params = {
        -- Entities,
        [0] = "2100025914866807637",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_34()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1199301203");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_22_A_eq_B,
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_22_A_gt_B,
    });
    params = {
        -- A,
        [0] = self.i_GeneratorRemaining,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_91()
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

function export:OnEnter_box_ActivityEnd_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1212805849");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_54()
    local params;
    params = {
        -- Entity,
        [0] = "2100205894846394716",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1215501132");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_43()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_67()
    local params;
    params = {
        -- missionBlockId,
        [0] = "63189040304857693",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1286383848");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
                [1] = self.f_box_OutputOrder_v2_50_Out_1,
                [2] = self.f_box_OutputOrder_v2_50_Out_2,
                [3] = self.f_box_OutputOrder_v2_50_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1314500656");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "blue",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "--- UNI04_010_PRE_INTRO - GENERATOR 02 REMOVED FROM GROUP ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1326233909");
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

function export:OnEnter_box_IsEntityInGroup_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1346654209");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_70_True,
    });
    params = {
        -- Entity,
        [0] = self.e_targetEntity,
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_86()
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

function export:OnEnter_box_Print_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1380214781");
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
        [8] = "--- UNI04_010_PRE_INTRO - SCRIPT IS RUNNING ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_73()
    local params;
    params = {
        -- missionBlockId,
        [0] = "18152988850674354",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1414650557");
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

function export:OnEnter_box_IsEntityInGroup_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1467903060");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_94_True,
    });
    params = {
        -- Entity,
        [0] = "2100025914866807637",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_84()
    local params;
    params = {
        -- Entity,
        [0] = "2100206128618015679",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_87()
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

function export:OnEnter_box_BaseMissionBlock_v2_74()
    local params;
    params = {
        -- missionBlockId,
        [0] = "63189040304857693",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_40()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_113()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100025937545409369",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_85()
    local params;
    params = {
        -- Entity,
        [0] = "2100206128620112835",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_21()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- id2,
        [3] = self.eLarry,
        -- nearZone,
        [4] = 64,
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_47()
    local params;
    DrawTextToScreen("Comment: Anne, I can use some help.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_PlayDialog_Relax')-- Comment: Anne, I can use some help.");
    params = {
        -- Group,
        [0] = "#FD83C1A4",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "2453575734",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_101()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1699659105");
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
                [0] = self.f_box_OutputOrder_v2_101_Out_0,
                [1] = self.f_box_OutputOrder_v2_101_Out_1,
                [2] = self.f_box_OutputOrder_v2_101_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1705559571");
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
                [0] = self.f_box_OutputOrder_v2_116_Out_0,
                [1] = self.f_box_OutputOrder_v2_116_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1713986217");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_100_True,
    });
    params = {
        -- Entity,
        [0] = "2100069676083060902",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_24()
    local params;
    DrawTextToScreen("Comment: help me. 3 generators", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_PlayDialog_Relax')-- Comment: help me. 3 generators");
    params = {
        -- Group,
        [0] = "#FD83C1A4",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "2140228884",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1719444238");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
                [3] = self.f_box_OutputOrder_v2_10_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1850777956");
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

function export:OnEnter_box_Gate_v3_121()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_27()
    local params;
    params = {
        -- usableEntity,
        [4] = "2100025914866807637",
    };
    return params;
end;

function export:OnEnter_box_StaticBreakableListener_110()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- entity,
        [1] = "2100069676083060902",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|1973406714");
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
                [0] = self.f_box_OutputOrder_v2_122_Out_0,
                [1] = self.f_box_OutputOrder_v2_122_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2023826858");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_20_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetActivityFact_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityFact.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityFact_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2080158724");
    l0:SetConnections({
    });
    params = {
        -- Fact,
        [0] = "uni04_generator_destroyed",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_36()
    local params;
    DrawTextToScreen("Comment: don mind me. Trapped", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_PlayDialog_Relax')-- Comment: don mind me. Trapped");
    params = {
        -- Group,
        [0] = "#FD83C1A4",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "2645806811",
    };
    return params;
end;

function export:OnEnter_box_IsEntityInGroup_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/IsEntityInGroup.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsEntityInGroup_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_PRE_INTRO.domino|@UNI04_PRE_INTRO|2094090638");
    l0:SetConnections({
        -- True,
        [1] = self.f_box_IsEntityInGroup_104_True,
    });
    params = {
        -- Entity,
        [0] = "2100025937545409369",
        -- Group,
        [1] = "#7ED71277",
    };
    return params;
end;

function export:OnEnter_box_Brick_PlayDialog_Relax_35()
    local params;
    DrawTextToScreen("Comment: Think Larry", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Brick_PlayDialog_Relax')-- Comment: Think Larry");
    params = {
        -- Group,
        [0] = "#FD83C1A4",
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "412909182",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_82()
    local params;
    params = {
        -- usableEntity,
        [4] = "2100069676083060902",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_30()
    local params;
    params = {
        -- missionBlockId,
        [0] = "18152988850674354",
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_45_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_45;
    self.eLarry = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StaticBreakableListener_68_OnBreak()
    local l0;
    l0 = self.box_StaticBreakableListener_68;
    self.e_targetEntity = l0:GetDataOutValue(2);
end;

function export:OnExit_box_StaticBreakableListener_68_OnBreakAll()
    local l0;
    l0 = self.box_StaticBreakableListener_68;
    self.e_targetEntity = l0:GetDataOutValue(2);
end;

function export:OnExit_box_StaticBreakableListener_68_OnDamage()
    local l0;
    l0 = self.box_StaticBreakableListener_68;
    self.e_targetEntity = l0:GetDataOutValue(2);
end;

function export:OnExit_box_StaticBreakableListener_68_OnHit()
    local l0;
    l0 = self.box_StaticBreakableListener_68;
    self.e_targetEntity = l0:GetDataOutValue(2);
end;

function export:OnExit_box_StaticBreakableListener_68_OnStateChanged()
    local l0;
    l0 = self.box_StaticBreakableListener_68;
    self.e_targetEntity = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPlayerGroup_v2_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_34_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_34;
    self.i_generatorAlive = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_34_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_34;
    self.i_generatorAlive = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_34_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_34;
    self.i_generatorAlive = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_40_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_40;
    self.i_GeneratorRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_40_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_40;
    self.i_GeneratorRemaining = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_40_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_40;
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
