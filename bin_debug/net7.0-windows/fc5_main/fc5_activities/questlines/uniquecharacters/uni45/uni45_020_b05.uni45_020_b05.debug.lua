LUAC	 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni45/uni45_020_b05.domino
-- User graph: UNI45_020_B05
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/EndActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/MetaBreakableModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PickupState_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayRandomDialog.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B05.C4_01.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[751549086.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3703649389.bnk]], "CSoundResource");
        cboxRes:LoadResource([[478623599.bnk]], "CSoundResource");
        cboxRes:LoadResource([[29264750.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1251606610.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2518071524.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B05.UNI45_020_B05.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")] = {
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
                name = "MarkerTypeId",
                type = "database",
            },
            [1] = {
                name = "ObjectiveId",
                type = "oasis",
            },
            [2] = {
                name = "ProgressDisplayType",
                type = "int",
            },
            [3] = {
                name = "TotalProgress",
                type = "int",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ProgressId",
                type = "int",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")] = {
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
                name = "Progress",
                type = "int",
            },
            [2] = {
                name = "ProgressId",
                type = "int",
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
                name = "vehiclesSpawned",
                type = "list",
            },
        },
        dataOutCount = 2,
    };
    metadataTable[GetPathID("Domino/System/AI/StateListener_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Alert",
            },
            [1] = {
                name = "Combat",
            },
            [2] = {
                name = "Dead",
            },
            [3] = {
                name = "Disable",
            },
            [4] = {
                name = "Idle_RelaxCautious",
            },
            [5] = {
                name = "Investigate",
            },
        },
        controlInCount = 6,
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
                name = "MemberInState",
                delayed = true,
            },
            [3] = {
                name = "StateStart",
                delayed = true,
            },
            [4] = {
                name = "StateStop",
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
                name = "group",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "memberCountInState",
                type = "int",
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
    metadataTable[GetPathID("Domino/System/IntegerArithmetics_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Abs",
            },
            [1] = {
                name = "Add",
            },
            [2] = {
                name = "Div",
            },
            [3] = {
                name = "Exp",
            },
            [4] = {
                name = "Max",
            },
            [5] = {
                name = "Min",
            },
            [6] = {
                name = "Mod",
            },
            [7] = {
                name = "Mul",
            },
            [8] = {
                name = "Sub",
            },
        },
        controlInCount = 9,
        controlOut = {
            [0] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
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
            [0] = {
                name = "Result",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/MetaBreakableModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDamageable",
            },
            [1] = {
                name = "SetDisabled",
            },
            [2] = {
                name = "SetEnabled",
            },
            [3] = {
                name = "SetUnDamageable",
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
                name = "OnSetDamageable",
                delayed = false,
            },
            [3] = {
                name = "OnSetUnDamageable",
                delayed = false,
            },
        },
        controlOutCount = 4,
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
    metadataTable[GetPathID("Domino/System/PickupState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "SetAsNotPickable",
            },
            [1] = {
                name = "SetAsPickable",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAsNotPickable",
                delayed = false,
            },
            [1] = {
                name = "OnSetAsPickable",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Pickup",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayRandomDialog.lua")] = {
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
                name = "AllDone",
                delayed = true,
            },
            [1] = {
                name = "PlayOut",
                delayed = false,
            },
            [2] = {
                name = "StopOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "maxTime",
                type = "float",
            },
            [2] = {
                name = "minTime",
                type = "float",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
                dynamicType = 1,
            },
            [4] = {
                name = "TargetEntity",
                type = "entity",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/VisibilityModifier.lua")] = {
        stateless = false,
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
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B05.C4_01.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "C4_01_Interacted",
            },
            [1] = {
                name = "C4_02_Interacted",
            },
            [2] = {
                name = "C4_03_Interacted",
            },
            [3] = {
                name = "C4_04_Interacted",
            },
            [4] = {
                name = "C4_Reload",
            },
        },
        controlInCount = 5,
        controlOut = {
            [0] = {
                name = "Out_01",
                delayed = false,
            },
            [1] = {
                name = "Out_02",
                delayed = false,
            },
            [2] = {
                name = "Out_03",
                delayed = false,
            },
            [3] = {
                name = "Out_04",
                delayed = false,
            },
        },
        controlOutCount = 4,
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
    self._name = "UNI45_020_B05";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05";
    self.eDarnell = nil;
    self.gPlayerGroup = nil;
    self.id_Objective = 0;
    self.i_bombActivated = 0;
    self.box_StateListener_v2_49 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|12835528");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_49_StateStart,
    });
    self.box_ProximityRadiusListener_v3_38 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|161423568");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_38_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_38_SomeoneNear,
    });
    self.box_SpawnAI_45 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|184952026");
    l0:SetConnections({
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|193486215");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_32 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|253601810");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_32_Started,
    });
    self.box_PlayRandomDialog_56 = cbox:CreateBox("Domino/System/PlayRandomDialog.lua");
    l0 = self.box_PlayRandomDialog_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayRandomDialog_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|265826148");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
        },
        dataIn = {
            [3] = 3,
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- AllDone,
        [0] = self.f_box_PlayRandomDialog_56_AllDone,
    });
    self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|300677367");
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
    self.box_SoundModifier_v2_16 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|304682395");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_16_Started,
    });
    self.box_EntityStatusListener_11 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|411529627");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_11_Loaded,
    });
    self.box_VisibilityModifier_60 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|443740910");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_60_Disabled,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|704210165");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_SoundModifier_v2_31 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|799336388");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_31_Started,
    });
    self.box_Brick_Interact_With_Object_V5_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|819371368");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_20_Success,
    });
    self.box_ProximityRadiusListener_v3_37 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|876297145");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_37_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_37_SomeoneNear,
    });
    self.box_VisibilityModifier_62 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|892516523");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_14 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|902849624");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_14_Started,
    });
    self.box_Brick_Interact_With_Object_V5_6 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1106726562");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_6_Success,
    });
    self.box_ProximityRadiusListener_v3_36 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1124750178");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_36_AllFar,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_36_SomeoneNear,
    });
    self.box_Music_Quest_v2_52 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1221657996");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1224299166");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_C4_01_10 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI45/UNI45_020_B05.C4_01.debug.lua");
    l0 = self.box_C4_01_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_C4_01_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1266730847");
    l0:SetConnections({
        -- Out_01,
        [0] = self.f_box_C4_01_10_Out_01,
        -- Out_02,
        [1] = self.f_box_C4_01_10_Out_02,
        -- Out_03,
        [2] = self.f_box_C4_01_10_Out_03,
        -- Out_04,
        [3] = self.f_box_C4_01_10_Out_04,
    });
    self.box_SpawnAI_47 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1389519205");
    l0:SetConnections({
    });
    self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1418364592");
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
        [0] = self.f_box_MultipleOR_25_Out,
    });
    self.box_Brick_Interact_With_Object_V5_21 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1499516835");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_21_Success,
    });
    self.box_SpawnAI_51 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1590685209");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_35 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1725136198");
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
                [0] = self.f_box_OnceOnly_v3_35_Out_0,
            },
            count = 2,
        },
    });
    self.box_ProximityRadiusListener_v3_39 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1730689780");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_39_AllFar,
    });
    self.box_SpawnAI_50 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1757955936");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_50_Out,
    });
    self.box_EntityStatusListener_15 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1759781992");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_15_Loaded,
    });
    self.box_EntityStatusListener_13 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1799584698");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_13_Loaded,
    });
    self.box_OnceOnly_v3_23 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1816077507");
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
                [0] = self.f_box_OnceOnly_v3_23_Out_0,
            },
            count = 2,
        },
    });
    self.box_MetaBreakableModifier_v2_9 = cbox:CreateBox("Domino/System/MetaBreakableModifier_v2.lua");
    l0 = self.box_MetaBreakableModifier_v2_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MetaBreakableModifier_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1830208641");
    l0:SetConnections({
    });
    self.box_SpawnAI_41 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1840794275");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_61 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1873380877");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_61_Disabled,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1884351408");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_MultipleOR_57 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1898706309");
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
        [0] = self.f_box_MultipleOR_57_Out,
    });
    self.box_VisibilityModifier_63 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1942810504");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_63_Disabled,
    });
    self.box_Brick_Interact_With_Object_V5_22 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_Interact_With_Object.Brick_Interact_With_Object_V5.debug.lua");
    l0 = self.box_Brick_Interact_With_Object_V5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_Interact_With_Object_V5_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1979040658");
    l0:SetConnections({
        -- Success,
        [2] = self.f_box_Brick_Interact_With_Object_V5_22_Success,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1775990728", "1775990728", "UNI45_020_B05", "In", "box_OutputOrder_v2_3.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1347824415", "1347824415", "UNI45_020_B05", "OnLeaveZone", "box_OutputOrder_v2_53.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_36();
    l0 = self.box_ProximityRadiusListener_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1465160117", "1465160117", "UNI45_020_B05", "box_Simple_Node_58.Out", "box_ProximityRadiusListener_v3_36.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_38();
    l0 = self.box_ProximityRadiusListener_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1109268563", "1109268563", "UNI45_020_B05", "box_Simple_Node_58.Out", "box_ProximityRadiusListener_v3_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_ProximityRadiusListener_v3_39();
    l0 = self.box_ProximityRadiusListener_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|376430344", "376430344", "UNI45_020_B05", "box_Simple_Node_58.Out", "box_ProximityRadiusListener_v3_39.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    params = self:OnEnter_box_SetContextualStrategy_40();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1441184501", "1441184501", "UNI45_020_B05", "box_Simple_Node_58.Out", "box_SetContextualStrategy_40.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    params = self:OnEnter_box_ProximityRadiusListener_v3_37();
    l0 = self.box_ProximityRadiusListener_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1160803912", "1160803912", "UNI45_020_B05", "box_Simple_Node_58.Out", "box_ProximityRadiusListener_v3_37.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_55_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|521750590", "521750590", "UNI45_020_B05", "box_Simple_Node_55.Out", "box_MultipleOR_57.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_52();
    l0 = self.box_Music_Quest_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1050919480", "1050919480", "UNI45_020_B05", "box_Simple_Node_69.Out", "box_Music_Quest_v2_52.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_StateListener_v2_49_StateStart()
    local l0, l1;
    l0 = self.box_StateListener_v2_49;
    l1 = self.box_OnceOnly_v3_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1323019948", "1323019948", "UNI45_020_B05", "box_StateListener_v2_49.StateStart", "box_OnceOnly_v3_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_45();
    l0 = self.box_SpawnAI_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1402484804", "1402484804", "UNI45_020_B05", "box_OutputOrder_v2_46.Out", "box_SpawnAI_45.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1935257257", "1935257257", "UNI45_020_B05", "box_OutputOrder_v2_46.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_17_Out()
    local params, l0;
    self:OnExit_box_AddActivityObjectiveProgress_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1322930152", "1322930152", "UNI45_020_B05", "box_AddActivityObjectiveProgress_v2_17.Out", "box_SetActivityObjectiveProgress_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_69();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|889974714", "889974714", "UNI45_020_B05", "box_OutputOrder_v2_53.Out", "box_Simple_Node_69.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1534236616", "1534236616", "UNI45_020_B05", "box_OutputOrder_v2_53.Out", "box_ActivityRetry_8.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PickupState_v2_65_OnSetAsNotPickable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupState_v2_64();
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|482353419", "482353419", "UNI45_020_B05", "box_PickupState_v2_65.OnSetAsNotPickable", "box_PickupState_v2_64.SetAsNotPickable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsNotPickable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_68_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_61();
    l0 = self.box_VisibilityModifier_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1946249577", "1946249577", "UNI45_020_B05", "box_OutputOrder_v2_68.Out", "box_VisibilityModifier_61.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_68_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupState_v2_67();
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|724991615", "724991615", "UNI45_020_B05", "box_OutputOrder_v2_68.Out", "box_PickupState_v2_67.SetAsNotPickable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsNotPickable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_38_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = self.box_ProximityRadiusListener_v3_38;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|308400533", "308400533", "UNI45_020_B05", "box_ProximityRadiusListener_v3_38.AllFar", "box_OutputOrder_v2_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_38_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_39();
    l0 = self.box_ProximityRadiusListener_v3_38;
    l1 = self.box_ProximityRadiusListener_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1812376548", "1812376548", "UNI45_020_B05", "box_ProximityRadiusListener_v3_38.SomeoneNear", "box_ProximityRadiusListener_v3_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1874473723", "1874473723", "UNI45_020_B05", "box_SetActivityObjectiveProgress_v2_19.Out", "box_OutputOrder_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EndActivityObjective_v2_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_28();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1063173467", "1063173467", "UNI45_020_B05", "box_EndActivityObjective_v2_29.Out", "box_ActivityEnd_28.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_32_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_32;
    l1 = self.box_C4_01_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2085286769", "2085286769", "UNI45_020_B05", "box_SoundModifier_v2_32.Started", "box_C4_01_10.C4_04_Interacted", l0:GetLuaBox(), l1:GetLuaBox());
    -- C4_04_Interacted
    l1:Exec(3, {
    });
end;

function export:f_box_PlayRandomDialog_56_AllDone()
    local l0, l1;
    l0 = self.box_PlayRandomDialog_56;
    l1 = self.box_MultipleOR_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|636290248", "636290248", "UNI45_020_B05", "box_PlayRandomDialog_56.AllDone", "box_MultipleOR_57.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_7_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_7;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1599291709", "1599291709", "UNI45_020_B05", "box_MultipleOR_7.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_SoundModifier_v2_16_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_16;
    l1 = self.box_C4_01_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|918655883", "918655883", "UNI45_020_B05", "box_SoundModifier_v2_16.Started", "box_C4_01_10.C4_02_Interacted", l0:GetLuaBox(), l1:GetLuaBox());
    -- C4_02_Interacted
    l1:Exec(1, {
    });
end;

function export:f_box_GetPlayerGroup_v2_1_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_1_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1211935892", "1211935892", "UNI45_020_B05", "box_GetPlayerGroup_v2_1.Out", "box_OutputOrder_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_11_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MetaBreakableModifier_v2_9();
    l0 = self.box_EntityStatusListener_11;
    l1 = self.box_MetaBreakableModifier_v2_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|899345815", "899345815", "UNI45_020_B05", "box_EntityStatusListener_11.Loaded", "box_MetaBreakableModifier_v2_9.SetUnDamageable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetUnDamageable
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1311993794", "1311993794", "UNI45_020_B05", "box_OutputOrder_v2_44.Out", "box_SpawnAI_43.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2038879619", "2038879619", "UNI45_020_B05", "box_OutputOrder_v2_44.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_60_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_68();
    l0 = self.box_VisibilityModifier_60;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2087645533", "2087645533", "UNI45_020_B05", "box_VisibilityModifier_60.Disabled", "box_OutputOrder_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_22();
    l0 = self.box_Brick_Interact_With_Object_V5_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|881971988", "881971988", "UNI45_020_B05", "box_OutputOrder_v2_30.Out", "box_Brick_Interact_With_Object_V5_22.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_20();
    l0 = self.box_Brick_Interact_With_Object_V5_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1392588127", "1392588127", "UNI45_020_B05", "box_OutputOrder_v2_30.Out", "box_Brick_Interact_With_Object_V5_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_21();
    l0 = self.box_Brick_Interact_With_Object_V5_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1327207138", "1327207138", "UNI45_020_B05", "box_OutputOrder_v2_30.Out", "box_Brick_Interact_With_Object_V5_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_Interact_With_Object_V5_6();
    l0 = self.box_Brick_Interact_With_Object_V5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1936206199", "1936206199", "UNI45_020_B05", "box_OutputOrder_v2_30.Out", "box_Brick_Interact_With_Object_V5_6.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_27();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1307673094", "1307673094", "UNI45_020_B05", "box_OutputOrder_v2_34.Out", "box_Compare_Integers_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_33();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|905812304", "905812304", "UNI45_020_B05", "box_OutputOrder_v2_34.Out", "box_Compare_Integers_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|460584015", "460584015", "UNI45_020_B05", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1719400902", "1719400902", "UNI45_020_B05", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_7.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_48_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_47();
    l0 = self.box_SpawnAI_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1998918748", "1998918748", "UNI45_020_B05", "box_OutputOrder_v2_48.Out", "box_SpawnAI_47.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_48_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|66241703", "66241703", "UNI45_020_B05", "box_OutputOrder_v2_48.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_31_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_31;
    l1 = self.box_C4_01_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1253897515", "1253897515", "UNI45_020_B05", "box_SoundModifier_v2_31.Started", "box_C4_01_10.C4_03_Interacted", l0:GetLuaBox(), l1:GetLuaBox());
    -- C4_03_Interacted
    l1:Exec(2, {
    });
end;

function export:f_box_Brick_Interact_With_Object_V5_20_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_16();
    l0 = self.box_Brick_Interact_With_Object_V5_20;
    l1 = self.box_SoundModifier_v2_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|553159636", "553159636", "UNI45_020_B05", "box_Brick_Interact_With_Object_V5_20.Success", "box_SoundModifier_v2_16.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_37_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_ProximityRadiusListener_v3_37;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1924163355", "1924163355", "UNI45_020_B05", "box_ProximityRadiusListener_v3_37.AllFar", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_37_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_38();
    l0 = self.box_ProximityRadiusListener_v3_37;
    l1 = self.box_ProximityRadiusListener_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|606275673", "606275673", "UNI45_020_B05", "box_ProximityRadiusListener_v3_37.SomeoneNear", "box_ProximityRadiusListener_v3_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SoundModifier_v2_14_Started()
    local l0, l1;
    l0 = self.box_SoundModifier_v2_14;
    l1 = self.box_C4_01_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1379398415", "1379398415", "UNI45_020_B05", "box_SoundModifier_v2_14.Started", "box_C4_01_10.C4_01_Interacted", l0:GetLuaBox(), l1:GetLuaBox());
    -- C4_01_Interacted
    l1:Exec(0, {
    });
end;

function export:f_box_Compare_Integers_27_A_eq_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1764710271", "1764710271", "UNI45_020_B05", "box_Compare_Integers_27.A_eq_B", "box_OnceOnly_v3_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PickupState_v2_67_OnSetAsNotPickable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupState_v2_66();
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2038099450", "2038099450", "UNI45_020_B05", "box_PickupState_v2_67.OnSetAsNotPickable", "box_PickupState_v2_66.SetAsNotPickable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsNotPickable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|607834359", "607834359", "UNI45_020_B05", "box_AddActivityObjective_v2_18.Out", "box_AddActivityObjectiveProgress_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_6_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_32();
    l0 = self.box_Brick_Interact_With_Object_V5_6;
    l1 = self.box_SoundModifier_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1943258356", "1943258356", "UNI45_020_B05", "box_Brick_Interact_With_Object_V5_6.Success", "box_SoundModifier_v2_32.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_36_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_ProximityRadiusListener_v3_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|951381088", "951381088", "UNI45_020_B05", "box_ProximityRadiusListener_v3_36.AllFar", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_36_SomeoneNear()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_37();
    l0 = self.box_ProximityRadiusListener_v3_36;
    l1 = self.box_ProximityRadiusListener_v3_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|257020288", "257020288", "UNI45_020_B05", "box_ProximityRadiusListener_v3_36.SomeoneNear", "box_ProximityRadiusListener_v3_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_18();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1994724850", "1994724850", "UNI45_020_B05", "box_OutputOrder_v2_59.Out", "box_AddActivityObjective_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_55();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2111633975", "2111633975", "UNI45_020_B05", "box_OutputOrder_v2_59.Out", "box_Simple_Node_55.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_60();
    l0 = self.box_VisibilityModifier_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|376243415", "376243415", "UNI45_020_B05", "box_OutputOrder_v2_59.Out", "box_VisibilityModifier_60.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_59_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_50();
    l0 = self.box_SpawnAI_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|941035199", "941035199", "UNI45_020_B05", "box_OutputOrder_v2_59.Out", "box_SpawnAI_50.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_52();
    l0 = self.box_Music_Quest_v2_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|502742969", "502742969", "UNI45_020_B05", "box_OutputOrder_v2_59.Out", "box_Music_Quest_v2_52.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_1();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1152885786", "1152885786", "UNI45_020_B05", "box_ActivityInitialized_4.Out", "box_GetPlayerGroup_v2_1.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_C4_01_10_Out_01()
    local l0, l1;
    l0 = self.box_C4_01_10;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2093184450", "2093184450", "UNI45_020_B05", "box_C4_01_10.Out_01", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_C4_01_10_Out_02()
    local l0, l1;
    l0 = self.box_C4_01_10;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|947929180", "947929180", "UNI45_020_B05", "box_C4_01_10.Out_02", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_C4_01_10_Out_03()
    local l0, l1;
    l0 = self.box_C4_01_10;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|948097293", "948097293", "UNI45_020_B05", "box_C4_01_10.Out_03", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_C4_01_10_Out_04()
    local l0, l1;
    l0 = self.box_C4_01_10;
    l1 = self.box_MultipleOR_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1090924631", "1090924631", "UNI45_020_B05", "box_C4_01_10.Out_04", "box_MultipleOR_25.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_IntegerArithmetics_v2_24_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_24_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_26();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1664133291", "1664133291", "UNI45_020_B05", "box_IntegerArithmetics_v2_24.Out", "box_SetActivityObjectiveProgress_v2_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_IntegerArithmetics_v2_24();
    l0 = self.box_MultipleOR_25;
    l1 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1023171162", "1023171162", "UNI45_020_B05", "box_MultipleOR_25.Out", "box_IntegerArithmetics_v2_24.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1589016053", "1589016053", "UNI45_020_B05", "box_SetActivityObjectiveProgress_v2_26.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Brick_Interact_With_Object_V5_21_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_31();
    l0 = self.box_Brick_Interact_With_Object_V5_21;
    l1 = self.box_SoundModifier_v2_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|642503232", "642503232", "UNI45_020_B05", "box_Brick_Interact_With_Object_V5_21.Success", "box_SoundModifier_v2_31.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Compare_Integers_33_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_49();
    l0 = self.box_StateListener_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|988077082", "988077082", "UNI45_020_B05", "box_Compare_Integers_33.A_eq_B", "box_StateListener_v2_49.Idle_RelaxCautious", clone:GetLuaBox(), l0:GetLuaBox());
    -- Idle_RelaxCautious
    l0:Exec(4, params);
end;

function export:f_box_OnceOnly_v3_35_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_36();
    l0 = self.box_OnceOnly_v3_35;
    l1 = self.box_ProximityRadiusListener_v3_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|306593984", "306593984", "UNI45_020_B05", "box_OnceOnly_v3_35.Out", "box_ProximityRadiusListener_v3_36.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityRadiusListener_v3_39_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_48();
    l0 = self.box_ProximityRadiusListener_v3_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2022714390", "2022714390", "UNI45_020_B05", "box_ProximityRadiusListener_v3_39.AllFar", "box_OutputOrder_v2_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_51();
    l0 = self.box_SpawnAI_50;
    l1 = self.box_SpawnAI_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|515969189", "515969189", "UNI45_020_B05", "box_SpawnAI_50.Out", "box_SpawnAI_51.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_15_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_13();
    l0 = self.box_EntityStatusListener_15;
    l1 = self.box_EntityStatusListener_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|484086564", "484086564", "UNI45_020_B05", "box_EntityStatusListener_15.Loaded", "box_EntityStatusListener_13.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_13_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_13;
    l1 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1477459449", "1477459449", "UNI45_020_B05", "box_EntityStatusListener_13.Loaded", "box_EntityStatusListener_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_23_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EndActivityObjective_v2_29();
    l0 = self.box_OnceOnly_v3_23;
    l1 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1900614789", "1900614789", "UNI45_020_B05", "box_OnceOnly_v3_23.Out", "box_EndActivityObjective_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_61_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_63();
    l0 = self.box_VisibilityModifier_61;
    l1 = self.box_VisibilityModifier_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2114065115", "2114065115", "UNI45_020_B05", "box_VisibilityModifier_61.Disabled", "box_VisibilityModifier_63.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_11();
    l0 = self.box_EntityStatusListener_12;
    l1 = self.box_EntityStatusListener_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1854742340", "1854742340", "UNI45_020_B05", "box_EntityStatusListener_12.Loaded", "box_EntityStatusListener_11.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_57_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayRandomDialog_56();
    l0 = self.box_MultipleOR_57;
    l1 = self.box_PlayRandomDialog_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2059567911", "2059567911", "UNI45_020_B05", "box_MultipleOR_57.Out", "box_PlayRandomDialog_56.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_63_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_62();
    l0 = self.box_VisibilityModifier_63;
    l1 = self.box_VisibilityModifier_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1699715392", "1699715392", "UNI45_020_B05", "box_VisibilityModifier_63.Disabled", "box_VisibilityModifier_62.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_Brick_Interact_With_Object_V5_22_Success()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_14();
    l0 = self.box_Brick_Interact_With_Object_V5_22;
    l1 = self.box_SoundModifier_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1676384971", "1676384971", "UNI45_020_B05", "box_Brick_Interact_With_Object_V5_22.Success", "box_SoundModifier_v2_14.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_PickupState_v2_66_OnSetAsNotPickable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PickupState_v2_65();
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1441687186", "1441687186", "UNI45_020_B05", "box_PickupState_v2_66.OnSetAsNotPickable", "box_PickupState_v2_65.SetAsNotPickable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsNotPickable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_41();
    l0 = self.box_SpawnAI_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|727101806", "727101806", "UNI45_020_B05", "box_OutputOrder_v2_42.Out", "box_SpawnAI_41.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1886226645", "1886226645", "UNI45_020_B05", "box_OutputOrder_v2_42.Out", "box_Simple_Node_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1908928624", "1908928624", "UNI45_020_B05", "box_OutputOrder_v2_3.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_15();
    l0 = self.box_EntityStatusListener_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|382898914", "382898914", "UNI45_020_B05", "box_OutputOrder_v2_3.Out", "box_EntityStatusListener_15.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_3_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2012675489", "2012675489", "UNI45_020_B05", "box_OutputOrder_v2_3.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|@n_CancelListeners");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|@n_CultBarks");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_55_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|@n_OnLeaveZone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_69_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_49()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = "#8C9E09A0",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|71313990");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|105192914");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_17_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Bomb",
            id = "811265",
        },
        -- ProgressDisplayType,
        [2] = 0,
        -- TotalProgress,
        [3] = 4,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|119446786");
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
                [0] = self.f_box_OutputOrder_v2_53_Out_0,
                [1] = self.f_box_OutputOrder_v2_53_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|139030788");
    l0:SetConnections({
        -- OnSetAsNotPickable,
        [0] = self.f_box_PickupState_v2_65_OnSetAsNotPickable,
    });
    params = {
        -- Pickup,
        [0] = "2103552572517268517",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|150137821");
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
                [0] = self.f_box_OutputOrder_v2_68_Out_0,
                [1] = self.f_box_OutputOrder_v2_68_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- farZone,
        [2] = 15,
        -- id2,
        [3] = "2100983144506198767",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|184613423");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_19_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Bomb",
            id = "811265",
        },
        -- Progress,
        [1] = self.i_bombActivated,
        -- ProgressId,
        [2] = self.id_Objective,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_45()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103872187199933150",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103872221442231154",
    };
    return params;
end;

function export:OnEnter_box_EndActivityObjective_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/EndActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndActivityObjective_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|245175089");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_EndActivityObjective_v2_29_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Bomb",
            id = "811265",
        },
        -- Success,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_32()
    local params;
    params = {
        -- Pawns,
        [0] = "2104136689898252503",
        -- SoundId,
        [1] = "1251606610",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayRandomDialog_56()
    local params;
    params = {
        -- Group,
        [0] = "#22740695",
        -- maxTime,
        [1] = 45,
        -- minTime,
        [2] = 25,
        -- SoundId,
        [3] = {
            connections = {
                [0] = "478623599",
                [1] = "29264750",
                [2] = "2518071524",
            },
            count = 3,
        },
        -- TargetEntity,
        [4] = nil,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_16()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017995058252521",
        -- SoundId,
        [1] = "1251606610",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|322554733");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_1_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_11()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2100983144506198767",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|438263883");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_60()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552567576378404",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|525542669");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
                [2] = self.f_box_OutputOrder_v2_30_Out_2,
                [3] = self.f_box_OutputOrder_v2_30_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|537145166");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|541150172");
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
        [8] = "--- UNI45_020_B05 - SCRIPT IS RUNNING ---",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|777320555");
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

function export:OnEnter_box_SoundModifier_v2_31()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017735948831463",
        -- SoundId,
        [1] = "1251606610",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|815750057");
    l0:SetConnections({
    });
    params = {
        -- Pickup,
        [0] = "2103552586926799911",
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_20()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2103207057241946237",
        -- e_ObjectiveMarker,
        [4] = "2099790547083336657",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Bomb",
            id = "811265",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_37()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- farZone,
        [2] = 15,
        -- id2,
        [3] = "2099709006275679950",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_62()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552572517268517",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_14()
    local params;
    params = {
        -- Pawns,
        [0] = "2100017674475014885",
        -- SoundId,
        [1] = "1251606610",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|906748364");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_27_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.i_bombActivated,
        -- B,
        [1] = 4,
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|943611650");
    l0:SetConnections({
        -- OnSetAsNotPickable,
        [0] = self.f_box_PickupState_v2_67_OnSetAsNotPickable,
    });
    params = {
        -- Pickup,
        [0] = "2103552567576378404",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1100501183");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_18_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Bomb",
            id = "811265",
        },
        -- TargetGroup,
        [2] = self.gPlayerGroup,
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_6()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2103207063466293381",
        -- e_ObjectiveMarker,
        [4] = "2099790581606652897",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Bomb",
            id = "811265",
        },
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_36()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.gPlayerGroup,
        -- farZone,
        [2] = 15,
        -- id2,
        [3] = "2099707929553802679",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_52()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 3,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "751549086",
        -- StopEvent,
        [7] = "3703649389",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = true,
        -- WaitUntilNotInVehicle,
        [11] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1224196922");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
                [2] = self.f_box_OutputOrder_v2_59_Out_2,
                [3] = self.f_box_OutputOrder_v2_59_Out_3,
                [4] = self.f_box_OutputOrder_v2_59_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1387311052");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_24_Out,
    });
    params = {
        -- A,
        [0] = self.i_bombActivated,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_47()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103872057228937615",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1460276514");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_26_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Bomb",
            id = "811265",
        },
        -- Progress,
        [1] = self.i_bombActivated,
        -- ProgressId,
        [2] = self.id_Objective,
    };
    return params;
end;

function export:OnEnter_box_Brick_Interact_With_Object_V5_21()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2103207061104900225",
        -- e_ObjectiveMarker,
        [4] = "2099790563453705173",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Bomb",
            id = "811265",
        },
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_51()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104562523935090250",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1612222093");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_33_A_eq_B,
    });
    params = {
        -- A,
        [0] = self.i_bombActivated,
        -- B,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1650158314");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1711915896");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103872069988010493",
        -- Group,
        [1] = "#8C9E09A0",
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
        -- farZone,
        [2] = 15,
        -- id2,
        [3] = "2099323430298983580",
        -- use2d,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_50()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104562439229023562",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_15()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099323430298983580",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_13()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099707929553802679",
    };
    return params;
end;

function export:OnEnter_box_MetaBreakableModifier_v2_9()
    local params;
    params = {
        -- targets,
        [0] = "#95544EFB",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_41()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103872193866779433",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_61()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552586926799911",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_12()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2099709006275679950",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_63()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103552583548288038",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|1970009415");
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

function export:OnEnter_box_Brick_Interact_With_Object_V5_22()
    local params;
    params = {
        -- b_CompletePreviousObjective,
        [0] = false,
        -- b_EntityIsProximityTrigger,
        [1] = true,
        -- b_SkipObjectiveFlow,
        [2] = true,
        -- e_EntityToInteractWith,
        [3] = "2103206320264985568",
        -- e_ObjectiveMarker,
        [4] = "2099790571760524249",
        -- InteractionHUD,
        [5] = {
            section = "Interactions",
            item = "INTERACTION_INTERACT",
            id = "533237",
        },
        -- o_ObjectiveText,
        [6] = {
            section = "Objective",
            item = "UNI45_020_B05_OBJ_Bomb",
            id = "811265",
        },
    };
    return params;
end;

function export:OnEnter_box_PickupState_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PickupState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PickupState_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2098517116");
    l0:SetConnections({
        -- OnSetAsNotPickable,
        [0] = self.f_box_PickupState_v2_66_OnSetAsNotPickable,
    });
    params = {
        -- Pickup,
        [0] = "2103552583548288038",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2104057525");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI45\\UNI45_020_B05.domino|@UNI45_020_B05|2141442564");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
                [2] = self.f_box_OutputOrder_v2_3_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_AddActivityObjectiveProgress_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    self.id_Objective = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_1_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayerGroup = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    self.i_bombActivated = l0:GetDataOutValue(0);
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
