LUACA� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni50/uni50_010/uni50_010.domino
-- User graph: UNI50_010_DEBRIEF
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/NavLinkModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/ExtinguishAllFires.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/GetPawnVehicleInfo.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntitiesOutRange.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[12092247.bnk]], "CSoundResource");
        cboxRes:LoadResource([[660716655.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI50/UNI50_010/UNI50_010.UNI50_010_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua")] = {
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
                name = "KeepBlackBars",
                type = "bool",
            },
            [1] = {
                name = "KeepGodMode",
                type = "bool",
            },
            [2] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [3] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "BasicSetup",
            },
            [1] = {
                name = "HolsterWeapon",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Holstered",
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
                name = "Enable_Blackbars",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")] = {
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
                name = "ActivityAbortAndFastTravelEnabled",
                type = "bool",
            },
            [1] = {
                name = "SleepingCampEnabled",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/AI/AgentGroupModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AddGroup",
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
                name = "AnimalGroup",
                type = "group",
            },
            [1] = {
                name = "PawnGroup",
                type = "group",
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
    metadataTable[GetPathID("Domino/System/ExtinguishAllFires.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ForceExitVehicle_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ForceExit",
            },
            [1] = {
                name = "TryExit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ForceExitted",
                delayed = false,
            },
            [1] = {
                name = "TryExitted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "noFail",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "vehicle",
                type = "entity",
            },
        },
        dataInCount = 3,
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
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Narrative/PlaySequence_v8.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Pause",
            },
            [1] = {
                name = "Play",
            },
            [2] = {
                name = "PlayFromStart",
            },
            [3] = {
                name = "Skip",
            },
            [4] = {
                name = "SPIn",
                dynamicType = 2,
            },
            [5] = {
                name = "Stop",
            },
        },
        controlInCount = 6,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Paused",
                delayed = true,
            },
            [2] = {
                name = "Skipped",
                delayed = true,
            },
            [3] = {
                name = "SPOut",
                dynamicType = 2,
                delayed = false,
            },
            [4] = {
                name = "Started",
                delayed = true,
            },
            [5] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "cleanupArrows",
                type = "bool",
            },
            [1] = {
                name = "IsSkippable",
                type = "bool",
            },
            [2] = {
                name = "MetaSequenceID",
                type = "int",
            },
            [3] = {
                name = "SceneEntity",
                type = "entity",
            },
            [4] = {
                name = "SequenceFile",
                type = "sequence",
            },
            [5] = {
                name = "ShouldRemovePostFx",
                type = "bool",
            },
            [6] = {
                name = "SkipPostFx",
                type = "string",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StartMetaSequence.lua")] = {
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
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Interrupt",
            },
            [1] = {
                name = "Stop",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Interrupted",
                delayed = false,
            },
            [1] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ContextFlags",
                type = "list",
            },
            [1] = {
                name = "ID",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/OverrideEnvironment_v3.lua")] = {
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
                name = "adaptiveBloom",
                type = "string",
            },
            [1] = {
                name = "atmosphericScattering",
                type = "string",
            },
            [2] = {
                name = "characterVisibility",
                type = "string",
            },
            [3] = {
                name = "cloud",
                type = "string",
            },
            [4] = {
                name = "depthOfField",
                type = "string",
            },
            [5] = {
                name = "exposure",
                type = "string",
            },
            [6] = {
                name = "fog",
                type = "string",
            },
            [7] = {
                name = "lighting",
                type = "string",
            },
            [8] = {
                name = "motionBlur",
                type = "string",
            },
            [9] = {
                name = "ratio",
                type = "float",
            },
            [10] = {
                name = "shadow",
                type = "string",
            },
            [11] = {
                name = "sky",
                type = "string",
            },
            [12] = {
                name = "stormFactor",
                type = "float",
            },
            [13] = {
                name = "transitionTime",
                type = "float",
            },
            [14] = {
                name = "wind",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/Player/PostFx_v3.lua")] = {
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
            [0] = {
                name = "Pawns",
                type = "group",
            },
            [1] = {
                name = "PostFxName",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/WieldInventory_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LuaDraw",
            },
            [1] = {
                name = "LuaHolster",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Drawn",
                delayed = false,
            },
            [1] = {
                name = "Holstered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterId",
                type = "genericdb",
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
    metadataTable[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Remove",
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
                name = "Range",
                type = "float",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SoundMixing.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Start",
            },
            [1] = {
                name = "Stop",
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
                name = "SoundMixing",
                type = "SoundMixing",
            },
        },
        dataInCount = 1,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI50_010_DEBRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF";
    self.MetaSequenceId = 0;
    self.eVehicle = nil;
    self.MetaSequenceID = 0;
    self.PlayerInVehicle = false;
    self.box_StartMetaSequence_7 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|14554241");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_7_Out,
    });
    self.box_VisibilityModifier_48 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|22478178");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_60 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|24719601");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_132 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|38828533");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_67 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|43070068");
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
        [0] = self.f_box_MultipleAND_v2_67_Out,
    });
    self.box_PhysicsModifier_37 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|46515772");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_45 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|84279328");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_54 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|84787824");
    l0:SetConnections({
    });
    self.box_Delay_v5_115 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|85943770");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_115_TimeElapsed,
    });
    self.box_PostFx_v3_39 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|146965717");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_39_Enabled,
    });
    self.box_PhysicsModifier_106 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|157456088");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_124 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|161081406");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_124_Out,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|180033888");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_NavLinkModifier_13 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|199942926");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_44 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|225166513");
    l0:SetConnections({
    });
    self.box_PostFx_v3_118 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_118;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|283266530");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_56 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|284049562");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_73 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|306346844");
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
                [0] = self.f_box_OnceOnly_v3_73_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_47 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|318602475");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_72 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|343780492");
    l0:SetConnections({
    });
    self.box_OnceOnly_v3_78 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|353157018");
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
                [0] = self.f_box_OnceOnly_v3_78_Out_0,
            },
            count = 2,
        },
    });
    self.box_VisibilityModifier_24 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|357072996");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_38 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|361811819");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_38_Holstered,
    });
    self.box_WieldInventory_v5_117 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_117;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|418206482");
    l0:SetConnections({
        -- Holstered,
        [1] = self.f_box_WieldInventory_v5_117_Holstered,
    });
    self.box_VisibilityModifier_59 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|438975374");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_91 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_91;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|544146224");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|575504534");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_Music_Quest_v2_71 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|612448124");
    l0:SetConnections({
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|630852550");
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
    self.box_TeleportPawns_112 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|637038421");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_112_Out,
    });
    self.box_PhysicsModifier_25 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|675708659");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_29 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|731770374");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_82 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|735936396");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_82_Deactivated,
    });
    self.box_VisibilityModifier_79 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|743926920");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_129 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|779541879");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_98 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|783993404");
    l0:SetConnections({
    });
    self.box_NavLinkModifier_12 = cbox:CreateBox("Domino/System/AI/NavLinkModifier.lua");
    l0 = self.box_NavLinkModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NavLinkModifier_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|862978899");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_NavLinkModifier_12_Deactivated,
    });
    self.box_RemoveEntity_v2_85 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|893561078");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_85_Out,
    });
    self.box_PhysicsModifier_100 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|908319593");
    l0:SetConnections({
    });
    self.box_Delay_v5_84 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|936270204");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_84_TimeElapsed,
    });
    self.box_OnceOnly_v3_20 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|982329443");
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
                [0] = self.f_box_OnceOnly_v3_20_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|987426889");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1079208305");
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
        [0] = self.f_box_MultipleOR_75_Out,
    });
    self.box_MultipleOR_80 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1144257647");
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
        [0] = self.f_box_MultipleOR_80_Out,
    });
    self.box_MultipleOR_152 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_152;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1150962840");
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
        [0] = self.f_box_MultipleOR_152_Out,
    });
    self.box_NarrativeSceneCleanUp_114 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1157198380");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_114_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1174868995");
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
    self.box_PhysicsModifier_28 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1204610816");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_58 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1207145885");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_99 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1243717907");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_105 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1245272424");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_95 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1250883875");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_50 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1261906236");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_23 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1310906929");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_31 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1323580043");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_31_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_31_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_31_SPOut__FadeIn_,
                },
                [1] = {
                    string = "short_version",
                },
                [2] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_31_SPOut__FadeOut_,
                },
            },
            count = 3,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_31_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_31_Stopped,
    });
    self.box_MultipleOR_126 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1332904767");
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
        [0] = self.f_box_MultipleOR_126_Out,
    });
    self.box_PostFx_v3_116 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1347189878");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_116_Disabled,
    });
    self.box_PhysicsModifier_104 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1467162187");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_134 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1484683166");
    l0:SetConnections({
    });
    self.box_MultipleOR_21 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1509471336");
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
        [0] = self.f_box_MultipleOR_21_Out,
    });
    self.box_PhysicsModifier_49 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1531204196");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_65 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1583242959");
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
        [0] = self.f_box_MultipleAND_v2_65_Out,
    });
    self.box_VisibilityModifier_107 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1585831933");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_96 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1625953089");
    l0:SetConnections({
    });
    self.box_Delay_v5_35 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1627772262");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_35_TimeElapsed,
    });
    self.box_PlaySequence_v8_16 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1635795292");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 3,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_16_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_16_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_16_SPOut__FadeIn_,
                },
                [1] = {
                    string = "short_version",
                    value = self.f_box_PlaySequence_v8_16_SPOut__short_version_,
                },
                [2] = {
                    string = "FadeOut",
                },
            },
            count = 3,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_16_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_16_Stopped,
    });
    self.box_VisibilityModifier_22 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1688575621");
    l0:SetConnections({
    });
    self.box_Delay_v5_133 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1693643707");
    l0:SetConnections({
        -- Stopped,
        [4] = self.f_box_Delay_v5_133_Stopped,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_133_TimeElapsed,
    });
    self.box_PhysicsModifier_27 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1706972336");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_46 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1707879227");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_33 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1717775135");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_51 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1722305584");
    l0:SetConnections({
    });
    self.box_StartCelebration_10 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1784626386");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_10_Ended,
        -- Started,
        [1] = self.f_box_StartCelebration_10_Started,
    });
    self.box_OnceOnly_v3_83 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1788277682");
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
    self.box_VisibilityModifier_32 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1796383444");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_101 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1870289666");
    l0:SetConnections({
    });
    self.box_PostFx_v3_40 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1894496377");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_40_Disabled,
    });
    self.box_RemoveEntity_v2_15 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1898284281");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_61 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1927978077");
    l0:SetConnections({
    });
    self.box_PhysicsModifier_81 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1936554099");
    l0:SetConnections({
    });
    self.box_PostFx_v3_113 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1952096063");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_113_Enabled,
    });
    self.box_VisibilityModifier_92 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_92;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1985861372");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_57 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2004561305");
    l0:SetConnections({
    });
    self.box_GunsForHireSystemModifier_119 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2063551769");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_119_Disabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1595283793", "1595283793", "UNI50_010_DEBRIEF", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_53();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1960342012", "1960342012", "UNI50_010_DEBRIEF", "OnLeaveZone", "box_OutputOrder_v2_53.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_109_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1816267279", "1816267279", "UNI50_010_DEBRIEF", "box_Simple_Node_109.Out", "box_OutputOrder_v2_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|482194474", "482194474", "UNI50_010_DEBRIEF", "box_Simple_Node_26.Out", "box_OutputOrder_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_102_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_93();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1749162075", "1749162075", "UNI50_010_DEBRIEF", "box_Simple_Node_102.Out", "box_OutputOrder_v2_93.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1952330201", "1952330201", "UNI50_010_DEBRIEF", "box_Simple_Node_41.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_103_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_97();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1312104088", "1312104088", "UNI50_010_DEBRIEF", "box_Simple_Node_103.Out", "box_OutputOrder_v2_97.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_17_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|388277984", "388277984", "UNI50_010_DEBRIEF", "box_Simple_Node_17.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideEnvironment_v3_128_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_40();
    l0 = self.box_PostFx_v3_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1031718564", "1031718564", "UNI50_010_DEBRIEF", "box_OverrideEnvironment_v3_128.Disabled", "box_PostFx_v3_40.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_AgentGroupModifier_64_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|681860907", "681860907", "UNI50_010_DEBRIEF", "box_AgentGroupModifier_64.Out", "box_OutputOrder_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_7_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_7_Out();
    params = self:OnEnter_box_GetPawnVehicleInfo_127();
    l0 = self.box_StartMetaSequence_7;
    l1 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1639140402", "1639140402", "UNI50_010_DEBRIEF", "box_StartMetaSequence_7.Out", "box_GetPawnVehicleInfo_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ForceExitVehicle_v2_120_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_85();
    l0 = self.box_RemoveEntity_v2_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|724126532", "724126532", "UNI50_010_DEBRIEF", "box_ForceExitVehicle_v2_120.ForceExitted", "box_RemoveEntity_v2_85.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_67_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_17();
    l0 = self.box_MultipleAND_v2_67;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2137055271", "2137055271", "UNI50_010_DEBRIEF", "box_MultipleAND_v2_67.Out", "box_Simple_Node_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_115_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_114();
    l0 = self.box_Delay_v5_115;
    l1 = self.box_NarrativeSceneCleanUp_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1494121142", "1494121142", "UNI50_010_DEBRIEF", "box_Delay_v5_115.TimeElapsed", "box_NarrativeSceneCleanUp_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_90_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1693207406", "1693207406", "UNI50_010_DEBRIEF", "box_GetActivityState_v2_90.Active", "box_MultipleOR_80.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_90_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|111672883", "111672883", "UNI50_010_DEBRIEF", "box_GetActivityState_v2_90.Canceled", "box_MultipleOR_80.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_90_Completed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1279025796", "1279025796", "UNI50_010_DEBRIEF", "box_GetActivityState_v2_90.Completed", "box_MultipleOR_77.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_90_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1089687111", "1089687111", "UNI50_010_DEBRIEF", "box_GetActivityState_v2_90.Failed", "box_MultipleOR_77.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_90_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1173452791", "1173452791", "UNI50_010_DEBRIEF", "box_GetActivityState_v2_90.Inactive", "box_MultipleOR_80.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_90_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1089419848", "1089419848", "UNI50_010_DEBRIEF", "box_GetActivityState_v2_90.Unavailable", "box_MultipleOR_80.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_68_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|969543820", "969543820", "UNI50_010_DEBRIEF", "box_SetContextualStrategy_68.Out", "box_MultipleAND_v2_65.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_122_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_123();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|167154766", "167154766", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_122.Out", "box_ForceExitVehicle_v2_123.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_122_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_137();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|881176086", "881176086", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_122.Out", "box_OutputOrder_v2_137.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_35();
    l0 = self.box_PostFx_v3_39;
    l1 = self.box_Delay_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|395939362", "395939362", "UNI50_010_DEBRIEF", "box_PostFx_v3_39.Enabled", "box_Delay_v5_35.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_RemoveEntity_v2_124_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_125();
    l0 = self.box_RemoveEntity_v2_124;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|778166253", "778166253", "UNI50_010_DEBRIEF", "box_RemoveEntity_v2_124.Out", "box_ExtinguishAllFires_125.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ForceExitVehicle_v2_123_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_124();
    l0 = self.box_RemoveEntity_v2_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1829322312", "1829322312", "UNI50_010_DEBRIEF", "box_ForceExitVehicle_v2_123.ForceExitted", "box_RemoveEntity_v2_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1178249566", "1178249566", "UNI50_010_DEBRIEF", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|688184199", "688184199", "UNI50_010_DEBRIEF", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_137_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_57();
    l0 = self.box_Music_Quest_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1381571231", "1381571231", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_137.Out", "box_Music_Quest_v2_57.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_22();
    l0 = self.box_VisibilityModifier_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|624804124", "624804124", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_VisibilityModifier_22.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_23();
    l0 = self.box_PhysicsModifier_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1659545816", "1659545816", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_PhysicsModifier_23.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_24();
    l0 = self.box_VisibilityModifier_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|21283829", "21283829", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_VisibilityModifier_24.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_25();
    l0 = self.box_PhysicsModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1266637005", "1266637005", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_PhysicsModifier_25.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_45();
    l0 = self.box_VisibilityModifier_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1797720114", "1797720114", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_VisibilityModifier_45.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_44();
    l0 = self.box_PhysicsModifier_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|220151340", "220151340", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_PhysicsModifier_44.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_47();
    l0 = self.box_VisibilityModifier_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1076561454", "1076561454", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_VisibilityModifier_47.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_46();
    l0 = self.box_PhysicsModifier_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|194645529", "194645529", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_PhysicsModifier_46.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_48();
    l0 = self.box_VisibilityModifier_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1820574893", "1820574893", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_VisibilityModifier_48.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_6_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_49();
    l0 = self.box_PhysicsModifier_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1029782844", "1029782844", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_6.Out", "box_PhysicsModifier_49.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_73_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_31();
    l0 = self.box_OnceOnly_v3_73;
    l1 = self.box_PlaySequence_v8_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1947382319", "1947382319", "UNI50_010_DEBRIEF", "box_OnceOnly_v3_73.Out", "box_PlaySequence_v8_31.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_78_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_16();
    l0 = self.box_OnceOnly_v3_78;
    l1 = self.box_PlaySequence_v8_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|351665930", "351665930", "UNI50_010_DEBRIEF", "box_OnceOnly_v3_78.Out", "box_PlaySequence_v8_16.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_15();
    l0 = self.box_RemoveEntity_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|318971387", "318971387", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_9.Out", "box_RemoveEntity_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_54();
    l0 = self.box_Music_Quest_v2_54;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|197686206", "197686206", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_9.Out", "box_Music_Quest_v2_54.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_9_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_52();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|390249770", "390249770", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_9.Out", "box_ActivityMiscInfoModifier_v2_52.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_9_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|81244816", "81244816", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_9.Out", "box_ActivityEnd_8.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_29();
    l0 = self.box_VisibilityModifier_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|117638596", "117638596", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_VisibilityModifier_29.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_27();
    l0 = self.box_PhysicsModifier_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1109834690", "1109834690", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_PhysicsModifier_27.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_33();
    l0 = self.box_VisibilityModifier_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1570478072", "1570478072", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_VisibilityModifier_33.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_28();
    l0 = self.box_PhysicsModifier_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1499568742", "1499568742", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_PhysicsModifier_28.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_58();
    l0 = self.box_VisibilityModifier_58;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1308118100", "1308118100", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_VisibilityModifier_58.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_50();
    l0 = self.box_PhysicsModifier_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|976960755", "976960755", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_PhysicsModifier_50.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_79();
    l0 = self.box_VisibilityModifier_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1198628921", "1198628921", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_VisibilityModifier_79.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_61();
    l0 = self.box_PhysicsModifier_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|401804192", "401804192", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_PhysicsModifier_61.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_59();
    l0 = self.box_VisibilityModifier_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1176297869", "1176297869", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_VisibilityModifier_59.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_60();
    l0 = self.box_PhysicsModifier_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|566744894", "566744894", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_34.Out", "box_PhysicsModifier_60.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_38_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_39();
    l0 = self.box_NarrativeSceneSetup_38;
    l1 = self.box_PostFx_v3_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|131725598", "131725598", "UNI50_010_DEBRIEF", "box_NarrativeSceneSetup_38.Holstered", "box_PostFx_v3_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_140_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_141();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|287274543", "287274543", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_140.Out", "box_SoundMixing_141.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_140_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|587111085", "587111085", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_140.Out", "box_OnceOnly_v3_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_WieldInventory_v5_117_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_WieldInventory_v5_117;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|51490174", "51490174", "UNI50_010_DEBRIEF", "box_WieldInventory_v5_117.Holstered", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_144_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1996197985", "1996197985", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_144.Out", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_144_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|799590949", "799590949", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_144.Out", "box_MultipleOR_152.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_30();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|890045066", "890045066", "UNI50_010_DEBRIEF", "box_ActivityInitialized_3.Out", "box_ActivityMiscInfoModifier_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_93_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_32();
    l0 = self.box_VisibilityModifier_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|882579793", "882579793", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_93.Out", "box_VisibilityModifier_32.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_37();
    l0 = self.box_PhysicsModifier_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|744944570", "744944570", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_93.Out", "box_PhysicsModifier_37.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_51();
    l0 = self.box_VisibilityModifier_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|652762441", "652762441", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_93.Out", "box_VisibilityModifier_51.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_81();
    l0 = self.box_PhysicsModifier_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1867684954", "1867684954", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_93.Out", "box_PhysicsModifier_81.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_92();
    l0 = self.box_VisibilityModifier_92;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1356346788", "1356346788", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_93.Out", "box_VisibilityModifier_92.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_91();
    l0 = self.box_PhysicsModifier_91;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1704593495", "1704593495", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_93.Out", "box_PhysicsModifier_91.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_105();
    l0 = self.box_VisibilityModifier_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1760530673", "1760530673", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_93.Out", "box_VisibilityModifier_105.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_93_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_104();
    l0 = self.box_PhysicsModifier_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1583257348", "1583257348", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_93.Out", "box_PhysicsModifier_104.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_146();
    l0 = self.box_MultipleOR_77;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|837291413", "837291413", "UNI50_010_DEBRIEF", "box_MultipleOR_77.Out", "box_OutputOrder_v2_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_112_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_94();
    l0 = self.box_TeleportPawns_112;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|19951683", "19951683", "UNI50_010_DEBRIEF", "box_TeleportPawns_112.Out", "box_OutputOrder_v2_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_138_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_90();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1841274898", "1841274898", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_138.Out", "box_GetActivityState_v2_90.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_138_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_133();
    l0 = self.box_Delay_v5_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|188804180", "188804180", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_138.Out", "box_Delay_v5_133.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_112();
    l0 = self.box_TeleportPawns_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1869349293", "1869349293", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_131.Out", "box_TeleportPawns_112.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_132();
    l0 = self.box_VisibilityModifier_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1884768319", "1884768319", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_131.Out", "box_VisibilityModifier_132.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_97_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_99();
    l0 = self.box_VisibilityModifier_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|620317838", "620317838", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_97.Out", "box_VisibilityModifier_99.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_97_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_95();
    l0 = self.box_PhysicsModifier_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1373538716", "1373538716", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_97.Out", "box_PhysicsModifier_95.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_97_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_96();
    l0 = self.box_VisibilityModifier_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|541259322", "541259322", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_97.Out", "box_VisibilityModifier_96.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_97_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_98();
    l0 = self.box_PhysicsModifier_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|516861339", "516861339", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_97.Out", "box_PhysicsModifier_98.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_97_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_101();
    l0 = self.box_VisibilityModifier_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1441273287", "1441273287", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_97.Out", "box_VisibilityModifier_101.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_97_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_100();
    l0 = self.box_PhysicsModifier_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1909007602", "1909007602", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_97.Out", "box_PhysicsModifier_100.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_97_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_107();
    l0 = self.box_VisibilityModifier_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|595768418", "595768418", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_97.Out", "box_VisibilityModifier_107.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_97_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PhysicsModifier_106();
    l0 = self.box_PhysicsModifier_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|437651386", "437651386", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_97.Out", "box_PhysicsModifier_106.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_NavLinkModifier_82_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_13();
    l0 = self.box_NavLinkModifier_82;
    l1 = self.box_NavLinkModifier_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|474076214", "474076214", "UNI50_010_DEBRIEF", "box_NavLinkModifier_82.Deactivated", "box_NavLinkModifier_13.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_136_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1934931519", "1934931519", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_136.Out", "box_OnceOnly_v3_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_130_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_119();
    l0 = self.box_GunsForHireSystemModifier_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1943769608", "1943769608", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_130.Out", "box_GunsForHireSystemModifier_119.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_130_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_129();
    l0 = self.box_VisibilityModifier_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|73986775", "73986775", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_130.Out", "box_VisibilityModifier_129.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_AgentGroupModifier_135_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_134();
    l0 = self.box_VisibilityModifier_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1447784447", "1447784447", "UNI50_010_DEBRIEF", "box_AgentGroupModifier_135.Out", "box_VisibilityModifier_134.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_53_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_56();
    l0 = self.box_Music_Quest_v2_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1606150229", "1606150229", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_53.Out", "box_Music_Quest_v2_56.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_53_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_11();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|61223143", "61223143", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_53.Out", "box_ActivityRetry_11.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NavLinkModifier_12_Deactivated()
    local params, l0, l1;
    params = self:OnEnter_box_NavLinkModifier_82();
    l0 = self.box_NavLinkModifier_12;
    l1 = self.box_NavLinkModifier_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1258617895", "1258617895", "UNI50_010_DEBRIEF", "box_NavLinkModifier_12.Deactivated", "box_NavLinkModifier_82.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
end;

function export:f_box_RemoveEntity_v2_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishAllFires_76();
    l0 = self.box_RemoveEntity_v2_85;
    l1 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1878681955", "1878681955", "UNI50_010_DEBRIEF", "box_RemoveEntity_v2_85.Out", "box_ExtinguishAllFires_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_128();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2144460519", "2144460519", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_94.Out", "box_OverrideEnvironment_v3_128.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_103();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2021988378", "2021988378", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_94.Out", "box_Simple_Node_103.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_94_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1556563469", "1556563469", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_94.Out", "box_Simple_Node_41.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_84_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_16();
    l0 = self.box_Delay_v5_84;
    l1 = self.box_PlaySequence_v8_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|767200623", "767200623", "UNI50_010_DEBRIEF", "box_Delay_v5_84.TimeElapsed", "box_PlaySequence_v8_16.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_GetPawnVehicleInfo_127_InVehicle()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_127_InVehicle();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|212537353", "212537353", "UNI50_010_DEBRIEF", "box_GetPawnVehicleInfo_127.InVehicle", "box_MultipleOR_126.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPawnVehicleInfo_127_NotInVehicle()
    self:OnExit_box_GetPawnVehicleInfo_127_NotInVehicle();
end;

function export:f_box_GetPawnVehicleInfo_127_Out()
    local l0;
    self:OnExit_box_GetPawnVehicleInfo_127_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|472785368", "472785368", "UNI50_010_DEBRIEF", "box_GetPawnVehicleInfo_127.Out", "box_MultipleOR_126.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OnceOnly_v3_20_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_20;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|294776205", "294776205", "UNI50_010_DEBRIEF", "box_OnceOnly_v3_20.Out", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_136();
    l0 = self.box_MultipleOR_36;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1827265647", "1827265647", "UNI50_010_DEBRIEF", "box_MultipleOR_36.Out", "box_OutputOrder_v2_136.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_147();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1036410883", "1036410883", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_SoundMixing_147.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_74_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_57();
    l0 = self.box_Music_Quest_v2_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1808432440", "1808432440", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_Music_Quest_v2_57.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_74_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|127120516", "127120516", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_74.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_10();
    l0 = self.box_StartCelebration_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1807973917", "1807973917", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_14.Out", "box_StartCelebration_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NavLinkModifier_12();
    l0 = self.box_NavLinkModifier_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1461046657", "1461046657", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_14.Out", "box_NavLinkModifier_12.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2079876676", "2079876676", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_1();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|684535288", "684535288", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_5.Out", "box_Print_v2_1.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_151();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|287481181", "287481181", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_150.Out", "box_SoundMixing_151.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_150_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1378979636", "1378979636", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_150.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_75_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_75;
    l1 = self.box_OnceOnly_v3_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|271900196", "271900196", "UNI50_010_DEBRIEF", "box_MultipleOR_75.Out", "box_OnceOnly_v3_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_140();
    l0 = self.box_MultipleOR_80;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|28489675", "28489675", "UNI50_010_DEBRIEF", "box_MultipleOR_80.Out", "box_OutputOrder_v2_140.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_152_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_143();
    l0 = self.box_MultipleOR_152;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2024733336", "2024733336", "UNI50_010_DEBRIEF", "box_MultipleOR_152.Out", "box_SoundMixing_143.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_114_Out()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_117();
    l0 = self.box_NarrativeSceneCleanUp_114;
    l1 = self.box_WieldInventory_v5_117;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1649377792", "1649377792", "UNI50_010_DEBRIEF", "box_NarrativeSceneCleanUp_114.Out", "box_WieldInventory_v5_117.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2011608659", "2011608659", "UNI50_010_DEBRIEF", "box_MultipleOR_4.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_121_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_120();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|319638594", "319638594", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_121.Out", "box_ForceExitVehicle_v2_120.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_121_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_71();
    l0 = self.box_Music_Quest_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|527124894", "527124894", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_121.Out", "box_Music_Quest_v2_71.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_149_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_148();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1641058394", "1641058394", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_149.Out", "box_SoundMixing_148.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_149_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1106934412", "1106934412", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_149.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OverrideEnvironment_v3_108_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_138();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1560230757", "1560230757", "UNI50_010_DEBRIEF", "box_OverrideEnvironment_v3_108.Enabled", "box_OutputOrder_v2_138.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_31_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_144();
    l0 = self.box_PlaySequence_v8_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1437649699", "1437649699", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_31.Finished", "box_OutputOrder_v2_144.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_31_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_PlaySequence_v8_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1284977641", "1284977641", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_31.Skipped", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_31_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_118();
    l0 = self.box_PlaySequence_v8_31;
    l1 = self.box_PostFx_v3_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|894895330", "894895330", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_31.SPOut", "box_PostFx_v3_118.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_31_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_118();
    l0 = self.box_PlaySequence_v8_31;
    l1 = self.box_PostFx_v3_118;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2132204328", "2132204328", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_31.SPOut", "box_PostFx_v3_118.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_31_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_121();
    l0 = self.box_PlaySequence_v8_31;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1999387926", "1999387926", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_31.Started", "box_OutputOrder_v2_121.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_31_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_31;
    l1 = self.box_MultipleOR_152;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1217642328", "1217642328", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_31.Stopped", "box_MultipleOR_152.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_126_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_MultipleOR_126;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1521417604", "1521417604", "UNI50_010_DEBRIEF", "box_MultipleOR_126.Out", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_116_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_115();
    l0 = self.box_PostFx_v3_116;
    l1 = self.box_Delay_v5_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|817486409", "817486409", "UNI50_010_DEBRIEF", "box_PostFx_v3_116.Disabled", "box_Delay_v5_115.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_142();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|712027884", "712027884", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_55.Out", "box_SoundMixing_142.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_71();
    l0 = self.box_Music_Quest_v2_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2023602614", "2023602614", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_55.Out", "box_Music_Quest_v2_71.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_55_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|969823167", "969823167", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_55.Out", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_70_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_65();
    l0 = self.box_MultipleAND_v2_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|444158192", "444158192", "UNI50_010_DEBRIEF", "box_SetContextualStrategy_70.Out", "box_MultipleAND_v2_65.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_139();
    l0 = self.box_MultipleOR_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1688720672", "1688720672", "UNI50_010_DEBRIEF", "box_MultipleOR_21.Out", "box_OutputOrder_v2_139.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntityOutRange_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExtinguishAllFires_43();
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1872873604", "1872873604", "UNI50_010_DEBRIEF", "box_RemoveEntityOutRange_42.Out", "box_ExtinguishAllFires_43.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_67();
    l0 = self.box_MultipleAND_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1231126493", "1231126493", "UNI50_010_DEBRIEF", "box_SetContextualStrategy_62.Out", "box_MultipleAND_v2_67.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_ExtinguishAllFires_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_108();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1864785820", "1864785820", "UNI50_010_DEBRIEF", "box_ExtinguishAllFires_43.Out", "box_OverrideEnvironment_v3_108.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_65_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_38();
    l0 = self.box_MultipleAND_v2_65;
    l1 = self.box_NarrativeSceneSetup_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1534995859", "1534995859", "UNI50_010_DEBRIEF", "box_MultipleAND_v2_65.Out", "box_NarrativeSceneSetup_38.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v4_111_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|519908257", "519908257", "UNI50_010_DEBRIEF", "box_StopMetaSequence_v4_111.Stopped", "box_OutputOrder_v2_131.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_35_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_130();
    l0 = self.box_Delay_v5_35;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1792763012", "1792763012", "UNI50_010_DEBRIEF", "box_Delay_v5_35.TimeElapsed", "box_OutputOrder_v2_130.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_16_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_150();
    l0 = self.box_PlaySequence_v8_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|605062813", "605062813", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_16.Finished", "box_OutputOrder_v2_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_16_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_74();
    l0 = self.box_PlaySequence_v8_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|5876626", "5876626", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_16.Skipped", "box_OutputOrder_v2_74.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_16_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_113();
    l0 = self.box_PlaySequence_v8_16;
    l1 = self.box_PostFx_v3_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1567999439", "1567999439", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_16.SPOut", "box_PostFx_v3_113.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_16_SPOut__short_version_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_113();
    l0 = self.box_PlaySequence_v8_16;
    l1 = self.box_PostFx_v3_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|385474022", "385474022", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_16.SPOut", "box_PostFx_v3_113.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_16_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_122();
    l0 = self.box_PlaySequence_v8_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1600702899", "1600702899", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_16.Started", "box_OutputOrder_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_16_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_149();
    l0 = self.box_PlaySequence_v8_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|893641174", "893641174", "UNI50_010_DEBRIEF", "box_PlaySequence_v8_16.Stopped", "box_OutputOrder_v2_149.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_133_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_134();
    l0 = self.box_Delay_v5_133;
    l1 = self.box_VisibilityModifier_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|66347841", "66347841", "UNI50_010_DEBRIEF", "box_Delay_v5_133.Stopped", "box_VisibilityModifier_134.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_133_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_135();
    l0 = self.box_Delay_v5_133;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1719593483", "1719593483", "UNI50_010_DEBRIEF", "box_Delay_v5_133.TimeElapsed", "box_AgentGroupModifier_135.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_10_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_64();
    l0 = self.box_StartCelebration_10;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|899327554", "899327554", "UNI50_010_DEBRIEF", "box_StartCelebration_10.Ended", "box_AgentGroupModifier_64.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_10_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_72();
    l0 = self.box_StartCelebration_10;
    l1 = self.box_Music_Quest_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|680446153", "680446153", "UNI50_010_DEBRIEF", "box_StartCelebration_10.Started", "box_Music_Quest_v2_72.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_83_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_83;
    l1 = self.box_MultipleOR_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|915870813", "915870813", "UNI50_010_DEBRIEF", "box_OnceOnly_v3_83.Out", "box_MultipleOR_21.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_69_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_67();
    l0 = self.box_MultipleAND_v2_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2001896245", "2001896245", "UNI50_010_DEBRIEF", "box_SetContextualStrategy_69.Out", "box_MultipleAND_v2_67.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_70();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|393984997", "393984997", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_63.Out", "box_SetContextualStrategy_70.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_68();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1316720515", "1316720515", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_63.Out", "box_SetContextualStrategy_68.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_40_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_116();
    l0 = self.box_PostFx_v3_40;
    l1 = self.box_PostFx_v3_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1491572065", "1491572065", "UNI50_010_DEBRIEF", "box_PostFx_v3_40.Disabled", "box_PostFx_v3_116.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_113_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_84();
    l0 = self.box_PostFx_v3_113;
    l1 = self.box_Delay_v5_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1339189057", "1339189057", "UNI50_010_DEBRIEF", "box_PostFx_v3_113.Enabled", "box_Delay_v5_84.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntityOutRange_42();
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|172909726", "172909726", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_19.Out", "box_RemoveEntityOutRange_42.Remove", clone:GetLuaBox(), l0:GetLuaBox());
    -- Remove
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_102();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|892831521", "892831521", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_19.Out", "box_Simple_Node_102.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_26();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|751649928", "751649928", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_19.Out", "box_Simple_Node_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_146_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_145();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|180149494", "180149494", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_146.Out", "box_SoundMixing_145.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_146_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|315885899", "315885899", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_146.Out", "box_OnceOnly_v3_78.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityMiscInfoModifier_v2_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_109();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2096145941", "2096145941", "UNI50_010_DEBRIEF", "box_ActivityMiscInfoModifier_v2_30.Out", "box_Simple_Node_109.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_62();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1029204807", "1029204807", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_66.Out", "box_SetContextualStrategy_62.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_69();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2024862450", "2024862450", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_66.Out", "box_SetContextualStrategy_69.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_119_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_119;
    l1 = self.box_StartMetaSequence_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|328656953", "328656953", "UNI50_010_DEBRIEF", "box_GunsForHireSystemModifier_119.Disabled", "box_StartMetaSequence_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_139_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v4_111();
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1164155465", "1164155465", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_139.Out", "box_StopMetaSequence_v4_111.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_133();
    l0 = self.box_Delay_v5_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|544612953", "544612953", "UNI50_010_DEBRIEF", "box_OutputOrder_v2_139.Out", "box_Delay_v5_133.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:OnEnter_box_Simple_Node_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|@Activity_Init");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|@HideAI");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_26_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|@HidePersistantChar");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_102_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|@ShowAI");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|@ShowPersistantChar");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_103_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|@Success");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|490009");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_OverrideEnvironment_v3_128_Disabled,
    });
    params = {
        -- fog,
        [6] = "interior.nofog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|8577242");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_64_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A8D86C48",
        -- PawnGroup,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_48()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#37AA7A9F",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_60()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#37AA7A9F",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|30626015");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_120_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = self.eVehicle,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_132()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_67()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_37()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3C860A50",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|52790239");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|82878096");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_General_Mute_Non_CIN",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_45()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103496076479756478",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_54()
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
        [6] = "660716655",
        -- StopEvent,
        [7] = "12092247",
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

function export:OnEnter_box_Delay_v5_115()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|101075385");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_90_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_90_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_90_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_90_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_90_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_90_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015244208934727",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|116977694");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_68_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103952301382198654",
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|119029439");
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

function export:OnEnter_box_PostFx_v3_39()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_106()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1568CD26",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_124()
    local params;
    params = {
        -- Group,
        [0] = self.eVehicle,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|167868932");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_123_ForceExitted,
    });
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = self.eVehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|191887266");
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
                [0] = self.f_box_OutputOrder_v2_137_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_13()
    local params;
    params = {
        -- Entity,
        [0] = "2101065785496578493",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_44()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103496076479756478",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|248940478");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [4] = self.f_box_OutputOrder_v2_6_Out_4,
                [5] = self.f_box_OutputOrder_v2_6_Out_5,
                [6] = self.f_box_OutputOrder_v2_6_Out_6,
                [7] = self.f_box_OutputOrder_v2_6_Out_7,
                [8] = self.f_box_OutputOrder_v2_6_Out_8,
                [9] = self.f_box_OutputOrder_v2_6_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_118()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_56()
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
        [6] = "660716655",
        -- StopEvent,
        [7] = "12092247",
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

function export:OnEnter_box_VisibilityModifier_47()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103496084937570541",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_72()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 5,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "660716655",
        -- StopEvent,
        [7] = "12092247",
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

function export:OnEnter_box_VisibilityModifier_24()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104563574213993240",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|357233743");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
                [2] = self.f_box_OutputOrder_v2_9_Out_2,
                [3] = self.f_box_OutputOrder_v2_9_Out_3,
            },
            count = 7,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|359316765");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 10,
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
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
                [3] = self.f_box_OutputOrder_v2_34_Out_3,
                [4] = self.f_box_OutputOrder_v2_34_Out_4,
                [5] = self.f_box_OutputOrder_v2_34_Out_5,
                [6] = self.f_box_OutputOrder_v2_34_Out_6,
                [7] = self.f_box_OutputOrder_v2_34_Out_7,
                [8] = self.f_box_OutputOrder_v2_34_Out_8,
                [9] = self.f_box_OutputOrder_v2_34_Out_9,
            },
            count = 10,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_38()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|371188948");
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

function export:OnEnter_box_WieldInventory_v5_117()
    local params;
    params = {
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_59()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#37AA7A9F",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_144()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|455142129");
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
                [0] = self.f_box_OutputOrder_v2_144_Out_0,
                [1] = self.f_box_OutputOrder_v2_144_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_91()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3BEBCE49",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_52()
    local params, l0;
    DrawTextToScreen("Comment: FastTravel & Abort Enabled", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityMiscInfoModifier_v2')-- Comment: FastTravel & Abort Enabled");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|573553497");
    l0:SetConnections({
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = true,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|599072962");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_General_Mute_Non_CIN",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|611542359");
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
                [0] = self.f_box_OutputOrder_v2_93_Out_0,
                [1] = self.f_box_OutputOrder_v2_93_Out_1,
                [2] = self.f_box_OutputOrder_v2_93_Out_2,
                [3] = self.f_box_OutputOrder_v2_93_Out_3,
                [4] = self.f_box_OutputOrder_v2_93_Out_4,
                [5] = self.f_box_OutputOrder_v2_93_Out_5,
                [6] = self.f_box_OutputOrder_v2_93_Out_6,
                [7] = self.f_box_OutputOrder_v2_93_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_71()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 32,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "660716655",
        -- StopEvent,
        [7] = "12092247",
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

function export:OnEnter_box_TeleportPawns_112()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2103661720546336121",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|651590933");
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
                [0] = self.f_box_OutputOrder_v2_138_Out_0,
                [1] = self.f_box_OutputOrder_v2_138_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_25()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104563574213993240",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|679665328");
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
                [0] = self.f_box_OutputOrder_v2_131_Out_0,
                [1] = self.f_box_OutputOrder_v2_131_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_141()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|727574744");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_General_Mute_Non_CIN",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_29()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104563521229440146",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|734940044");
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
                [0] = self.f_box_OutputOrder_v2_97_Out_0,
                [1] = self.f_box_OutputOrder_v2_97_Out_1,
                [2] = self.f_box_OutputOrder_v2_97_Out_2,
                [3] = self.f_box_OutputOrder_v2_97_Out_3,
                [4] = self.f_box_OutputOrder_v2_97_Out_4,
                [5] = self.f_box_OutputOrder_v2_97_Out_5,
                [6] = self.f_box_OutputOrder_v2_97_Out_6,
                [7] = self.f_box_OutputOrder_v2_97_Out_7,
            },
            count = 8,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NavLinkModifier_82()
    local params;
    params = {
        -- Entity,
        [0] = "2102518621673689319",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_79()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103496084937570541",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|745247554");
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
                [0] = self.f_box_OutputOrder_v2_136_Out_0,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|754085643");
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

function export:OnEnter_box_AgentGroupModifier_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|762533090");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_135_Out,
    });
    params = {
        -- PawnGroup,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_129()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_98()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#A58F5BEA",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|835622301");
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

function export:OnEnter_box_NavLinkModifier_12()
    local params;
    params = {
        -- Entity,
        [0] = "2101065775749015994",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_85()
    local params;
    params = {
        -- Group,
        [0] = self.eVehicle,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|901364500");
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
                [0] = self.f_box_OutputOrder_v2_94_Out_0,
                [1] = self.f_box_OutputOrder_v2_94_Out_1,
                [2] = self.f_box_OutputOrder_v2_94_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_100()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3BEBCE49",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_84()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetPawnVehicleInfo_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPawnVehicleInfo_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|943529558");
    l0:SetConnections({
        -- InVehicle,
        [0] = self.f_box_GetPawnVehicleInfo_127_InVehicle,
        -- NotInVehicle,
        [1] = self.f_box_GetPawnVehicleInfo_127_NotInVehicle,
        -- Out,
        [2] = self.f_box_GetPawnVehicleInfo_127_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|953990742");
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
        [8] = "UNI50_010_DEBRIEF Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1010405343");
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
                [0] = self.f_box_OutputOrder_v2_74_Out_0,
                [1] = self.f_box_OutputOrder_v2_74_Out_1,
                [2] = self.f_box_OutputOrder_v2_74_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1011786155");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1035907179");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1058425097");
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
                [0] = self.f_box_OutputOrder_v2_150_Out_0,
                [1] = self.f_box_OutputOrder_v2_150_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1145377970");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_General_Mute_Non_CIN",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_114()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGodMode,
        [1] = false,
        -- KeepHUDMode,
        [2] = false,
        -- KeepWeaponHolstered,
        [3] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1203742262");
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
                [0] = self.f_box_OutputOrder_v2_121_Out_0,
                [1] = self.f_box_OutputOrder_v2_121_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_28()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104563574213993240",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_58()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103496076479756478",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_149()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1221279480");
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
                [0] = self.f_box_OutputOrder_v2_149_Out_0,
                [1] = self.f_box_OutputOrder_v2_149_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_99()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3C860A50",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1243773184");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_OverrideEnvironment_v3_108_Enabled,
    });
    params = {
        -- fog,
        [6] = "interior.nofog",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_105()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1568CD26",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_95()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3C860A50",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_50()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103496076479756478",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_23()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104563521229440146",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_31()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101436499053528364",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_UNI50_015_GO_COUGARS/cin_uni50_015_go_cougars.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_116()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1369537941");
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

function export:OnEnter_box_SetContextualStrategy_70()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1372949537");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_70_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103952301866640768",
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_125()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1422826815");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1449761152");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_104()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1568CD26",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_134()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntityOutRange_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RemoveEntitiesOutRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntityOutRange_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1518725764");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntityOutRange_42_Out,
    });
    params = {
        -- Range,
        [0] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_49()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#37AA7A9F",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1546774938");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_62_Out,
    });
    params = {
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_ExtinguishAllFires_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ExtinguishAllFires.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishAllFires_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1548938739");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ExtinguishAllFires_43_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_65()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_111()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1583948629");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_111_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_107()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1568CD26",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_96()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#A58F5BEA",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_35()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_16()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101436499053528364",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_UNI50_015_GO_COUGARS/cin_uni50_015_go_cougars.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1675639087");
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

function export:OnEnter_box_VisibilityModifier_22()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104563521229440146",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_133()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_27()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104563521229440146",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_46()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103496084937570541",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_33()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104563574213993240",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_51()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#A58F5BEA",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_10()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_32()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3C860A50",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_69()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1860298213");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_69_Out,
    });
    params = {
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_101()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3BEBCE49",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_147()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1878831774");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_General_Mute_Non_CIN",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1891703388");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_40()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_15()
    local params;
    params = {
        -- Group,
        [0] = "2102711394072795909",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_61()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2103496084937570541",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_81()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#A58F5BEA",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1942091366");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_General_Mute_Non_CIN",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_113()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|1981354105");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_92()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3BEBCE49",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_57()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 32,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "660716655",
        -- StopEvent,
        [7] = "12092247",
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

function export:OnEnter_box_OutputOrder_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2018302509");
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
                [0] = self.f_box_OutputOrder_v2_146_Out_0,
                [1] = self.f_box_OutputOrder_v2_146_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_30()
    local params, l0;
    DrawTextToScreen("Comment: FastTravel & Abort Enabled", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ActivityMiscInfoModifier_v2')-- Comment: FastTravel & Abort Enabled");
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2037174850");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_30_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2055368814");
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
                [0] = self.f_box_OutputOrder_v2_66_Out_0,
                [1] = self.f_box_OutputOrder_v2_66_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_119()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2070719399");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_CIN_General_Mute_Non_CIN",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI50\\UNI50_010\\UNI50_010.domino|@UNI50_010_DEBRIEF|2121955147");
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
                [0] = self.f_box_OutputOrder_v2_139_Out_0,
                [1] = self.f_box_OutputOrder_v2_139_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_7_Out()
    local l0;
    l0 = self.box_StartMetaSequence_7;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPawnVehicleInfo_127_InVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_127_NotInVehicle()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle = l0:GetDataOutValue(2);
end;

function export:OnExit_box_GetPawnVehicleInfo_127_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPawnVehicleInfo.lua")];
    self.eVehicle = l0:GetDataOutValue(2);
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
