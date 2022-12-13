LUACE> -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act3/mis_360/mis_360_b40.domino
-- User graph: MIS_360_B40
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AnimalCombatPhaseListener.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/TimedSlowMotion_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v3.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3851504035.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1159342873.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/act3/MIS_360/MIS_360_B40.MIS_360_B40.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "FadeIn",
            },
            [1] = {
                name = "FadeOut",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "FadedIn",
                delayed = false,
            },
            [1] = {
                name = "FadedOut",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "HUD",
                type = "string",
            },
            [1] = {
                name = "PostFX",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua")] = {
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
                name = "KeepGFHDisabled",
                type = "bool",
            },
            [2] = {
                name = "KeepGodMode",
                type = "bool",
            },
            [3] = {
                name = "KeepHUDMode",
                type = "bool",
            },
            [4] = {
                name = "KeepWeaponHolstered",
                type = "bool",
            },
        },
        dataInCount = 5,
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
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [10] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 11,
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
    metadataTable[GetPathID("Domino/System/AnimalCombatPhaseListener.lua")] = {
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
                name = "PhaseSwitched",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "animal",
                type = "entity",
            },
            [1] = {
                name = "AutoDisable",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "phaseNumber",
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
    metadataTable[GetPathID("Domino/System/Player/TimedSlowMotion_v2.lua")] = {
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
                name = "SlowMotionEnded",
                delayed = true,
            },
            [3] = {
                name = "SlowMotionStarted",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "AimSpeedMultiplier",
                type = "float",
            },
            [1] = {
                name = "AutoDisable",
                type = "bool",
            },
            [2] = {
                name = "BlendInTime",
                type = "float",
            },
            [3] = {
                name = "BlendOutTime",
                type = "float",
            },
            [4] = {
                name = "Duration",
                type = "float",
            },
            [5] = {
                name = "PreDelay",
                type = "float",
            },
            [6] = {
                name = "TimeFactor",
                type = "float",
            },
        },
        dataInCount = 7,
        dataOut = {
        },
        dataOutCount = 0,
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
    self._name = "MIS_360_B40";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40";
    self.Mutant_Damage_received = 0;
    self.PlayerID = nil;
    self.PhaseNumber = 0;
    self.box_StartCelebration_32 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|17999593");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_StartCelebration_32_Started,
    });
    self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|18439468");
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
        [0] = self.f_box_MultipleOR_42_Out,
    });
    self.box_NarrativeFade_14 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|192445760");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_14_FadedOut,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|204327502");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|349934012");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_OnceOnly_v3_5 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|398151283");
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
                [0] = self.f_box_OnceOnly_v3_5_Out_0,
            },
            count = 2,
        },
    });
    self.box_NarrativeSceneSetup_31 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|447282578");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_31_Holstered,
    });
    self.box_GunsForHireSystemModifier_30 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|476503005");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_30_Enabled,
    });
    self.box_NarrativeSceneSetup_13 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|477305727");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_13_Holstered,
    });
    self.box_ProximityTrigger_v3_39 = cbox:CreateBox("Domino/System/ProximityTrigger_v3.lua");
    l0 = self.box_ProximityTrigger_v3_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v3_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|630387011");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v3_39_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v3_39_Enter,
    });
    self.box_HealthListener_v6_8 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|707485615");
    l0:SetConnections({
        -- Killed,
        [6] = self.f_box_HealthListener_v6_8_Killed,
    });
    self.box_Delay_v5_33 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|924122506");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_33_TimeElapsed,
    });
    self.box_AnimalCombatPhaseListener_21 = cbox:CreateBox("Domino/System/AnimalCombatPhaseListener.lua");
    l0 = self.box_AnimalCombatPhaseListener_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AnimalCombatPhaseListener_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|997689807");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_AnimalCombatPhaseListener_21_Disabled,
        -- Enabled,
        [1] = self.f_box_AnimalCombatPhaseListener_21_Enabled,
        -- PhaseSwitched,
        [2] = self.f_box_AnimalCombatPhaseListener_21_PhaseSwitched,
    });
    self.box_PostFx_v3_16 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1011768584");
    l0:SetConnections({
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1021890937");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_HealthListener_v6_41 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1076115701");
    l0:SetConnections({
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_41_Damaged,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_41_Enabled,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1366062500");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_NarrativeSceneCleanUp_V2_6 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1371990947");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_6_Out,
    });
    self.box_Music_Quest_v2_36 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1372376354");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_37 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1710536694");
    l0:SetConnections({
    });
    self.box_NarrativeFade_35 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1753209317");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_35_FadedOut,
    });
    self.box_SpawnAI_7 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1846588459");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_7_Spawned,
    });
    self.box_GunsForHireSystemModifier_18 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1883227861");
    l0:SetConnections({
    });
    self.box_NarrativeFade_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1930681798");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_12_FadedIn,
    });
    self.box_MultipleOR_3 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1951341202");
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
        [0] = self.f_box_MultipleOR_3_Out,
    });
    self.box_Delay_v5_20 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1984390509");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_20_TimeElapsed,
    });
    self.box_TimedSlowMotion_v2_29 = cbox:CreateBox("Domino/System/Player/TimedSlowMotion_v2.lua");
    l0 = self.box_TimedSlowMotion_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimedSlowMotion_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|2014040906");
    l0:SetConnections({
        -- SlowMotionEnded,
        [2] = self.f_box_TimedSlowMotion_v2_29_SlowMotionEnded,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|375317178", "375317178", "MIS_360_B40", "In", "box_ActivityAcknowledgeGate_2.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_StartCelebration_32_Started()
    local params, l0, l1;
    params = self:OnEnter_box_TimedSlowMotion_v2_29();
    l0 = self.box_StartCelebration_32;
    l1 = self.box_TimedSlowMotion_v2_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|857955733", "857955733", "MIS_360_B40", "box_StartCelebration_32.Started", "box_TimedSlowMotion_v2_29.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_42_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_42;
    l1 = self.box_OnceOnly_v3_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|302339631", "302339631", "MIS_360_B40", "box_MultipleOR_42.Out", "box_OnceOnly_v3_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjective_v2_19();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|985361477", "985361477", "MIS_360_B40", "box_OutputOrder_v2_10.Out", "box_AddActivityObjective_v2_19.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AnimalCombatPhaseListener_21();
    l0 = self.box_AnimalCombatPhaseListener_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|16408049", "16408049", "MIS_360_B40", "box_OutputOrder_v2_10.Out", "box_AnimalCombatPhaseListener_21.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_18();
    l0 = self.box_GunsForHireSystemModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|489376444", "489376444", "MIS_360_B40", "box_OutputOrder_v2_10.Out", "box_GunsForHireSystemModifier_18.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_36();
    l0 = self.box_Music_Quest_v2_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1716696088", "1716696088", "MIS_360_B40", "box_OutputOrder_v2_10.Out", "box_Music_Quest_v2_36.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_14_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_NarrativeFade_14;
    l1 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|15185894", "15185894", "MIS_360_B40", "box_NarrativeFade_14.FadedOut", "box_Delay_v5_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1058422624", "1058422624", "MIS_360_B40", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_13();
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_NarrativeSceneSetup_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1243145879", "1243145879", "MIS_360_B40", "box_ActivityAcknowledgeGate_2.Reloaded", "box_NarrativeSceneSetup_13.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_19_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_8();
    l0 = self.box_HealthListener_v6_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|551448985", "551448985", "MIS_360_B40", "box_AddActivityObjective_v2_19.Out", "box_HealthListener_v6_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_28_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_28();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|369728333", "369728333", "MIS_360_B40", "box_UseContextualActionModifier_v3_28.Enabled", "box_UseContextualActionModifier_v3_28.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_7();
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_SpawnAI_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1922387175", "1922387175", "MIS_360_B40", "box_ActivityInitialized_1.Out", "box_SpawnAI_7.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Compare_Integers_24_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_22();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|2097316738", "2097316738", "MIS_360_B40", "box_Compare_Integers_24.A_eq_B", "box_SetContextualStrategy_22.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_5_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_40();
    l0 = self.box_OnceOnly_v3_5;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1859644284", "1859644284", "MIS_360_B40", "box_OnceOnly_v3_5.Out", "box_SetContextualStrategy_40.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_31_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_35();
    l0 = self.box_NarrativeSceneSetup_31;
    l1 = self.box_NarrativeFade_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1035345066", "1035345066", "MIS_360_B40", "box_NarrativeSceneSetup_31.Holstered", "box_NarrativeFade_35.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_24();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1239561720", "1239561720", "MIS_360_B40", "box_OutputOrder_v2_26.Out", "box_Compare_Integers_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_25();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1632337138", "1632337138", "MIS_360_B40", "box_OutputOrder_v2_26.Out", "box_Compare_Integers_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_9();
    l0 = self.box_GunsForHireSystemModifier_30;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|931324425", "931324425", "MIS_360_B40", "box_GunsForHireSystemModifier_30.Enabled", "box_ActivityEnd_9.EndSoftSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndSoftSave
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_13_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_14();
    l0 = self.box_NarrativeSceneSetup_13;
    l1 = self.box_NarrativeFade_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|909489555", "909489555", "MIS_360_B40", "box_NarrativeSceneSetup_13.Holstered", "box_NarrativeFade_14.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_UseContextualActionModifier_v3_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|26941004", "26941004", "MIS_360_B40", "box_UseContextualActionModifier_v3_27.Enabled", "box_UseContextualActionModifier_v3_27.Use", clone:GetLuaBox(), l0:GetLuaBox());
    -- Use
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v3_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_41();
    l0 = self.box_ProximityTrigger_v3_39;
    l1 = self.box_HealthListener_v6_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1121593845", "1121593845", "MIS_360_B40", "box_ProximityTrigger_v3_39.Enabled", "box_HealthListener_v6_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v3_39_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v3_39;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1068622810", "1068622810", "MIS_360_B40", "box_ProximityTrigger_v3_39.Enter", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_8_Killed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_HealthListener_v6_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1629875021", "1629875021", "MIS_360_B40", "box_HealthListener_v6_8.Killed", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StartCelebration_32();
    l0 = self.box_StartCelebration_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1570881492", "1570881492", "MIS_360_B40", "box_OutputOrder_v2_38.Out", "box_StartCelebration_32.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_37();
    l0 = self.box_Music_Quest_v2_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1675982794", "1675982794", "MIS_360_B40", "box_OutputOrder_v2_38.Out", "box_Music_Quest_v2_37.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_SetContextualStrategy_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_27();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|340623186", "340623186", "MIS_360_B40", "box_SetContextualStrategy_22.Out", "box_UseContextualActionModifier_v3_27.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_33_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_30();
    l0 = self.box_Delay_v5_33;
    l1 = self.box_GunsForHireSystemModifier_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|919602843", "919602843", "MIS_360_B40", "box_Delay_v5_33.TimeElapsed", "box_GunsForHireSystemModifier_30.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_AnimalCombatPhaseListener_21_PhaseSwitched()
    local params, l0, l1;
    self:OnExit_box_AnimalCombatPhaseListener_21_PhaseSwitched();
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_AnimalCombatPhaseListener_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|846845412", "846845412", "MIS_360_B40", "box_AnimalCombatPhaseListener_21.PhaseSwitched", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_25_A_eq_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_23();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|198134284", "198134284", "MIS_360_B40", "box_Compare_Integers_25.A_eq_B", "box_SetContextualStrategy_23.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = self.box_Delay_v5_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1864353943", "1864353943", "MIS_360_B40", "box_Delay_v5_11.TimeElapsed", "box_OutputOrder_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_41_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_41;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|339942420", "339942420", "MIS_360_B40", "box_HealthListener_v6_41.Damaged", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_41_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_20();
    l0 = self.box_HealthListener_v6_41;
    l1 = self.box_Delay_v5_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|384876484", "384876484", "MIS_360_B40", "box_HealthListener_v6_41.Enabled", "box_Delay_v5_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_15;
    l1 = self.box_MultipleOR_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1916771505", "1916771505", "MIS_360_B40", "box_Delay_v5_15.TimeElapsed", "box_MultipleOR_3.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NarrativeSceneCleanUp_V2_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_NarrativeSceneCleanUp_V2_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1875820896", "1875820896", "MIS_360_B40", "box_NarrativeSceneCleanUp_V2_6.Out", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_35_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_33();
    l0 = self.box_NarrativeFade_35;
    l1 = self.box_Delay_v5_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1397385162", "1397385162", "MIS_360_B40", "box_NarrativeFade_35.FadedOut", "box_Delay_v5_33.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SpawnAI_7_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_SpawnAI_7;
    l1 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1057887061", "1057887061", "MIS_360_B40", "box_SpawnAI_7.Spawned", "box_Delay_v5_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_12();
    l0 = self.box_NarrativeFade_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|507337782", "507337782", "MIS_360_B40", "box_OutputOrder_v2_17.Out", "box_NarrativeFade_12.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_16();
    l0 = self.box_PostFx_v3_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1873092331", "1873092331", "MIS_360_B40", "box_OutputOrder_v2_17.Out", "box_PostFx_v3_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v3_39();
    l0 = self.box_ProximityTrigger_v3_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|2038142019", "2038142019", "MIS_360_B40", "box_OutputOrder_v2_17.Out", "box_ProximityTrigger_v3_39.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_12_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_6();
    l0 = self.box_NarrativeFade_12;
    l1 = self.box_NarrativeSceneCleanUp_V2_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1741435774", "1741435774", "MIS_360_B40", "box_NarrativeFade_12.FadedIn", "box_NarrativeSceneCleanUp_V2_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_3_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_3;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1452477374", "1452477374", "MIS_360_B40", "box_MultipleOR_3.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_20_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_20;
    l1 = self.box_MultipleOR_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1450721291", "1450721291", "MIS_360_B40", "box_Delay_v5_20.TimeElapsed", "box_MultipleOR_42.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_SetContextualStrategy_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_28();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|683410515", "683410515", "MIS_360_B40", "box_SetContextualStrategy_23.Out", "box_UseContextualActionModifier_v3_28.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TimedSlowMotion_v2_29_SlowMotionEnded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_31();
    l0 = self.box_TimedSlowMotion_v2_29;
    l1 = self.box_NarrativeSceneSetup_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1632278767", "1632278767", "MIS_360_B40", "box_TimedSlowMotion_v2_29.SlowMotionEnded", "box_NarrativeSceneSetup_31.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:OnEnter_box_StartCelebration_32()
    local params;
    params = {
        -- Preset,
        [0] = "9015208488001815",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|150443472");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
                [2] = self.f_box_OutputOrder_v2_10_Out_2,
                [5] = self.f_box_OutputOrder_v2_10_Out_5,
            },
            count = 6,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_14()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|304691759");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_19_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "MIS_360_B60",
            id = "984270",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|337769553");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_28_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108996050017600143",
        -- Entity,
        [2] = "2107726062717777682",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|381638589");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_24_A_eq_B,
    });
    params = {
        -- A,
        [0] = 1,
        -- B,
        [1] = self.PhaseNumber,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_31()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|469033792");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_30()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_13()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|587976075");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UseContextualActionModifier_v3_27_Enabled,
    });
    params = {
        -- ContextualAction,
        [0] = "2108996045076710027",
        -- Entity,
        [2] = "2107726062717777682",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v3_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- requiresPawnsActive,
        [2] = false,
        -- triggerId,
        [3] = "2109965797391604338",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_8()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2107726062717777682",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|708679978");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108996067010822801",
        -- Group,
        [1] = "2107726062717777682",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|800353564");
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
                [0] = self.f_box_OutputOrder_v2_38_Out_0,
                [1] = self.f_box_OutputOrder_v2_38_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|856681525");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_22_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108996067652551315",
        -- Group,
        [1] = "2107726062717777682",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_33()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_AnimalCombatPhaseListener_21()
    local params;
    params = {
        -- animal,
        [0] = "2107726062717777682",
        -- AutoDisable,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_16()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1020561012");
    l0:SetConnections({
        -- A_eq_B,
        [0] = self.f_box_Compare_Integers_25_A_eq_B,
    });
    params = {
        -- A,
        [0] = 2,
        -- B,
        [1] = self.PhaseNumber,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_41()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2107726062717777682",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_6()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = false,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = false,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_36()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "1159342873",
        -- StopEvent,
        [7] = "3851504035",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_37()
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
        [6] = "1159342873",
        -- StopEvent,
        [7] = "3851504035",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1712671110");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_35()
    local params;
    params = {
        -- PostFX,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_7()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2107726062709389066",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_18()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1884293501");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_12()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_20()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 30,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\act3\\MIS_360\\MIS_360_B40.domino|@MIS_360_B40|1994998254");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_23_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2108996068212490901",
        -- Group,
        [1] = "2107726062717777682",
    };
    return params;
end;

function export:OnEnter_box_TimedSlowMotion_v2_29()
    local params;
    params = {
        -- AimSpeedMultiplier,
        [0] = 1,
        -- AutoDisable,
        [1] = true,
        -- BlendInTime,
        [2] = 2,
        -- BlendOutTime,
        [3] = 2,
        -- Duration,
        [4] = 2,
        -- PreDelay,
        [5] = 0,
        -- TimeFactor,
        [6] = 0.25,
    };
    return params;
end;

function export:OnExit_box_AnimalCombatPhaseListener_21_PhaseSwitched()
    local l0;
    l0 = self.box_AnimalCombatPhaseListener_21;
    self.PhaseNumber = l0:GetDataOutValue(0);
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
