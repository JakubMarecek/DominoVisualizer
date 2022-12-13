LUACt% -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni53/uni53_010_b30.domino
-- User graph: UNI53_010_B30
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Random.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundShapeModifier.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/StimsEmitter_v2.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/UI/ActivityForceAndLockTracking.lua");
        cboxRes:RegisterBox("Domino/System/UniversalInteractionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.CIN_UNI53_010_BurningBook.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.InsideStatueObjListenerAndSpawners.debug.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.WhichSpawnerPlayerProgression.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2078697333.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3549817305.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2744083602.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2561899389.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1267667523.bnk]], "CSoundResource");
        cboxRes:LoadResource([[183396361.bnk]], "CSoundResource");
        cboxRes:LoadResource([[808122783.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1599737336.bnk]], "CSoundResource");
        cboxRes:LoadResource([[939107644.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1082271673.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2587693195.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2916612462.bnk]], "CSoundResource");
        cboxRes:LoadResource([[149720906.bnk]], "CSoundResource");
        cboxRes:LoadResource([[975476695.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.UNI53_010_B30.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CIN_Skip",
            },
            [1] = {
                name = "Start",
            },
            [2] = {
                name = "Start_Reset_MIS_Attacked",
            },
            [3] = {
                name = "Stop",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Box_Skipped",
                delayed = false,
            },
            [1] = {
                name = "CIN_Skipped",
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
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "MUS_MIS_Step",
                type = "int",
            },
            [3] = {
                name = "Priority",
                type = "int",
            },
            [4] = {
                name = "SoundType",
                type = "SoundType",
            },
            [5] = {
                name = "Stackable",
                type = "bool",
            },
            [6] = {
                name = "StartEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopEvent",
                type = "Sound",
            },
            [8] = {
                name = "StopFadeOut",
                type = "float",
            },
            [9] = {
                name = "WaitForMusicStatePriorityOver",
                type = "int",
            },
            [10] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [11] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
            },
            [1] = {
                name = "targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/PhoneCallExclusivityModifier.lua")] = {
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
        },
        controlOutCount = 2,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
                type = "entity",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/SoundShapeModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Resume",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Paused",
                delayed = false,
            },
            [1] = {
                name = "Resumed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "FadeTime",
                type = "float",
            },
            [1] = {
                name = "SoundShapeId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")] = {
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
        },
        dataInCount = 0,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.CIN_UNI53_010_BurningBook.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.InsideStatueObjListenerAndSpawners.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "LaddersCall",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "LastFloorReached",
                delayed = false,
            },
            [1] = {
                name = "MoreNpcCalls",
                delayed = false,
            },
            [2] = {
                name = "Out",
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.WhichSpawnerPlayerProgression.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI53_010_B30";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30";
    self.Players = nil;
    self.thermobaric_charges_set = 1;
    self.uni53_Guards = 0;
    self.IsPlayerOn2Floor = false;
    self.eFarMiddle = 0;
    self.eFarLeft = 0;
    self.eFarRight = 0;
    self.Barricade_Guard = 0;
    self.box_SoundModifier_v2_203 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|13667730");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_203_Started,
    });
    self.box_OnceOnly_v3_16 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|54502128");
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
                [0] = self.f_box_OnceOnly_v3_16_Out_0,
            },
            count = 2,
        },
    });
    self.box_Gate_v3_151 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_151;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|56538887");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_151_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_151_Out,
    });
    self.box_Music_Quest_v2_102 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|56848178");
    l0:SetConnections({
    });
    self.box_SpawnAI_64 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|73548702");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_64_Spawned,
    });
    self.box_PositionModifier_v2_80 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|80307992");
    l0:SetConnections({
    });
    self.box_SpawnAI_126 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|119039059");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_126_Spawned,
    });
    self.box_ActivityAcknowledgeGate_3 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|141316720");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_3_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_3_Reloaded,
    });
    self.box_PositionModifier_v2_37 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|141768092");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_37_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_37_StartOut,
    });
    self.box_Music_Quest_v2_95 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|223016928");
    l0:SetConnections({
    });
    self.box_MultipleOR_207 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_207;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|291056368");
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
        [0] = self.f_box_MultipleOR_207_Out,
    });
    self.box_NavLinkModifier_109 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_109;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|314330732");
    l0:SetConnections({
    });
    self.box_MultipleOR_96 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|374931889");
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
        [0] = self.f_box_MultipleOR_96_Out,
    });
    self.box_Gate_v3_162 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|377285400");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_162_Closed,
        -- Out,
        [2] = self.f_box_Gate_v3_162_Out,
    });
    self.box_MultipleOR_90 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_90;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|402690307");
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
        [0] = self.f_box_MultipleOR_90_Out,
    });
    self.box_ProximityTrigger_v2_139 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_139;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|414083579");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_139_Enter,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_139_OnOccupied,
    });
    self.box_SoundModifier_v2_84 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|418811251");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_214 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|428726596");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_214_Started,
    });
    self.box_PositionModifier_v2_48 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|431173221");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_48_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_48_StartOut,
    });
    self.box_MultipleOR_134 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|435746616");
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
        [0] = self.f_box_MultipleOR_134_Out,
    });
    self.box_OnceOnly_v3_144 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|445734246");
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
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|462149589");
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
    self.box_RemoveEntity_v2_123 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|468309895");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_123_Out,
    });
    self.box_SpawnAI_66 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|473335999");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_66_Spawned,
    });
    self.box_PositionModifier_v2_74 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|473461841");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_74_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_74_StartOut,
    });
    self.box_Delay_v5_42 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|501115724");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_42_TimeElapsed,
    });
    self.box_NavLinkModifier_60 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|525608569");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_60_Activated,
    });
    self.box_Delay_v5_82 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|551317500");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_82_TimeElapsed,
    });
    self.box_SpawnAI_130 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|571416447");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_62 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|578131906");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_62_Enter,
    });
    self.box_RemoveEntity_v2_35 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|578933163");
    l0:SetConnections({
    });
    self.box_Gate_v3_185 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|581365477");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_185_Out,
    });
    self.box_RemoveEntity_v2_157 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|605568926");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_157_Out,
    });
    self.box_Gate_v3_61 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|606404989");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_61_Out,
    });
    self.box_RemoveEntity_v2_28 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|610474160");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_28_Out,
    });
    self.box_RemoveEntity_v2_46 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|620562186");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_46_Out,
    });
    self.box_NavLinkModifier_112 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|629622871");
    l0:SetConnections({
    });
    self.box_Delay_v5_97 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|649679249");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_97_TimeElapsed,
    });
    self.box_Music_Quest_v2_101 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|657360087");
    l0:SetConnections({
    });
    self.box_Gate_v3_160 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|667459739");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_160_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_160_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_160_Out,
    });
    self.box_Delay_v5_93 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_93;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|681891859");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_93_TimeElapsed,
    });
    self.box_EntityStatusListener_183 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_183;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|689748739");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_183_Loaded,
    });
    self.box_Delay_v5_181 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_181;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|692955178");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_181_TimeElapsed,
    });
    self.box_NavLinkModifier_193 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_193;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|704650670");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_NavLinkModifier_193_Activated,
    });
    self.box_RequestPhoneCall_v2_199 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|731997089");
    l0:SetConnections({
    });
    self.box_UniversalInteractionModifier_v2_119 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|762466123");
    l0:SetConnections({
    });
    self.box_MultipleOR_115 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|812543790");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 4,
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
    self.box_BaseMissionBlock_v2_54 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|858936177");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_BaseMissionBlock_v2_54_Disabled,
    });
    self.box_RemoveEntity_v2_71 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|867005755");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_71_Out,
    });
    self.box_Gate_v3_158 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|875836179");
    l0:SetConnections({
        -- Closed,
        [0] = self.f_box_Gate_v3_158_Closed,
        -- Opened,
        [1] = self.f_box_Gate_v3_158_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_158_Out,
    });
    self.box_OnceOnly_v3_91 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|876390333");
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
                [0] = self.f_box_OnceOnly_v3_91_Out_0,
            },
            count = 2,
        },
    });
    self.box_NavLinkModifier_110 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|900977143");
    l0:SetConnections({
    });
    self.box_Random_14 = cbox:CreateBox("Domino/System/Random.lua");
    l0 = self.box_Random_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Random_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|908191800");
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
                [0] = self.f_box_Random_14_Output_0,
                [1] = self.f_box_Random_14_Output_1,
                [2] = self.f_box_Random_14_Output_2,
            },
            count = 3,
        },
    });
    self.box_SoundModifier_v2_121 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|922336457");
    l0:SetConnections({
    });
    self.box_Delay_v5_204 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|952972772");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_204_TimeElapsed,
    });
    self.box_Delay_v5_194 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_194;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|957241819");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_194_TimeElapsed,
    });
    self.box_RequestPhoneCall_v2_200 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|983779080");
    l0:SetConnections({
    });
    self.box_BaseMissionBlock_v2_105 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1009640157");
    l0:SetConnections({
    });
    self.box_RequestPhoneCall_v2_13 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1023210293");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_13_Completed,
    });
    self.box_RequestPhoneCall_v2_53 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1034153711");
    l0:SetConnections({
        -- Started,
        [5] = self.f_box_RequestPhoneCall_v2_53_Started,
    });
    self.box_RequestPhoneCall_v2_201 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_201;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1038340463");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_45 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1046665904");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_45_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_45_StartOut,
    });
    self.box_MultipleOR_94 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1064149177");
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
        [0] = self.f_box_MultipleOR_94_Out,
    });
    self.box_PositionModifier_v2_138 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1064851312");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_138_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_138_StartOut,
    });
    self.box_Delay_v5_213 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_213;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1090699924");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_213_TimeElapsed,
    });
    self.box_SoundModifier_v2_51 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1106181843");
    l0:SetConnections({
    });
    self.box_CIN_UNI53_010_BurningBook_7 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.CIN_UNI53_010_BurningBook.debug.lua");
    l0 = self.box_CIN_UNI53_010_BurningBook_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CIN_UNI53_010_BurningBook_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1129203413");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CIN_UNI53_010_BurningBook_7_Out,
    });
    self.box_Gate_v3_44 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1135289361");
    l0:SetConnections({
        -- Opened,
        [1] = self.f_box_Gate_v3_44_Opened,
        -- Out,
        [2] = self.f_box_Gate_v3_44_Out,
    });
    self.box_StartCelebration_172 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_172;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1136029359");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_172_Ended,
        -- Started,
        [1] = self.f_box_StartCelebration_172_Started,
    });
    self.box_WhichSpawnerPlayerProgression_167 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.WhichSpawnerPlayerProgression.debug.lua");
    l0 = self.box_WhichSpawnerPlayerProgression_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WhichSpawnerPlayerProgression_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1138229012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_WhichSpawnerPlayerProgression_167_Out,
    });
    self.box_Switch_116 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1169306096");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_116_Output_0,
                [1] = self.f_box_Switch_116_Output_1,
                [2] = self.f_box_Switch_116_Output_2,
                [3] = self.f_box_Switch_116_Output_3,
            },
            count = 4,
        },
    });
    self.box_Delay_v5_179 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_179;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1174011406");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_179_TimeElapsed,
    });
    self.box_SoundModifier_v2_40 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1205543572");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_58 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1216959856");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_58_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_58_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_58_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_58_MemberRemoved,
    });
    self.box_NavLinkModifier_107 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1242738616");
    l0:SetConnections({
    });
    self.box_MultipleOR_205 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1261264539");
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
        [0] = self.f_box_MultipleOR_205_Out,
    });
    self.box_MultipleOR_103 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1298540587");
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
        [0] = self.f_box_MultipleOR_103_Out,
    });
    self.box_RemoveEntity_v2_161 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1307805928");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_161_Out,
    });
    self.box_RemoveEntity_v2_17 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1317808625");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_17_Out,
    });
    self.box_SoundModifier_v2_69 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1331225092");
    l0:SetConnections({
    });
    self.box_Delay_v5_152 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1343032099");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_152_TimeElapsed,
    });
    self.box_Brick_Interact_With_Object_V5_75 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1350007879");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_75_Success,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1357814908");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_MultipleOR_212 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_212;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1358543912");
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
        [0] = self.f_box_MultipleOR_212_Out,
    });
    self.box_MultipleOR_114 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1363423369");
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
        [0] = self.f_box_MultipleOR_114_Out,
    });
    self.box_EntityStatusListener_182 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1365038867");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_182_Loaded,
    });
    self.box_SpawnAI_127 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1388231740");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_127_Spawned,
    });
    self.box_GroupSizeListener_v5_135 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1394532149");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_135_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_135_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_135_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_135_MemberRemoved,
    });
    self.box_RequestPhoneCall_v2_176 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_176;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_176");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1399090116");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_176_Completed,
    });
    self.box_Delay_v5_192 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_192;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1433673589");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_192_TimeElapsed,
    });
    self.box_UniversalInteractionModifier_v2_108 = cbox:CreateBox("Domino/System/UniversalInteractionModifier_v2.lua");
    l0 = self.box_UniversalInteractionModifier_v2_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UniversalInteractionModifier_v2_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1451715459");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_59 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1467366411");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_59_Enter,
    });
    self.box_OnceOnly_v3_83 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1482076756");
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
                [0] = self.f_box_OnceOnly_v3_83_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityTrigger_v2_25 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1487175201");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_25_Enter,
    });
    self.box_Brick_Interact_With_Object_V5_49 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1516829450");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_49_Success,
    });
    self.box_SoundModifier_v2_67 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1552037833");
    l0:SetConnections({
    });
    self.box_Delay_v5_211 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_211;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1576362536");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_211_TimeElapsed,
    });
    self.box_RemoveEntity_v2_38 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1576681549");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_55 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1576684015");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_55_Enter,
    });
    self.box_SoundModifier_v2_208 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_208;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1656970390");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_208_Started,
    });
    self.box_InsideStatueObjListenerAndSpawners_39 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI53/UNI53_010_B30.InsideStatueObjListenerAndSpawners.debug.lua");
    l0 = self.box_InsideStatueObjListenerAndSpawners_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InsideStatueObjListenerAndSpawners_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1661313646");
    l0:SetConnections({
        -- LastFloorReached,
        [0] = self.f_box_InsideStatueObjListenerAndSpawners_39_LastFloorReached,
        -- MoreNpcCalls,
        [1] = self.f_box_InsideStatueObjListenerAndSpawners_39_MoreNpcCalls,
        -- Out,
        [2] = self.f_box_InsideStatueObjListenerAndSpawners_39_Out,
    });
    self.box_SoundModifier_v2_210 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1684136883");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_210_Started,
    });
    self.box_PositionModifier_v2_85 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1696393667");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PositionModifier_v2_85_Done,
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_85_StartOut,
    });
    self.box_GroupSizeListener_v5_136 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1747307108");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_136_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_136_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_136_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_136_MemberRemoved,
    });
    self.box_GroupSizeListener_v5_65 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1779363759");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_65_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_65_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_65_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_65_MemberRemoved,
    });
    self.box_Delay_v5_226 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_226;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1788519793");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_226_TimeElapsed,
    });
    self.box_PositionModifier_v2_170 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1799121666");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_170_StartOut,
    });
    self.box_MultipleOR_215 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_215;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1804585600");
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
        [0] = self.f_box_MultipleOR_215_Out,
    });
    self.box_MultipleOR_29 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1809682159");
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
        [0] = self.f_box_MultipleOR_29_Out,
    });
    self.box_NavLinkModifier_155 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1818014329");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_155_Deactivated,
    });
    self.box_OnceOnly_v3_122 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_122;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1828062198");
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
                [0] = self.f_box_OnceOnly_v3_122_Out_0,
            },
            count = 2,
        },
    });
    self.box_SpawnAI_22 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1846116906");
    l0:SetConnections({
    });
    self.box_SpawnAI_63 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1857970024");
    l0:SetConnections({
        -- Success,
        [3] = self.f_box_SpawnAI_63_Success,
    });
    self.box_SpawnAI_20 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1929585191");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_20_Spawned,
    });
    self.box_NavLinkModifier_159 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1979868623");
    l0:SetConnections({
    });
    self.box_Switch_113 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1988817923");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 7,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_113_Output_0,
                [1] = self.f_box_Switch_113_Output_1,
                [2] = self.f_box_Switch_113_Output_2,
                [3] = self.f_box_Switch_113_Output_3,
                [4] = self.f_box_Switch_113_Output_4,
                [5] = self.f_box_Switch_113_Output_5,
                [6] = self.f_box_Switch_113_Output_6,
            },
            count = 7,
        },
    });
    self.box_Music_Quest_v2_104 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2018586351");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_173 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_173;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2044092375");
    l0:SetConnections({
        -- StartOut,
        [2] = self.f_box_PositionModifier_v2_173_StartOut,
    });
    self.box_PhoneCallExclusivityModifier_76 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2044798149");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_76_Enabled,
    });
    self.box_SpawnAI_117 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2051925384");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_117_Spawned,
        -- Success,
        [3] = self.f_box_SpawnAI_117_Success,
    });
    self.box_Delay_v5_191 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_191;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2054276761");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_191_TimeElapsed,
    });
    self.box_Gate_v3_184 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2056820446");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_184_Out,
    });
    self.box_OnceOnly_v3_79 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2084983540");
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
                [0] = self.f_box_OnceOnly_v3_79_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_202 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2086106618");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_202_Completed,
    });
    self.box_PositionModifier_v2_77 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2088287091");
    l0:SetConnections({
    });
    self.box_Delay_v5_206 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_206;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2102994330");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_206_TimeElapsed,
    });
    self.box_PhysicsModifier_36 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2105284592");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_36_Disabled,
    });
    self.box_NavLinkModifier_78 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2108356781");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_78_Deactivated,
    });
    self.box_Delay_v5_163 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_163;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2139524471");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_163_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2097228226", "2097228226", "UNI53_010_B30", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_180();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2112626628", "2112626628", "UNI53_010_B30", "OnLeaveZone", "box_OutputOrder_v2_180.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_164_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_158();
    l0 = self.box_Gate_v3_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1900094491", "1900094491", "UNI53_010_B30", "box_Simple_Node_164.Out", "box_Gate_v3_158.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_153_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_InsideStatueObjListenerAndSpawners_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|643184463", "643184463", "UNI53_010_B30", "box_Simple_Node_153.Out", "box_InsideStatueObjListenerAndSpawners_39.LaddersCall", clone:GetLuaBox(), l0:GetLuaBox());
    -- LaddersCall
    l0:Exec(1, {
    });
end;

function export:f_box_Simple_Node_189_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_185();
    l0 = self.box_Gate_v3_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|415849263", "415849263", "UNI53_010_B30", "box_Simple_Node_189.Out", "box_Gate_v3_185.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_190_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1790934141", "1790934141", "UNI53_010_B30", "box_Simple_Node_190.Out", "box_Gate_v3_184.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_72_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|884010958", "884010958", "UNI53_010_B30", "box_Simple_Node_72.Out", "box_OutputOrder_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_128_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_192();
    l0 = self.box_Delay_v5_192;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2087117066", "2087117066", "UNI53_010_B30", "box_Simple_Node_128.Out", "box_Delay_v5_192.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_129_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_194();
    l0 = self.box_Delay_v5_194;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|314967917", "314967917", "UNI53_010_B30", "box_Simple_Node_129.Out", "box_Delay_v5_194.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Random_14();
    l0 = self.box_Random_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|191770491", "191770491", "UNI53_010_B30", "box_Simple_Node_41.Out", "box_Random_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|897544089", "897544089", "UNI53_010_B30", "box_Simple_Node_27.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_74();
    l0 = self.box_PositionModifier_v2_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|907254508", "907254508", "UNI53_010_B30", "box_Simple_Node_31.Out", "box_PositionModifier_v2_74.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|650331974", "650331974", "UNI53_010_B30", "box_Simple_Node_32.Out", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_154_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_44();
    l0 = self.box_Gate_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1960378672", "1960378672", "UNI53_010_B30", "box_Simple_Node_154.Out", "box_Gate_v3_44.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_220_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1027083589", "1027083589", "UNI53_010_B30", "box_Simple_Node_220.Out", "box_MultipleOR_207.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_MultipleOR_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1053189180", "1053189180", "UNI53_010_B30", "box_Simple_Node_220.Out", "box_MultipleOR_205.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_222_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1460211432", "1460211432", "UNI53_010_B30", "box_Simple_Node_222.Out", "box_MultipleOR_215.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_223_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1582102197", "1582102197", "UNI53_010_B30", "box_Simple_Node_223.Out", "box_MultipleOR_212.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Simple_Node_221_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_204();
    l0 = self.box_Delay_v5_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2018688242", "2018688242", "UNI53_010_B30", "box_Simple_Node_221.Out", "box_Delay_v5_204.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    params = self:OnEnter_box_Delay_v5_206();
    l0 = self.box_Delay_v5_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1374466588", "1374466588", "UNI53_010_B30", "box_Simple_Node_221.Out", "box_Delay_v5_206.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_224_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_211();
    l0 = self.box_Delay_v5_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|155727635", "155727635", "UNI53_010_B30", "box_Simple_Node_224.Out", "box_Delay_v5_211.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_225_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_213();
    l0 = self.box_Delay_v5_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|22226274", "22226274", "UNI53_010_B30", "box_Simple_Node_225.Out", "box_Delay_v5_213.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_SoundModifier_v2_203_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_204();
    l0 = self.box_SoundModifier_v2_203;
    l1 = self.box_Delay_v5_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|161508271", "161508271", "UNI53_010_B30", "box_SoundModifier_v2_203.Started", "box_Delay_v5_204.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_86_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_70();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|433451934", "433451934", "UNI53_010_B30", "box_OutputOrder_v2_86.Out", "box_OutputOrder_v2_70.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_86_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_99();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|246151450", "246151450", "UNI53_010_B30", "box_OutputOrder_v2_86.Out", "box_SetContextualStrategy_99.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_133_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1882809876", "1882809876", "UNI53_010_B30", "box_ActivityObjectiveMarkerModifier_v3_133.Enabled", "box_MultipleOR_134.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_28();
    l0 = self.box_RemoveEntity_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1558769463", "1558769463", "UNI53_010_B30", "box_OutputOrder_v2_43.Out", "box_RemoveEntity_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_35();
    l0 = self.box_RemoveEntity_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|510096392", "510096392", "UNI53_010_B30", "box_OutputOrder_v2_43.Out", "box_RemoveEntity_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_16_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_42();
    l0 = self.box_OnceOnly_v3_16;
    l1 = self.box_Delay_v5_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|316079014", "316079014", "UNI53_010_B30", "box_OnceOnly_v3_16.Out", "box_Delay_v5_42.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetContextualStrategy_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_152();
    l0 = self.box_Delay_v5_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|596180127", "596180127", "UNI53_010_B30", "box_SetContextualStrategy_21.Out", "box_Delay_v5_152.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_151_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_61();
    l0 = self.box_Gate_v3_151;
    l1 = self.box_Gate_v3_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|90133252", "90133252", "UNI53_010_B30", "box_Gate_v3_151.Opened", "box_Gate_v3_61.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_151_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_160();
    l0 = self.box_Gate_v3_151;
    l1 = self.box_Gate_v3_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|975322509", "975322509", "UNI53_010_B30", "box_Gate_v3_151.Out", "box_Gate_v3_160.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_64_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_SpawnAI_64;
    l1 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|194984230", "194984230", "UNI53_010_B30", "box_SpawnAI_64.Spawned", "box_Gate_v3_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_47_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_122;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|882406858", "882406858", "UNI53_010_B30", "box_OutputOrder_v2_47.Out", "box_OnceOnly_v3_122.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_47_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_46();
    l0 = self.box_RemoveEntity_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|270957912", "270957912", "UNI53_010_B30", "box_OutputOrder_v2_47.Out", "box_RemoveEntity_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_126_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_135();
    l0 = self.box_SpawnAI_126;
    l1 = self.box_GroupSizeListener_v5_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|46345351", "46345351", "UNI53_010_B30", "box_SpawnAI_126.Spawned", "box_GroupSizeListener_v5_135.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_3_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1232677517", "1232677517", "UNI53_010_B30", "box_ActivityAcknowledgeGate_3.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_3_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_165();
    l0 = self.box_ActivityAcknowledgeGate_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|9028396", "9028396", "UNI53_010_B30", "box_ActivityAcknowledgeGate_3.Reloaded", "box_OutputOrder_v2_165.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_37_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_109();
    l0 = self.box_PositionModifier_v2_37;
    l1 = self.box_NavLinkModifier_109;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|203320284", "203320284", "UNI53_010_B30", "box_PositionModifier_v2_37.Done", "box_NavLinkModifier_109.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_37_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_138();
    l0 = self.box_PositionModifier_v2_37;
    l1 = self.box_PositionModifier_v2_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1956194602", "1956194602", "UNI53_010_B30", "box_PositionModifier_v2_37.StartOut", "box_PositionModifier_v2_138.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_52_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundShapeModifier_33();
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1763448642", "1763448642", "UNI53_010_B30", "box_OutputOrder_v2_52.Out", "box_SoundShapeModifier_33.Resume", clone:GetLuaBox(), l0:GetLuaBox());
    -- Resume
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_52_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_72();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1173437761", "1173437761", "UNI53_010_B30", "box_OutputOrder_v2_52.Out", "box_Simple_Node_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StimsEmitter_v2_92_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_113();
    l0 = self.box_Switch_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|700224667", "700224667", "UNI53_010_B30", "box_StimsEmitter_v2_92.Enabled", "box_Switch_113.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_207_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_208();
    l0 = self.box_MultipleOR_207;
    l1 = self.box_SoundModifier_v2_208;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|957305852", "957305852", "UNI53_010_B30", "box_MultipleOR_207.Out", "box_SoundModifier_v2_208.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_AddActivityObjective_v2_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_10();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1864929107", "1864929107", "UNI53_010_B30", "box_AddActivityObjective_v2_26.Out", "box_ActivityObjectiveMarkerModifier_v3_10.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_93();
    l0 = self.box_MultipleOR_96;
    l1 = self.box_Delay_v5_93;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|771938186", "771938186", "UNI53_010_B30", "box_MultipleOR_96.Out", "box_Delay_v5_93.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_162_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_163();
    l0 = self.box_Gate_v3_162;
    l1 = self.box_Delay_v5_163;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2128081988", "2128081988", "UNI53_010_B30", "box_Gate_v3_162.Closed", "box_Delay_v5_163.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_162_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_201();
    l0 = self.box_Gate_v3_162;
    l1 = self.box_RequestPhoneCall_v2_201;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|539621571", "539621571", "UNI53_010_B30", "box_Gate_v3_162.Out", "box_RequestPhoneCall_v2_201.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_127();
    l0 = self.box_SpawnAI_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1609544268", "1609544268", "UNI53_010_B30", "box_OutputOrder_v2_24.Out", "box_SpawnAI_127.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_24_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_126();
    l0 = self.box_SpawnAI_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|58052242", "58052242", "UNI53_010_B30", "box_OutputOrder_v2_24.Out", "box_SpawnAI_126.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_90_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_88();
    l0 = self.box_MultipleOR_90;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|958346361", "958346361", "UNI53_010_B30", "box_MultipleOR_90.Out", "box_Compare_Integers_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_139_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_139;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1717696624", "1717696624", "UNI53_010_B30", "box_ProximityTrigger_v2_139.Enter", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_139_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_139;
    l1 = self.box_MultipleOR_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|272604753", "272604753", "UNI53_010_B30", "box_ProximityTrigger_v2_139.OnOccupied", "box_MultipleOR_103.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SoundModifier_v2_214_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_213();
    l0 = self.box_SoundModifier_v2_214;
    l1 = self.box_Delay_v5_213;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1243148279", "1243148279", "UNI53_010_B30", "box_SoundModifier_v2_214.Started", "box_Delay_v5_213.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_48_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_217();
    l0 = self.box_PositionModifier_v2_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|931642280", "931642280", "UNI53_010_B30", "box_PositionModifier_v2_48.Done", "box_OutputOrder_v2_217.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_48_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_216();
    l0 = self.box_PositionModifier_v2_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1032618780", "1032618780", "UNI53_010_B30", "box_PositionModifier_v2_48.StartOut", "box_OutputOrder_v2_216.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_134_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_134;
    l1 = self.box_OnceOnly_v3_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|649591023", "649591023", "UNI53_010_B30", "box_MultipleOR_134.Out", "box_OnceOnly_v3_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_144_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_139();
    l0 = self.box_OnceOnly_v3_144;
    l1 = self.box_ProximityTrigger_v2_139;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1485357577", "1485357577", "UNI53_010_B30", "box_OnceOnly_v3_144.Out", "box_ProximityTrigger_v2_139.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_5_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_54();
    l0 = self.box_MultipleOR_5;
    l1 = self.box_BaseMissionBlock_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1442899433", "1442899433", "UNI53_010_B30", "box_MultipleOR_5.Out", "box_BaseMissionBlock_v2_54.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_123_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_17();
    l0 = self.box_RemoveEntity_v2_123;
    l1 = self.box_RemoveEntity_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|594296383", "594296383", "UNI53_010_B30", "box_RemoveEntity_v2_123.Out", "box_RemoveEntity_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SpawnAI_66_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_61();
    l0 = self.box_SpawnAI_66;
    l1 = self.box_Gate_v3_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|272430579", "272430579", "UNI53_010_B30", "box_SpawnAI_66.Spawned", "box_Gate_v3_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_74_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_107();
    l0 = self.box_PositionModifier_v2_74;
    l1 = self.box_NavLinkModifier_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|402561100", "402561100", "UNI53_010_B30", "box_PositionModifier_v2_74.Done", "box_NavLinkModifier_107.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_74_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_37();
    l0 = self.box_PositionModifier_v2_74;
    l1 = self.box_PositionModifier_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|244283902", "244283902", "UNI53_010_B30", "box_PositionModifier_v2_74.StartOut", "box_PositionModifier_v2_37.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_132_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_130();
    l0 = self.box_SpawnAI_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1251697273", "1251697273", "UNI53_010_B30", "box_OutputOrder_v2_132.Out", "box_SpawnAI_130.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_42_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_86();
    l0 = self.box_Delay_v5_42;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|850202996", "850202996", "UNI53_010_B30", "box_Delay_v5_42.TimeElapsed", "box_OutputOrder_v2_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_82();
    l0 = self.box_Delay_v5_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1998628635", "1998628635", "UNI53_010_B30", "box_OutputOrder_v2_23.Out", "box_Delay_v5_82.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_62();
    l0 = self.box_ProximityTrigger_v2_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|571832410", "571832410", "UNI53_010_B30", "box_OutputOrder_v2_23.Out", "box_ProximityTrigger_v2_62.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_25();
    l0 = self.box_ProximityTrigger_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|902099615", "902099615", "UNI53_010_B30", "box_OutputOrder_v2_23.Out", "box_ProximityTrigger_v2_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_55();
    l0 = self.box_ProximityTrigger_v2_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|982418304", "982418304", "UNI53_010_B30", "box_OutputOrder_v2_23.Out", "box_ProximityTrigger_v2_55.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_59();
    l0 = self.box_ProximityTrigger_v2_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1287640354", "1287640354", "UNI53_010_B30", "box_OutputOrder_v2_23.Out", "box_ProximityTrigger_v2_59.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NavLinkModifier_60_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_81();
    l0 = self.box_NavLinkModifier_60;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1277302419", "1277302419", "UNI53_010_B30", "box_NavLinkModifier_60.Activated", "box_StimsEmitter_v2_81.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_82_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_58();
    l0 = self.box_Delay_v5_82;
    l1 = self.box_GroupSizeListener_v5_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1209735404", "1209735404", "UNI53_010_B30", "box_Delay_v5_82.TimeElapsed", "box_GroupSizeListener_v5_58.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_62_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_117();
    l0 = self.box_ProximityTrigger_v2_62;
    l1 = self.box_SpawnAI_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1232713489", "1232713489", "UNI53_010_B30", "box_ProximityTrigger_v2_62.Enter", "box_SpawnAI_117.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_185_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_80();
    l0 = self.box_Gate_v3_185;
    l1 = self.box_PositionModifier_v2_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|845161043", "845161043", "UNI53_010_B30", "box_Gate_v3_185.Out", "box_PositionModifier_v2_80.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_157_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_161();
    l0 = self.box_RemoveEntity_v2_157;
    l1 = self.box_RemoveEntity_v2_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1624165399", "1624165399", "UNI53_010_B30", "box_RemoveEntity_v2_157.Out", "box_RemoveEntity_v2_161.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_61_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_162();
    l0 = self.box_Gate_v3_61;
    l1 = self.box_Gate_v3_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2113639238", "2113639238", "UNI53_010_B30", "box_Gate_v3_61.Out", "box_Gate_v3_162.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_47();
    l0 = self.box_RemoveEntity_v2_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|57849542", "57849542", "UNI53_010_B30", "box_RemoveEntity_v2_28.Out", "box_OutputOrder_v2_47.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_178_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_174();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1741858801", "1741858801", "UNI53_010_B30", "box_RadioModifier_v3_178.Out", "box_RadioModifier_v3_174.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BaseMissionBlock_v2_105();
    l0 = self.box_RemoveEntity_v2_46;
    l1 = self.box_BaseMissionBlock_v2_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1101100259", "1101100259", "UNI53_010_B30", "box_RemoveEntity_v2_46.Out", "box_BaseMissionBlock_v2_105.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_97_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_97;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|484466808", "484466808", "UNI53_010_B30", "box_Delay_v5_97.TimeElapsed", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Gate_v3_160_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_162();
    l0 = self.box_Gate_v3_160;
    l1 = self.box_Gate_v3_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|975296742", "975296742", "UNI53_010_B30", "box_Gate_v3_160.Closed", "box_Gate_v3_162.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_160_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_162();
    l0 = self.box_Gate_v3_160;
    l1 = self.box_Gate_v3_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|240796781", "240796781", "UNI53_010_B30", "box_Gate_v3_160.Opened", "box_Gate_v3_162.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_160_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_200();
    l0 = self.box_Gate_v3_160;
    l1 = self.box_RequestPhoneCall_v2_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1674912266", "1674912266", "UNI53_010_B30", "box_Gate_v3_160.Out", "box_RequestPhoneCall_v2_200.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_CIN_UNI53_010_BurningBook_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1447686264", "1447686264", "UNI53_010_B30", "box_OutputOrder_v2_15.Out", "box_CIN_UNI53_010_BurningBook_7.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_73();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1636059471", "1636059471", "UNI53_010_B30", "box_OutputOrder_v2_15.Out", "box_SetContextualStrategy_73.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_104();
    l0 = self.box_Music_Quest_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1366839853", "1366839853", "UNI53_010_B30", "box_OutputOrder_v2_15.Out", "box_Music_Quest_v2_104.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_93_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_93;
    l1 = self.box_MultipleOR_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1802024286", "1802024286", "UNI53_010_B30", "box_Delay_v5_93.TimeElapsed", "box_MultipleOR_94.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_183_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_173();
    l0 = self.box_EntityStatusListener_183;
    l1 = self.box_PositionModifier_v2_173;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1497501363", "1497501363", "UNI53_010_B30", "box_EntityStatusListener_183.Loaded", "box_PositionModifier_v2_173.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_181_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_22();
    l0 = self.box_Delay_v5_181;
    l1 = self.box_SpawnAI_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1205974474", "1205974474", "UNI53_010_B30", "box_Delay_v5_181.TimeElapsed", "box_SpawnAI_22.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_100_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_95();
    l0 = self.box_Music_Quest_v2_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1185848464", "1185848464", "UNI53_010_B30", "box_OutputOrder_v2_100.Out", "box_Music_Quest_v2_95.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_100_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_172();
    l0 = self.box_StartCelebration_172;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1284231386", "1284231386", "UNI53_010_B30", "box_OutputOrder_v2_100.Out", "box_StartCelebration_172.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_NavLinkModifier_193_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_187();
    l0 = self.box_NavLinkModifier_193;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1407901338", "1407901338", "UNI53_010_B30", "box_NavLinkModifier_193.Activated", "box_OutputOrder_v2_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_187_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_185();
    l0 = self.box_Gate_v3_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1462744666", "1462744666", "UNI53_010_B30", "box_OutputOrder_v2_187.Out", "box_Gate_v3_185.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_187_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_184();
    l0 = self.box_Gate_v3_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|821198436", "821198436", "UNI53_010_B30", "box_OutputOrder_v2_187.Out", "box_Gate_v3_184.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|915623298", "915623298", "UNI53_010_B30", "box_OutputOrder_v2_6.Out", "box_ActivityAcknowledgeGate_3.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|708141564", "708141564", "UNI53_010_B30", "box_OutputOrder_v2_6.Out", "box_Simple_Node_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|314401531", "314401531", "UNI53_010_B30", "box_OutputOrder_v2_6.Out", "box_Simple_Node_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|987732921", "987732921", "UNI53_010_B30", "box_OutputOrder_v2_6.Out", "box_Print_v2_2.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_111();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|630417241", "630417241", "UNI53_010_B30", "box_OutputOrder_v2_70.Out", "box_Simple_Node_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|735891096", "735891096", "UNI53_010_B30", "box_OutputOrder_v2_70.Out", "box_ActivityObjectiveMarkerModifier_v3_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_70_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_69();
    l0 = self.box_SoundModifier_v2_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|602557848", "602557848", "UNI53_010_B30", "box_OutputOrder_v2_70.Out", "box_SoundModifier_v2_69.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_70_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_118();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1897525106", "1897525106", "UNI53_010_B30", "box_OutputOrder_v2_70.Out", "box_SetContextualStrategy_118.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_156_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_179();
    l0 = self.box_Delay_v5_179;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2028908503", "2028908503", "UNI53_010_B30", "box_OutputOrder_v2_156.Out", "box_Delay_v5_179.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_156_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_44();
    l0 = self.box_Gate_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2021872234", "2021872234", "UNI53_010_B30", "box_OutputOrder_v2_156.Out", "box_Gate_v3_44.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_156_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|450276629", "450276629", "UNI53_010_B30", "box_OutputOrder_v2_156.Out", "box_Gate_v3_151.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_156_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_61();
    l0 = self.box_Gate_v3_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|729008485", "729008485", "UNI53_010_B30", "box_OutputOrder_v2_156.Out", "box_Gate_v3_61.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_115_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_97();
    l0 = self.box_MultipleOR_115;
    l1 = self.box_Delay_v5_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|202139398", "202139398", "UNI53_010_B30", "box_MultipleOR_115.Out", "box_Delay_v5_97.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_BaseMissionBlock_v2_54_Disabled()
    local l0, l1;
    l0 = self.box_BaseMissionBlock_v2_54;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|269632378", "269632378", "UNI53_010_B30", "box_BaseMissionBlock_v2_54.Disabled", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_188_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_190();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1373726497", "1373726497", "UNI53_010_B30", "box_OutputOrder_v2_188.Out", "box_Simple_Node_190.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_188_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_183();
    l0 = self.box_EntityStatusListener_183;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1088071821", "1088071821", "UNI53_010_B30", "box_OutputOrder_v2_188.Out", "box_EntityStatusListener_183.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_157();
    l0 = self.box_RemoveEntity_v2_71;
    l1 = self.box_RemoveEntity_v2_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1645052006", "1645052006", "UNI53_010_B30", "box_RemoveEntity_v2_71.Out", "box_RemoveEntity_v2_157.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_158_Closed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_160();
    l0 = self.box_Gate_v3_158;
    l1 = self.box_Gate_v3_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1616842972", "1616842972", "UNI53_010_B30", "box_Gate_v3_158.Closed", "box_Gate_v3_160.Close", l0:GetLuaBox(), l1:GetLuaBox());
    -- Close
    l1:Exec(0, params);
end;

function export:f_box_Gate_v3_158_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_160();
    l0 = self.box_Gate_v3_158;
    l1 = self.box_Gate_v3_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2020491627", "2020491627", "UNI53_010_B30", "box_Gate_v3_158.Opened", "box_Gate_v3_160.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_158_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_199();
    l0 = self.box_Gate_v3_158;
    l1 = self.box_RequestPhoneCall_v2_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|543063593", "543063593", "UNI53_010_B30", "box_Gate_v3_158.Out", "box_RequestPhoneCall_v2_199.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_91_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_91;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|108000689", "108000689", "UNI53_010_B30", "box_OnceOnly_v3_91.Out", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayerGroup_v2_8_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_8_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_106();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1266055201", "1266055201", "UNI53_010_B30", "box_GetPlayerGroup_v2_8.Out", "box_OutputOrder_v2_106.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_195_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_48();
    l0 = self.box_PositionModifier_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1670314917", "1670314917", "UNI53_010_B30", "box_OutputOrder_v2_195.Out", "box_PositionModifier_v2_48.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_195_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_191();
    l0 = self.box_Delay_v5_191;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1419653351", "1419653351", "UNI53_010_B30", "box_OutputOrder_v2_195.Out", "box_Delay_v5_191.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Random_14_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_20();
    l0 = self.box_Random_14;
    l1 = self.box_SpawnAI_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|470670460", "470670460", "UNI53_010_B30", "box_Random_14.Output", "box_SpawnAI_20.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_14_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_64();
    l0 = self.box_Random_14;
    l1 = self.box_SpawnAI_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1054213285", "1054213285", "UNI53_010_B30", "box_Random_14.Output", "box_SpawnAI_64.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Random_14_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_66();
    l0 = self.box_Random_14;
    l1 = self.box_SpawnAI_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1489786232", "1489786232", "UNI53_010_B30", "box_Random_14.Output", "box_SpawnAI_66.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_204_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_204;
    l1 = self.box_MultipleOR_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1680420576", "1680420576", "UNI53_010_B30", "box_Delay_v5_204.TimeElapsed", "box_MultipleOR_205.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_194_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_121();
    l0 = self.box_Delay_v5_194;
    l1 = self.box_SoundModifier_v2_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|886445382", "886445382", "UNI53_010_B30", "box_Delay_v5_194.TimeElapsed", "box_SoundModifier_v2_121.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_InsideStatueObjListenerAndSpawners_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|609653417", "609653417", "UNI53_010_B30", "box_OutputOrder_v2_30.Out", "box_InsideStatueObjListenerAndSpawners_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|31924175", "31924175", "UNI53_010_B30", "box_OutputOrder_v2_30.Out", "box_Simple_Node_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_71();
    l0 = self.box_RemoveEntity_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|460620636", "460620636", "UNI53_010_B30", "box_OutputOrder_v2_30.Out", "box_RemoveEntity_v2_71.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_30_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_193();
    l0 = self.box_NavLinkModifier_193;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|965237458", "965237458", "UNI53_010_B30", "box_OutputOrder_v2_30.Out", "box_NavLinkModifier_193.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_30_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_102();
    l0 = self.box_Music_Quest_v2_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1408025830", "1408025830", "UNI53_010_B30", "box_OutputOrder_v2_30.Out", "box_Music_Quest_v2_102.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_13_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_53();
    l0 = self.box_RequestPhoneCall_v2_13;
    l1 = self.box_RequestPhoneCall_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|557661447", "557661447", "UNI53_010_B30", "box_RequestPhoneCall_v2_13.Completed", "box_RequestPhoneCall_v2_53.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_53_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_51();
    l0 = self.box_RequestPhoneCall_v2_53;
    l1 = self.box_SoundModifier_v2_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1879281041", "1879281041", "UNI53_010_B30", "box_RequestPhoneCall_v2_53.Started", "box_SoundModifier_v2_51.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_45_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_209();
    l0 = self.box_PositionModifier_v2_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|701712542", "701712542", "UNI53_010_B30", "box_PositionModifier_v2_45.Done", "box_OutputOrder_v2_209.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_45_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_52();
    l0 = self.box_PositionModifier_v2_45;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1782243506", "1782243506", "UNI53_010_B30", "box_PositionModifier_v2_45.StartOut", "box_OutputOrder_v2_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RadioModifier_v3_168_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_169();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|872652789", "872652789", "UNI53_010_B30", "box_RadioModifier_v3_168.Out", "box_RadioModifier_v3_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_94_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_92();
    l0 = self.box_MultipleOR_94;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1024742136", "1024742136", "UNI53_010_B30", "box_MultipleOR_94.Out", "box_StimsEmitter_v2_92.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_138_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_112();
    l0 = self.box_PositionModifier_v2_138;
    l1 = self.box_NavLinkModifier_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1620259875", "1620259875", "UNI53_010_B30", "box_PositionModifier_v2_138.Done", "box_NavLinkModifier_112.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
end;

function export:f_box_PositionModifier_v2_138_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_45();
    l0 = self.box_PositionModifier_v2_138;
    l1 = self.box_PositionModifier_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|187417257", "187417257", "UNI53_010_B30", "box_PositionModifier_v2_138.StartOut", "box_PositionModifier_v2_45.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_213_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_213;
    l1 = self.box_MultipleOR_212;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|772845004", "772845004", "UNI53_010_B30", "box_Delay_v5_213.TimeElapsed", "box_MultipleOR_212.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CIN_UNI53_010_BurningBook_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_11();
    l0 = self.box_CIN_UNI53_010_BurningBook_7;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|984982645", "984982645", "UNI53_010_B30", "box_CIN_UNI53_010_BurningBook_7.Out", "box_EndActivityObjective_v2_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_44_Opened()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_151();
    l0 = self.box_Gate_v3_44;
    l1 = self.box_Gate_v3_151;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1757431423", "1757431423", "UNI53_010_B30", "box_Gate_v3_44.Opened", "box_Gate_v3_151.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_Gate_v3_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_158();
    l0 = self.box_Gate_v3_44;
    l1 = self.box_Gate_v3_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|195468604", "195468604", "UNI53_010_B30", "box_Gate_v3_44.Out", "box_Gate_v3_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_StartCelebration_172_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_198();
    l0 = self.box_StartCelebration_172;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2096081105", "2096081105", "UNI53_010_B30", "box_StartCelebration_172.Ended", "box_ActivityForceAndLockTracking_198.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_172_Started()
    local params, l0, l1;
    params = self:OnEnter_box_RadioModifier_v3_177();
    l0 = self.box_StartCelebration_172;
    l1 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|135056275", "135056275", "UNI53_010_B30", "box_StartCelebration_172.Started", "box_RadioModifier_v3_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WhichSpawnerPlayerProgression_167_Out()
    local l0, l1;
    l0 = self.box_WhichSpawnerPlayerProgression_167;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2009402471", "2009402471", "UNI53_010_B30", "box_WhichSpawnerPlayerProgression_167.Out", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_116_Output_0()
    local l0, l1;
    l0 = self.box_Switch_116;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1583071718", "1583071718", "UNI53_010_B30", "box_Switch_116.Output", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_116_Output_1()
    local l0, l1;
    l0 = self.box_Switch_116;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1491641149", "1491641149", "UNI53_010_B30", "box_Switch_116.Output", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_116_Output_2()
    local l0, l1;
    l0 = self.box_Switch_116;
    l1 = self.box_MultipleOR_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2025735598", "2025735598", "UNI53_010_B30", "box_Switch_116.Output", "box_MultipleOR_115.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Switch_116_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_87();
    l0 = self.box_Switch_116;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1909206769", "1909206769", "UNI53_010_B30", "box_Switch_116.Output", "box_StimsEmitter_v2_87.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_129();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|566206088", "566206088", "UNI53_010_B30", "box_OutputOrder_v2_218.Out", "box_Simple_Node_129.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_218_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_223();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|910587331", "910587331", "UNI53_010_B30", "box_OutputOrder_v2_218.Out", "box_Simple_Node_223.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_179_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_13();
    l0 = self.box_Delay_v5_179;
    l1 = self.box_RequestPhoneCall_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1670781905", "1670781905", "UNI53_010_B30", "box_Delay_v5_179.TimeElapsed", "box_RequestPhoneCall_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_58_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_58_Enabled();
    l0 = self.box_GroupSizeListener_v5_58;
    l1 = self.box_OnceOnly_v3_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1644890930", "1644890930", "UNI53_010_B30", "box_GroupSizeListener_v5_58.Enabled", "box_OnceOnly_v3_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_58_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_58_MemberAdded();
    l0 = self.box_GroupSizeListener_v5_58;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1307276481", "1307276481", "UNI53_010_B30", "box_GroupSizeListener_v5_58.MemberAdded", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_58_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_58_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_58;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1932426668", "1932426668", "UNI53_010_B30", "box_GroupSizeListener_v5_58.MemberRemoved", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_106_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1508918839", "1508918839", "UNI53_010_B30", "box_OutputOrder_v2_106.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_106_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_176();
    l0 = self.box_RequestPhoneCall_v2_176;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|780883616", "780883616", "UNI53_010_B30", "box_OutputOrder_v2_106.Out", "box_RequestPhoneCall_v2_176.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_209_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_110();
    l0 = self.box_NavLinkModifier_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|274021274", "274021274", "UNI53_010_B30", "box_OutputOrder_v2_209.Out", "box_NavLinkModifier_110.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_209_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_221();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|658651855", "658651855", "UNI53_010_B30", "box_OutputOrder_v2_209.Out", "box_Simple_Node_221.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_205_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_203();
    l0 = self.box_MultipleOR_205;
    l1 = self.box_SoundModifier_v2_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2128618767", "2128618767", "UNI53_010_B30", "box_MultipleOR_205.Out", "box_SoundModifier_v2_203.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_171_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_188();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2087744649", "2087744649", "UNI53_010_B30", "box_Compare_Integers_171.A_ge_B", "box_OutputOrder_v2_188.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_171_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_155();
    l0 = self.box_NavLinkModifier_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1826942016", "1826942016", "UNI53_010_B30", "box_Compare_Integers_171.A_lt_B", "box_NavLinkModifier_155.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_103_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_103;
    l1 = self.box_OnceOnly_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1216158587", "1216158587", "UNI53_010_B30", "box_MultipleOR_103.Out", "box_OnceOnly_v3_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RemoveEntity_v2_161_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_123();
    l0 = self.box_RemoveEntity_v2_161;
    l1 = self.box_RemoveEntity_v2_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|171734935", "171734935", "UNI53_010_B30", "box_RemoveEntity_v2_161.Out", "box_RemoveEntity_v2_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_RemoveEntity_v2_17_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_38();
    l0 = self.box_RemoveEntity_v2_17;
    l1 = self.box_RemoveEntity_v2_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2101311441", "2101311441", "UNI53_010_B30", "box_RemoveEntity_v2_17.Out", "box_RemoveEntity_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityForceAndLockTracking_197_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|286826348", "286826348", "UNI53_010_B30", "box_ActivityForceAndLockTracking_197.Enabled", "box_OutputOrder_v2_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_216_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_128();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1749969783", "1749969783", "UNI53_010_B30", "box_OutputOrder_v2_216.Out", "box_Simple_Node_128.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_216_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_222();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1560556505", "1560556505", "UNI53_010_B30", "box_OutputOrder_v2_216.Out", "box_Simple_Node_222.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_152_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = self.box_Delay_v5_152;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|81044325", "81044325", "UNI53_010_B30", "box_Delay_v5_152.TimeElapsed", "box_OutputOrder_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_75_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_196();
    l0 = self.box_Brick_Interact_With_Object_V5_75;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|522819987", "522819987", "UNI53_010_B30", "box_Brick_Interact_With_Object_V5_75.Success", "box_OutputOrder_v2_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_101();
    l0 = self.box_Music_Quest_v2_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1856447581", "1856447581", "UNI53_010_B30", "box_OutputOrder_v2_180.Out", "box_Music_Quest_v2_101.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_ActivityInitialized_1_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_PhoneCallExclusivityModifier_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|496372532", "496372532", "UNI53_010_B30", "box_ActivityInitialized_1.Out", "box_PhoneCallExclusivityModifier_76.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_MultipleOR_212_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_214();
    l0 = self.box_MultipleOR_212;
    l1 = self.box_SoundModifier_v2_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1760921969", "1760921969", "UNI53_010_B30", "box_MultipleOR_212.Out", "box_SoundModifier_v2_214.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_114_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_87();
    l0 = self.box_MultipleOR_114;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|710190231", "710190231", "UNI53_010_B30", "box_MultipleOR_114.Out", "box_StimsEmitter_v2_87.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_182_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_170();
    l0 = self.box_EntityStatusListener_182;
    l1 = self.box_PositionModifier_v2_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|107857407", "107857407", "UNI53_010_B30", "box_EntityStatusListener_182.Loaded", "box_PositionModifier_v2_170.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_127_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_136();
    l0 = self.box_SpawnAI_127;
    l1 = self.box_GroupSizeListener_v5_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1615338152", "1615338152", "UNI53_010_B30", "box_SpawnAI_127.Spawned", "box_GroupSizeListener_v5_136.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_135_Enabled()
    self:OnExit_box_GroupSizeListener_v5_135_Enabled();
end;

function export:f_box_GroupSizeListener_v5_135_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_135_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_135_MemberRemoved()
    self:OnExit_box_GroupSizeListener_v5_135_MemberRemoved();
end;

function export:f_box_RequestPhoneCall_v2_176_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_153();
    l0 = self.box_RequestPhoneCall_v2_176;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|820976482", "820976482", "UNI53_010_B30", "box_RequestPhoneCall_v2_176.Completed", "box_Simple_Node_153.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityForceAndLockTracking_198_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1281276874", "1281276874", "UNI53_010_B30", "box_ActivityForceAndLockTracking_198.Disabled", "box_ActivityEnd_9.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_192_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_84();
    l0 = self.box_Delay_v5_192;
    l1 = self.box_SoundModifier_v2_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|621272515", "621272515", "UNI53_010_B30", "box_Delay_v5_192.TimeElapsed", "box_SoundModifier_v2_84.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_217_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_159();
    l0 = self.box_NavLinkModifier_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|64761073", "64761073", "UNI53_010_B30", "box_OutputOrder_v2_217.Out", "box_NavLinkModifier_159.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_217_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_224();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1764732787", "1764732787", "UNI53_010_B30", "box_OutputOrder_v2_217.Out", "box_Simple_Node_224.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_59_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_132();
    l0 = self.box_ProximityTrigger_v2_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|487702832", "487702832", "UNI53_010_B30", "box_ProximityTrigger_v2_59.Enter", "box_OutputOrder_v2_132.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_83_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_83;
    l1 = self.box_MultipleOR_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|405623687", "405623687", "UNI53_010_B30", "box_OnceOnly_v3_83.Out", "box_MultipleOR_114.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_25_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = self.box_ProximityTrigger_v2_25;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1560490604", "1560490604", "UNI53_010_B30", "box_ProximityTrigger_v2_25.Enter", "box_Simple_Node_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_49_Success()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_195();
    l0 = self.box_Brick_Interact_With_Object_V5_49;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|313051639", "313051639", "UNI53_010_B30", "box_Brick_Interact_With_Object_V5_49.Success", "box_OutputOrder_v2_195.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_88_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|712777286", "712777286", "UNI53_010_B30", "box_Compare_Integers_88.A_le_B", "box_MultipleOR_94.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Delay_v5_211_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_211;
    l1 = self.box_MultipleOR_215;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|143790742", "143790742", "UNI53_010_B30", "box_Delay_v5_211.TimeElapsed", "box_MultipleOR_215.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_55_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_156();
    l0 = self.box_ProximityTrigger_v2_55;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1681638324", "1681638324", "UNI53_010_B30", "box_ProximityTrigger_v2_55.Enter", "box_OutputOrder_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_89_A_gt_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|622659996", "622659996", "UNI53_010_B30", "box_Compare_Integers_89.A_gt_B", "box_OnceOnly_v3_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Compare_Integers_89_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1784338390", "1784338390", "UNI53_010_B30", "box_Compare_Integers_89.A_le_B", "box_Simple_Node_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_40();
    l0 = self.box_SoundModifier_v2_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|251263464", "251263464", "UNI53_010_B30", "box_OutputOrder_v2_68.Out", "box_SoundModifier_v2_40.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_67();
    l0 = self.box_SoundModifier_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1129668404", "1129668404", "UNI53_010_B30", "box_OutputOrder_v2_68.Out", "box_SoundModifier_v2_67.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_220();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1689082690", "1689082690", "UNI53_010_B30", "box_OutputOrder_v2_68.Out", "box_Simple_Node_220.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_208_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_206();
    l0 = self.box_SoundModifier_v2_208;
    l1 = self.box_Delay_v5_206;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|488899209", "488899209", "UNI53_010_B30", "box_SoundModifier_v2_208.Started", "box_Delay_v5_206.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_InsideStatueObjListenerAndSpawners_39_LastFloorReached()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_120();
    l0 = self.box_InsideStatueObjListenerAndSpawners_39;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1858288935", "1858288935", "UNI53_010_B30", "box_InsideStatueObjListenerAndSpawners_39.LastFloorReached", "box_AddActivityObjective_v2_120.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InsideStatueObjListenerAndSpawners_39_MoreNpcCalls()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_154();
    l0 = self.box_InsideStatueObjListenerAndSpawners_39;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1427086666", "1427086666", "UNI53_010_B30", "box_InsideStatueObjListenerAndSpawners_39.MoreNpcCalls", "box_Simple_Node_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_InsideStatueObjListenerAndSpawners_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_26();
    l0 = self.box_InsideStatueObjListenerAndSpawners_39;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|666318141", "666318141", "UNI53_010_B30", "box_InsideStatueObjListenerAndSpawners_39.Out", "box_AddActivityObjective_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_175_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_186();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1585012643", "1585012643", "UNI53_010_B30", "box_Compare_Integers_175.A_ge_B", "box_OutputOrder_v2_186.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_175_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_78();
    l0 = self.box_NavLinkModifier_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|693729051", "693729051", "UNI53_010_B30", "box_Compare_Integers_175.A_lt_B", "box_NavLinkModifier_78.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_210_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_211();
    l0 = self.box_SoundModifier_v2_210;
    l1 = self.box_Delay_v5_211;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|7149780", "7149780", "UNI53_010_B30", "box_SoundModifier_v2_210.Started", "box_Delay_v5_211.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PositionModifier_v2_85_Done()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_219();
    l0 = self.box_PositionModifier_v2_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|89925003", "89925003", "UNI53_010_B30", "box_PositionModifier_v2_85.Done", "box_OutputOrder_v2_219.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_85_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_218();
    l0 = self.box_PositionModifier_v2_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|742551886", "742551886", "UNI53_010_B30", "box_PositionModifier_v2_85.StartOut", "box_OutputOrder_v2_218.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_120_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_133();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1063863194", "1063863194", "UNI53_010_B30", "box_AddActivityObjective_v2_120.Out", "box_ActivityObjectiveMarkerModifier_v3_133.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GroupSizeListener_v5_136_Enabled()
    self:OnExit_box_GroupSizeListener_v5_136_Enabled();
end;

function export:f_box_GroupSizeListener_v5_136_MemberAdded()
    self:OnExit_box_GroupSizeListener_v5_136_MemberAdded();
end;

function export:f_box_GroupSizeListener_v5_136_MemberRemoved()
    self:OnExit_box_GroupSizeListener_v5_136_MemberRemoved();
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_175();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|695677444", "695677444", "UNI53_010_B30", "box_OutputOrder_v2_18.Out", "box_Compare_Integers_175.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_171();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|852102547", "852102547", "UNI53_010_B30", "box_OutputOrder_v2_18.Out", "box_Compare_Integers_171.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_189();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|560338343", "560338343", "UNI53_010_B30", "box_OutputOrder_v2_186.Out", "box_Simple_Node_189.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_186_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_182();
    l0 = self.box_EntityStatusListener_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1601597666", "1601597666", "UNI53_010_B30", "box_OutputOrder_v2_186.Out", "box_EntityStatusListener_182.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GroupSizeListener_v5_65_Enabled()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_65_Enabled();
    l0 = self.box_GroupSizeListener_v5_65;
    l1 = self.box_OnceOnly_v3_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|806056695", "806056695", "UNI53_010_B30", "box_GroupSizeListener_v5_65.Enabled", "box_OnceOnly_v3_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_65_MemberAdded()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_65_MemberAdded();
    l0 = self.box_GroupSizeListener_v5_65;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|144028656", "144028656", "UNI53_010_B30", "box_GroupSizeListener_v5_65.MemberAdded", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GroupSizeListener_v5_65_MemberRemoved()
    local l0, l1;
    self:OnExit_box_GroupSizeListener_v5_65_MemberRemoved();
    l0 = self.box_GroupSizeListener_v5_65;
    l1 = self.box_MultipleOR_90;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1663979826", "1663979826", "UNI53_010_B30", "box_GroupSizeListener_v5_65.MemberRemoved", "box_MultipleOR_90.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_196_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_85();
    l0 = self.box_PositionModifier_v2_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|55461623", "55461623", "UNI53_010_B30", "box_OutputOrder_v2_196.Out", "box_PositionModifier_v2_85.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_196_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_181();
    l0 = self.box_Delay_v5_181;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1114682485", "1114682485", "UNI53_010_B30", "box_OutputOrder_v2_196.Out", "box_Delay_v5_181.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_226_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_63();
    l0 = self.box_Delay_v5_226;
    l1 = self.box_SpawnAI_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2107344515", "2107344515", "UNI53_010_B30", "box_Delay_v5_226.TimeElapsed", "box_SpawnAI_63.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PositionModifier_v2_170_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_119();
    l0 = self.box_PositionModifier_v2_170;
    l1 = self.box_UniversalInteractionModifier_v2_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1863481057", "1863481057", "UNI53_010_B30", "box_PositionModifier_v2_170.StartOut", "box_UniversalInteractionModifier_v2_119.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_215_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_210();
    l0 = self.box_MultipleOR_215;
    l1 = self.box_SoundModifier_v2_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1880873296", "1880873296", "UNI53_010_B30", "box_MultipleOR_215.Out", "box_SoundModifier_v2_210.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_RadioModifier_v3_169_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_166();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|141576134", "141576134", "UNI53_010_B30", "box_RadioModifier_v3_169.Out", "box_RadioModifier_v3_166.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_29_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_89();
    l0 = self.box_MultipleOR_29;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|86609556", "86609556", "UNI53_010_B30", "box_MultipleOR_29.Out", "box_Compare_Integers_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_155_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_75();
    l0 = self.box_NavLinkModifier_155;
    l1 = self.box_Brick_Interact_With_Object_V5_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2048935707", "2048935707", "UNI53_010_B30", "box_NavLinkModifier_155.Deactivated", "box_Brick_Interact_With_Object_V5_75.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_165_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_WhichSpawnerPlayerProgression_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1471315253", "1471315253", "UNI53_010_B30", "box_OutputOrder_v2_165.Out", "box_WhichSpawnerPlayerProgression_167.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_165_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_168();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1701612634", "1701612634", "UNI53_010_B30", "box_OutputOrder_v2_165.Out", "box_RadioModifier_v3_168.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_122_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_8();
    l0 = self.box_OnceOnly_v3_122;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|119521422", "119521422", "UNI53_010_B30", "box_OnceOnly_v3_122.Out", "box_GetPlayerGroup_v2_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_21();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1741400612", "1741400612", "UNI53_010_B30", "box_SetContextualStrategy_19.Out", "box_SetContextualStrategy_21.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_63_Success()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_164();
    l0 = self.box_SpawnAI_63;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1756556725", "1756556725", "UNI53_010_B30", "box_SpawnAI_63.Success", "box_Simple_Node_164.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_20_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_44();
    l0 = self.box_SpawnAI_20;
    l1 = self.box_Gate_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|725627414", "725627414", "UNI53_010_B30", "box_SpawnAI_20.Spawned", "box_Gate_v3_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_10_Enabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1868796123", "1868796123", "UNI53_010_B30", "box_ActivityObjectiveMarkerModifier_v3_10.Enabled", "box_MultipleOR_134.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_113_Output_0()
    local l0, l1;
    l0 = self.box_Switch_113;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1145459817", "1145459817", "UNI53_010_B30", "box_Switch_113.Output", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Switch_113_Output_1()
    local l0, l1;
    l0 = self.box_Switch_113;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|821821346", "821821346", "UNI53_010_B30", "box_Switch_113.Output", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_113_Output_2()
    local l0, l1;
    l0 = self.box_Switch_113;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1993265981", "1993265981", "UNI53_010_B30", "box_Switch_113.Output", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_Switch_113_Output_3()
    local l0, l1;
    l0 = self.box_Switch_113;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|94083527", "94083527", "UNI53_010_B30", "box_Switch_113.Output", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_Switch_113_Output_4()
    local l0, l1;
    l0 = self.box_Switch_113;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|372983496", "372983496", "UNI53_010_B30", "box_Switch_113.Output", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_Switch_113_Output_5()
    local l0, l1;
    l0 = self.box_Switch_113;
    l1 = self.box_MultipleOR_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1220957773", "1220957773", "UNI53_010_B30", "box_Switch_113.Output", "box_MultipleOR_96.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 5);
end;

function export:f_box_Switch_113_Output_6()
    local params, l0, l1;
    params = self:OnEnter_box_StimsEmitter_v2_92();
    l0 = self.box_Switch_113;
    l1 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1038492333", "1038492333", "UNI53_010_B30", "box_Switch_113.Output", "box_StimsEmitter_v2_92.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PositionModifier_v2_173_StartOut()
    local params, l0, l1;
    params = self:OnEnter_box_UniversalInteractionModifier_v2_108();
    l0 = self.box_PositionModifier_v2_173;
    l1 = self.box_UniversalInteractionModifier_v2_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1882469237", "1882469237", "UNI53_010_B30", "box_PositionModifier_v2_173.StartOut", "box_UniversalInteractionModifier_v2_108.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_76_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityForceAndLockTracking_197();
    l0 = self.box_PhoneCallExclusivityModifier_76;
    l1 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1684886753", "1684886753", "UNI53_010_B30", "box_PhoneCallExclusivityModifier_76.Enabled", "box_ActivityForceAndLockTracking_197.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_117_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_65();
    l0 = self.box_SpawnAI_117;
    l1 = self.box_GroupSizeListener_v5_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|688230829", "688230829", "UNI53_010_B30", "box_SpawnAI_117.Spawned", "box_GroupSizeListener_v5_65.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_117_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_19();
    l0 = self.box_SpawnAI_117;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1781927332", "1781927332", "UNI53_010_B30", "box_SpawnAI_117.Success", "box_SetContextualStrategy_19.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_191_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_202();
    l0 = self.box_Delay_v5_191;
    l1 = self.box_RequestPhoneCall_v2_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|485361512", "485361512", "UNI53_010_B30", "box_Delay_v5_191.TimeElapsed", "box_RequestPhoneCall_v2_202.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_184_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PositionModifier_v2_77();
    l0 = self.box_Gate_v3_184;
    l1 = self.box_PositionModifier_v2_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|152079464", "152079464", "UNI53_010_B30", "box_Gate_v3_184.Out", "box_PositionModifier_v2_77.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_219_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_60();
    l0 = self.box_NavLinkModifier_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|339296232", "339296232", "UNI53_010_B30", "box_OutputOrder_v2_219.Out", "box_NavLinkModifier_60.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_219_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_225();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1966028340", "1966028340", "UNI53_010_B30", "box_OutputOrder_v2_219.Out", "box_Simple_Node_225.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_11_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_100();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|518265705", "518265705", "UNI53_010_B30", "box_EndActivityObjective_v2_11.Out", "box_OutputOrder_v2_100.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_79_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_79;
    l1 = self.box_MultipleOR_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|979836857", "979836857", "UNI53_010_B30", "box_OnceOnly_v3_79.Out", "box_MultipleOR_29.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_202_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_226();
    l0 = self.box_RequestPhoneCall_v2_202;
    l1 = self.box_Delay_v5_226;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|144561352", "144561352", "UNI53_010_B30", "box_RequestPhoneCall_v2_202.Completed", "box_Delay_v5_226.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_206_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_206;
    l1 = self.box_MultipleOR_207;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1006542652", "1006542652", "UNI53_010_B30", "box_Delay_v5_206.TimeElapsed", "box_MultipleOR_207.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PhysicsModifier_36_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_PhysicsModifier_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|639173434", "639173434", "UNI53_010_B30", "box_PhysicsModifier_36.Disabled", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_78_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_49();
    l0 = self.box_NavLinkModifier_78;
    l1 = self.box_Brick_Interact_With_Object_V5_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|663395426", "663395426", "UNI53_010_B30", "box_NavLinkModifier_78.Deactivated", "box_Brick_Interact_With_Object_V5_49.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityObjectiveMarkerModifier_v3_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_36();
    l0 = self.box_PhysicsModifier_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1334363195", "1334363195", "UNI53_010_B30", "box_ActivityObjectiveMarkerModifier_v3_12.Disabled", "box_PhysicsModifier_36.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_RadioModifier_v3_177_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_178();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1080865656", "1080865656", "UNI53_010_B30", "box_RadioModifier_v3_177.Out", "box_RadioModifier_v3_178.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_163_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_158();
    l0 = self.box_Delay_v5_163;
    l1 = self.box_Gate_v3_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|627118998", "627118998", "UNI53_010_B30", "box_Delay_v5_163.TimeElapsed", "box_Gate_v3_158.Open", l0:GetLuaBox(), l1:GetLuaBox());
    -- Open
    l1:Exec(2, params);
end;

function export:f_box_StimsEmitter_v2_87_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_116();
    l0 = self.box_Switch_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1697584899", "1697584899", "UNI53_010_B30", "box_StimsEmitter_v2_87.Enabled", "box_Switch_116.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_164()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@2NpcCallsDelay");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_164_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_153()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@AllowLadderCall");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_153_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@CloseLadder1Gate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_189_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@CloseLadder2Gate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_190_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@Door_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_72_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@EndFaith");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@Ladder_1_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_128_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@Ladder_2_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_129_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_98()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@n_Floor3ResetSpawners");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@n_ForceGatingPass");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@n_LadderCranks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@n_OpenStatueDoors");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@n_UNI53_Reinforcements");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@NpcCalls");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_154_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_220()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@Start_Buzzer_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_220_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_222()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@Start_Ladder_Buzzer_01");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_222_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_223()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@Start_Ladder_Buzzer_02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_223_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_221()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@Stop_Buzzer_Sound");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_221_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_224()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@Stop_Ladder_Buzzer_01");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_224_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_225()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|@Stop_Ladder_Buzzer_02");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_225_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_203()
    local params;
    params = {
        -- Pawns,
        [0] = "2101535480116948866",
        -- SoundId,
        [1] = "2078697333",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|14295897");
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

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|14603410");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_133_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100774890675119342",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI53_010_B30_OBJ_3",
            id = "869922",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|17713607");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|56530338");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_21_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100776965041557317",
        -- Group,
        [1] = "#5706293E",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_151()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_102()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2587693195",
        -- StopEvent,
        [7] = "2744083602",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_64()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100775581221137104",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_80()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103472020810444942",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100469432372445864",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|111878930");
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
                [0] = self.f_box_OutputOrder_v2_47_Out_0,
                [1] = self.f_box_OutputOrder_v2_47_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_126()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103122918893436830",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_37()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2103584725246435471",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104245306913739952",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|161720930");
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

function export:OnEnter_box_Music_Quest_v2_95()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2587693195",
        -- StopEvent,
        [7] = "2744083602",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|231917399");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_92_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103123103646236746",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_109()
    local params;
    params = {
        -- Entity,
        [0] = "2102791447982915418",
    };
    return params;
end;

function export:OnEnter_box_SoundShapeModifier_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundShapeModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundShapeModifier_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|337539497");
    l0:SetConnections({
    });
    params = {
        -- FadeTime,
        [0] = 0.5,
        -- SoundShapeId,
        [1] = "2100883203463067261",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|356694622");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_26_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI53_010_B10_OBJ_2",
            id = "559872",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_162()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|387864683");
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
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
                [2] = self.f_box_OutputOrder_v2_24_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_139()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100774897293731058",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_84()
    local params;
    params = {
        -- Pawns,
        [0] = "2101535857279275822",
        -- SoundId,
        [1] = "1082271673",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_214()
    local params;
    params = {
        -- Pawns,
        [0] = "2105057691289295302",
        -- SoundId,
        [1] = "2078697333",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_48()
    local params;
    params = {
        -- blendTime,
        [1] = 30,
        -- endTarget,
        [4] = "2103471965179293834",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100469432372445864",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|447839201");
    l0:SetConnections({
    });
    params = {
        -- StimsEmitter,
        [0] = "2103027379059300087",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_123()
    local params;
    params = {
        -- Group,
        [0] = "2102919374221360433",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_66()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101246270910787818",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_74()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2104245789717961686",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100690611884526189",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|481169345");
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
                [0] = self.f_box_OutputOrder_v2_132_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_42()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|516619550");
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
                [0] = self.f_box_OutputOrder_v2_23_Out_0,
                [1] = self.f_box_OutputOrder_v2_23_Out_1,
                [2] = self.f_box_OutputOrder_v2_23_Out_2,
                [3] = self.f_box_OutputOrder_v2_23_Out_3,
                [4] = self.f_box_OutputOrder_v2_23_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_60()
    local params;
    params = {
        -- Entity,
        [0] = "2100652581412955110",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_82()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_130()
    local params;
    DrawTextToScreen("Comment: 1 defender", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: 1 defender");
    params = {
        -- EntitySpawner,
        [0] = "2103483695632513814",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_62()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- colliderFilterId,
        [1] = self.Players,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2102920817579941417",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_35()
    local params;
    params = {
        -- Group,
        [0] = "2105034801609200105",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_185()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_157()
    local params;
    params = {
        -- Group,
        [0] = "2102919288540116355",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_61()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_28()
    local params;
    DrawTextToScreen("Comment: Remove Statue Shell Collision", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RemoveEntity_v2')-- Comment: Remove Statue Shell Collision");
    params = {
        -- Group,
        [0] = "2104577433423334811",
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|613489912");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_178_Out,
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2104951180955254071",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_46()
    local params;
    params = {
        -- Group,
        [0] = "2103014649843695564",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_112()
    local params;
    params = {
        -- Entity,
        [0] = "2102791485068951392",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_97()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_101()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 2,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2587693195",
        -- StopEvent,
        [7] = "2744083602",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_160()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|677158336");
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

function export:OnEnter_box_Delay_v5_93()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_183()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100652581412955110",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_181()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|693726965");
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
                [0] = self.f_box_OutputOrder_v2_100_Out_0,
                [1] = self.f_box_OutputOrder_v2_100_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_193()
    local params;
    params = {
        -- Entity,
        [0] = "2100469432372445864",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_199()
    local params;
    DrawTextToScreen("Comment: Watch for sniper and rocket", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Watch for sniper and rocket");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2561899389",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_187()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|741586170");
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
                [0] = self.f_box_OutputOrder_v2_187_Out_0,
                [1] = self.f_box_OutputOrder_v2_187_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|746166784");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
                [2] = self.f_box_OutputOrder_v2_6_Out_2,
                [3] = self.f_box_OutputOrder_v2_6_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_99()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|756312825");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104631253358635983",
        -- Group,
        [1] = "#41B8A393",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_119()
    local params;
    params = {
        -- usableEntity,
        [4] = "2101148021795338178",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|771644874");
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
                [0] = self.f_box_OutputOrder_v2_70_Out_0,
                [1] = self.f_box_OutputOrder_v2_70_Out_1,
                [2] = self.f_box_OutputOrder_v2_70_Out_2,
                [3] = self.f_box_OutputOrder_v2_70_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|791986317");
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
                [0] = self.f_box_OutputOrder_v2_156_Out_0,
                [1] = self.f_box_OutputOrder_v2_156_Out_1,
                [2] = self.f_box_OutputOrder_v2_156_Out_2,
                [3] = self.f_box_OutputOrder_v2_156_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_54()
    local params;
    params = {
        -- missionBlockId,
        [0] = "18153010460483825",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_188()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|862229012");
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
                [0] = self.f_box_OutputOrder_v2_188_Out_0,
                [1] = self.f_box_OutputOrder_v2_188_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_71()
    local params;
    params = {
        -- Group,
        [0] = "2102919416197955718",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_158()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|884776328");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_8_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|899786989");
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
                [0] = self.f_box_OutputOrder_v2_195_Out_0,
                [1] = self.f_box_OutputOrder_v2_195_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_110()
    local params;
    params = {
        -- Entity,
        [0] = "2102791474142789468",
    };
    return params;
end;

function export:OnEnter_box_Random_14()
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

function export:OnEnter_box_SoundModifier_v2_121()
    local params;
    params = {
        -- Pawns,
        [0] = "2101660199361211326",
        -- SoundId,
        [1] = "1082271673",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|946193480");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104371273105691575",
        -- Group,
        [1] = "#1B52F044",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_204()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_194()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_200()
    local params;
    DrawTextToScreen("Comment: Check your ammo while you can", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Check your ammo while you can");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1267667523",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|995485889");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
                [3] = self.f_box_OutputOrder_v2_30_Out_3,
                [4] = self.f_box_OutputOrder_v2_30_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_105()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160254482255045",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_13()
    local params;
    DrawTextToScreen("Comment: Patrols say their's more choppers", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Patrols say their's more choppers");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "975476695",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_53()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "149720906",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_201()
    local params;
    DrawTextToScreen("Comment: You got more peggies", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: You got more peggies");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1599737336",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_45()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2103584791820525713",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104246024481556467",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_168()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1061888489");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_168_Out,
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2104951171077668147",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_138()
    local params;
    params = {
        -- blendTime,
        [1] = 6,
        -- endTarget,
        [4] = "2104246067164891136",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2104178294682306238",
        -- useSmallestAngleDiff,
        [7] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_213()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1098069070");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_51()
    local params;
    DrawTextToScreen("Comment: MUS Stinger", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundModifier_v2')-- Comment: MUS Stinger");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "808122783",
        -- SoundType,
        [2] = 17,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_44()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_172()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_Switch_116()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_218()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1172633879");
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
                [0] = self.f_box_OutputOrder_v2_218_Out_0,
                [1] = self.f_box_OutputOrder_v2_218_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_179()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_40()
    local params;
    params = {
        -- Pawns,
        [0] = "2101535480116948866",
        -- SoundId,
        [1] = "939107644",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_58()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#1B52F044",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1227046834");
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
                [0] = self.f_box_OutputOrder_v2_106_Out_0,
                [1] = self.f_box_OutputOrder_v2_106_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1231820956");
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
                [0] = self.f_box_OutputOrder_v2_209_Out_0,
                [1] = self.f_box_OutputOrder_v2_209_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_107()
    local params;
    params = {
        -- Entity,
        [0] = "2102791427879616342",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1265105705");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_171_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_171_A_lt_B,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.UNI53_010_B30.iFloor,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_161()
    local params;
    params = {
        -- Group,
        [0] = "2102919334734084201",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_17()
    local params;
    params = {
        -- Group,
        [0] = "2104574051576991139",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_197()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1322201716");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityForceAndLockTracking_197_Enabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_174()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_174");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1324163430");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2104951191919164731",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1330813746");
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
                [0] = self.f_box_OutputOrder_v2_216_Out_0,
                [1] = self.f_box_OutputOrder_v2_216_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_69()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "183396361",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_152()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_75()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2104145921987060124",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1356409139");
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
                [0] = self.f_box_OutputOrder_v2_180_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_182()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100469432372445864",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_127()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103122846124359318",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_135()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#6D6B0A6E",
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_176()
    local params;
    DrawTextToScreen("Comment: Goddamn. We can see your work at the prison", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Goddamn. We can see your work at the prison");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "3549817305",
    };
    return params;
end;

function export:OnEnter_box_ActivityForceAndLockTracking_198()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/ActivityForceAndLockTracking.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityForceAndLockTracking_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1412038852");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityForceAndLockTracking_198_Disabled,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_192()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_217()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1441716792");
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
                [0] = self.f_box_OutputOrder_v2_217_Out_0,
                [1] = self.f_box_OutputOrder_v2_217_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1443329327");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104371273105691575",
        -- Group,
        [1] = "#41B8A393",
    };
    return params;
end;

function export:OnEnter_box_UniversalInteractionModifier_v2_108()
    local params;
    params = {
        -- usableEntity,
        [4] = "2104145921987060124",
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
        [3] = "2103483648834566916",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_25()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2100775394528470797",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_49()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = false,
        -- b_SkipObjectiveFlow,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2101148021795338178",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1522856201");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_88_A_le_B,
    });
    params = {
        -- A,
        [0] = self.Barricade_Guard,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_67()
    local params;
    params = {
        -- Pawns,
        [0] = "2101535472873385499",
        -- SoundId,
        [1] = "939107644",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_211()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_38()
    local params;
    params = {
        -- Group,
        [0] = "2104574115579973236",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_55()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2103965674949856721",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1613979831");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_89_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_89_A_le_B,
    });
    params = {
        -- A,
        [0] = self.uni53_Guards,
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1628219183");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
                [2] = self.f_box_OutputOrder_v2_68_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_208()
    local params;
    params = {
        -- Pawns,
        [0] = "2101535472873385499",
        -- SoundId,
        [1] = "2078697333",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1670791835");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_175_A_ge_B,
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_175_A_lt_B,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.UNI53_010_B30.iFloor,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_210()
    local params;
    params = {
        -- Pawns,
        [0] = "2105057679679461828",
        -- SoundId,
        [1] = "2078697333",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_85()
    local params;
    params = {
        -- blendTime,
        [1] = 30,
        -- endTarget,
        [4] = "2103472151699992771",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100652581412955110",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1700288430");
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
        [8] = "UNI53_010_B30 Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1706317909");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_120_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI53_010_B30_OBJ_3",
            id = "869922",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_136()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#736CC3DB",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1762645248");
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
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_186()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1767478083");
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
                [0] = self.f_box_OutputOrder_v2_186_Out_0,
                [1] = self.f_box_OutputOrder_v2_186_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_65()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#CF838EE4",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1783789233");
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
                [0] = self.f_box_OutputOrder_v2_196_Out_0,
                [1] = self.f_box_OutputOrder_v2_196_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_226()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 7,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_170()
    local params;
    params = {
        -- blendTime,
        [1] = 0.5,
        -- endTarget,
        [4] = "2103471965179293834",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100469432372445864",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1805212445");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_169_Out,
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2104951180955254071",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_155()
    local params;
    params = {
        -- Entity,
        [0] = "2100652581412955110",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_165()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1822687144");
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
                [0] = self.f_box_OutputOrder_v2_165_Out_0,
                [2] = self.f_box_OutputOrder_v2_165_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1843148004");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_19_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2100776965041557317",
        -- Group,
        [1] = "#7D85EABD",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_22()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100775451308861425",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_63()
    local params;
    DrawTextToScreen("Comment: 1 chopper", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SpawnAI')-- Comment: 1 chopper");
    params = {
        -- EntitySpawner,
        [0] = "2100510432298018904",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_20()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2100775290115466546",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|1952059482");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ActivityObjectiveMarkerModifier_v3_10_Enabled,
    });
    params = {
        -- Marker,
        [1] = "2100774890675119342",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI53_010_B10_OBJ_2",
            id = "559872",
        },
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_159()
    local params;
    params = {
        -- Entity,
        [0] = "2100469432372445864",
    };
    return params;
end;

function export:OnEnter_box_Switch_113()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_104()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 0,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2587693195",
        -- StopEvent,
        [7] = "2744083602",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_173()
    local params;
    params = {
        -- blendTime,
        [1] = 0.5,
        -- endTarget,
        [4] = "2103472151699992771",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100652581412955110",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_117()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102918038880786652",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_191()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_184()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_219()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2067623842");
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
                [0] = self.f_box_OutputOrder_v2_219_Out_0,
                [1] = self.f_box_OutputOrder_v2_219_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2084794620");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_11_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI53_010_B30_OBJ_3",
            id = "869922",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_202()
    local params;
    DrawTextToScreen("Comment: Watch the skies.", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'RequestPhoneCall_v2')-- Comment: Watch the skies.");
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "2916612462",
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_77()
    local params;
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2103026212090691548",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = "2100652581412955110",
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2091436064");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = true,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2104951191919164731",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_206()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_36()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2100775103611544824",
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_78()
    local params;
    params = {
        -- Entity,
        [0] = "2100469432372445864",
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2131427694");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ActivityObjectiveMarkerModifier_v3_12_Disabled,
    });
    params = {
        -- Marker,
        [1] = "2100774890675119342",
        -- ObjectiveId,
        [2] = {
            section = "Objective",
            item = "UNI53_010_B30_OBJ_3",
            id = "869922",
        },
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2135315392");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RadioModifier_v3_177_Out,
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2104951171077668147",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_163()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_StimsEmitter_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/StimsEmitter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StimsEmitter_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI53\\UNI53_010_B30.domino|@UNI53_010_B30|2145182436");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_StimsEmitter_v2_87_Enabled,
    });
    params = {
        -- StimsEmitter,
        [0] = "2103028614000809839",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_8_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.Players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GroupSizeListener_v5_58_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_58;
    self.uni53_Guards = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_58_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_58;
    self.uni53_Guards = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_58_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_58;
    self.uni53_Guards = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_135_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_135;
    self.eFarMiddle = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_135_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_135;
    self.eFarMiddle = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_135_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_135;
    self.eFarMiddle = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_136_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_136;
    self.eFarLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_136_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_136;
    self.eFarLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_136_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_136;
    self.eFarLeft = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_65_Enabled()
    local l0;
    l0 = self.box_GroupSizeListener_v5_65;
    self.Barricade_Guard = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_65_MemberAdded()
    local l0;
    l0 = self.box_GroupSizeListener_v5_65;
    self.Barricade_Guard = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GroupSizeListener_v5_65_MemberRemoved()
    local l0;
    l0 = self.box_GroupSizeListener_v5_65;
    self.Barricade_Guard = l0:GetDataOutValue(1);
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
