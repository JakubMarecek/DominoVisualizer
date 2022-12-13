LUAC F -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_010/intro_010_b70.domino
-- User graph: INTRO_010_B70
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/AI/StateListener_v2.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/GroupAddToGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Coop/Group/RemoveFromGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/EquippableWieldListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GroupSizeListener_v5.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/InventoryItemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/PawnWeaponCheck_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetLootGroup.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/Switch.lua");
        cboxRes:RegisterBox("Domino/System/TaggingModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/VehicleModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VehiclePositionLockModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1384592215.bnk]], "CSoundResource");
        cboxRes:LoadResource([[947324988.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2764514735.bnk]], "CSoundResource");
        cboxRes:LoadResource([[581544358.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4206613109.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3313211695.bnk]], "CSoundResource");
        cboxRes:LoadResource([[934451730.bnk]], "CSoundResource");
        cboxRes:LoadResource([[12506691.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1906205057.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2302596900.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2892310692.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3518427574.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2400354079.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1909596356.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4141766217.bnk]], "CSoundResource");
        cboxRes:LoadResource([[750089744.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2248944541.bnk]], "CSoundResource");
        cboxRes:LoadResource([[4232085778.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/FC5_INTRO/INTRO_010/INTRO_010_B70.INTRO_010_B70.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/CHEAT_SetEnvironmentTimeScale.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetTimeScale",
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
                name = "timeScale",
                type = "float",
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
    metadataTable[GetPathID("Domino/System/EquippableWieldListener.lua")] = {
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
                name = "Drawn",
                delayed = true,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "Holstered",
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
                name = "itemDescriptor",
                type = "genericdb",
            },
            [2] = {
                name = "itemFilter",
                type = "genericdb",
            },
            [3] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "ammo",
                type = "int",
            },
            [1] = {
                name = "wieldedItem",
                type = "genericdb",
            },
            [2] = {
                name = "wielder",
                type = "entity",
            },
        },
        dataOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/InventoryItemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Refill",
            },
            [2] = {
                name = "RefillClip",
            },
            [3] = {
                name = "Remove",
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
                name = "itemDescriptorID",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterID",
                type = "genericdb",
            },
            [2] = {
                name = "players",
                type = "group",
            },
            [3] = {
                name = "quantity",
                type = "int",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "InHands",
                delayed = false,
            },
            [1] = {
                name = "InInventory",
                delayed = false,
            },
            [2] = {
                name = "NotFound",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "categoryName",
                type = "string",
            },
            [1] = {
                name = "className",
                type = "string",
            },
            [2] = {
                name = "pawn",
                type = "entity",
            },
            [3] = {
                name = "weaponDesc",
                type = "genericdb",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")] = {
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
            [0] = {
                name = "LocalPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Player/IgnoreSignal_v2.lua")] = {
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
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "signal",
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
    metadataTable[GetPathID("Domino/System/SetLootGroup.lua")] = {
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
                name = "LootGroup",
                type = "genericdb",
            },
            [1] = {
                name = "Targets",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/SetTimeOfDay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "IncrementTimeOfDay",
            },
            [1] = {
                name = "SetTimeOfDay",
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
                name = "Hour",
                type = "int",
            },
            [1] = {
                name = "Minute",
                type = "int",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/TaggingModifier_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Enable",
            },
            [2] = {
                name = "TagEntity",
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
                name = "Tagged",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Entity",
                type = "entity",
            },
            [1] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "AreaMessage",
            },
            [1] = {
                name = "Cinematic",
            },
            [2] = {
                name = "Compass",
            },
            [3] = {
                name = "DetectionMeter",
            },
            [4] = {
                name = "EnergyGauge",
            },
            [5] = {
                name = "Health",
            },
            [6] = {
                name = "HelmetMask",
            },
            [7] = {
                name = "Hiring",
            },
            [8] = {
                name = "HudActivityStatus",
            },
            [9] = {
                name = "HudAutodriveStatus",
            },
            [10] = {
                name = "HudChallenge",
            },
            [11] = {
                name = "HudDiscovery",
            },
            [12] = {
                name = "HudGunsForHire",
            },
            [13] = {
                name = "HudHint",
            },
            [14] = {
                name = "HudLocationDiscovery",
            },
            [15] = {
                name = "HudNewCharacterDiscovery",
            },
            [16] = {
                name = "HudNotifGFH",
            },
            [17] = {
                name = "HudNotificationsQueue",
            },
            [18] = {
                name = "HudNotificationsQueueCenterMessage",
            },
            [19] = {
                name = "HudNotificationsQueueDiscovery",
            },
            [20] = {
                name = "HudNotificationsQueueGMS",
            },
            [21] = {
                name = "HudNotificationsQueuePlayerPoints",
            },
            [22] = {
                name = "HudNotificationsQueueWarning",
            },
            [23] = {
                name = "HudObjective",
            },
            [24] = {
                name = "HudObjectiveRewards",
            },
            [25] = {
                name = "HudOpenWorld",
            },
            [26] = {
                name = "HudOutpostSuccess",
            },
            [27] = {
                name = "HudPerkPoints",
            },
            [28] = {
                name = "HudSurvivalInstinct",
            },
            [29] = {
                name = "Interaction",
            },
            [30] = {
                name = "Looting",
            },
            [31] = {
                name = "MissionGiver",
            },
            [32] = {
                name = "ObjectiveProgress",
            },
            [33] = {
                name = "ObjectiveTracked",
            },
            [34] = {
                name = "PlayerBuffs",
            },
            [35] = {
                name = "RepairBar",
            },
            [36] = {
                name = "Reputation",
            },
            [37] = {
                name = "Reticle",
            },
            [38] = {
                name = "Tag",
            },
            [39] = {
                name = "TopCenterTimer",
            },
            [40] = {
                name = "Tutorial",
            },
        },
        controlInCount = 41,
        controlOut = {
        },
        controlOutCount = 0,
        dataIn = {
            [0] = {
                name = "disableUI",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/OverrideMenuAccessibility.lua")] = {
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
                name = "ActivityLogMenuEnabled",
                type = "bool",
            },
            [1] = {
                name = "AvatarCreationMenuEnabled",
                type = "bool",
            },
            [2] = {
                name = "AvatarCustomizationMenuEnabled",
                type = "bool",
            },
            [3] = {
                name = "ChallengeMenuEnabled",
                type = "bool",
            },
            [4] = {
                name = "LootMenuEnabled",
                type = "bool",
            },
            [5] = {
                name = "OnlineMenuEnabled",
                type = "bool",
            },
            [6] = {
                name = "PerksMenuEnabled",
                type = "bool",
            },
            [7] = {
                name = "ResistanceMenuEnabled",
                type = "bool",
            },
            [8] = {
                name = "SquadMenuEnabled",
                type = "bool",
            },
            [9] = {
                name = "WorldmapMenuEnabled",
                type = "bool",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/VehiclePositionLockModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Lock",
            },
            [1] = {
                name = "Unlock",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Locked",
                delayed = false,
            },
            [1] = {
                name = "Unlocked",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "VehicleEntity",
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
    self._name = "INTRO_010_B70";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70";
    self.vehicle = nil;
    self.player = nil;
    self.marshal = nil;
    self.players = nil;
    self.marshal_downed = false;
    self.loaded = false;
    self.box_HealthListener_v6_51 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_51;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_51");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|23041268");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_51_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_51_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_51_Revived,
    });
    self.box_PlayDialog_v6_128 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_128;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|28101982");
    l0:SetConnections({
    });
    self.box_Music_Quest_v2_82 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|42164906");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_114 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_114;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|114467896");
    l0:SetConnections({
    });
    self.box_SetLootGroup_123 = cbox:CreateBox("Domino/System/SetLootGroup.lua");
    l0 = self.box_SetLootGroup_123;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetLootGroup_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|117025236");
    l0:SetConnections({
    });
    self.box_ProximityRadiusListener_v3_132 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_132;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|121180180");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_132_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_132_SomeoneNear,
    });
    self.box_InventoryItemModifier_12 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|138627845");
    l0:SetConnections({
    });
    self.box_WieldInventory_v5_70 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|167978085");
    l0:SetConnections({
        -- Drawn,
        [0] = self.f_box_WieldInventory_v5_70_Drawn,
    });
    self.box_NarrativeFade_165 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|171943548");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_165_FadedIn,
    });
    self.box_Delay_v5_72 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|225905071");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_72_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_72_TimeElapsed,
    });
    self.box_PlayDialog_v6_116 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_116;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|247023409");
    l0:SetConnections({
    });
    self.box_SpawnAI_97 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_97;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|271430831");
    l0:SetConnections({
    });
    self.box_Bind_v4_89 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_89;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|272163017");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_89_Bound,
    });
    self.box_MultipleOR_40 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|287552549");
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
        [0] = self.f_box_MultipleOR_40_Out,
    });
    self.box_StateListener_v2_104 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_104;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|351519207");
    l0:SetConnections({
        -- StateStart,
        [3] = self.f_box_StateListener_v2_104_StateStart,
    });
    self.box_HealthListener_v6_71 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|358196727");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_71_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_71_Enabled,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_71_Revived,
    });
    self.box_PlayDialog_v6_124 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|371656070");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_124_Finished,
    });
    self.box_EntityStatusListener_101 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|441170584");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_101_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_101_Loaded,
    });
    self.box_Delay_v5_62 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|455288746");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_62_TimeElapsed,
    });
    self.box_EntityStatusListener_100 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_100;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|483082506");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_100_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_100_Loaded,
    });
    self.box_MultipleAND_v2_98 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_98;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_98");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|495147866");
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
        [0] = self.f_box_MultipleAND_v2_98_Out,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_136 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_136;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|559674647");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_136_Out,
    });
    self.box_EntityStatusListener_32 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|560015448");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_32_Loaded,
    });
    self.box_Delay_v5_76 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|563648366");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_76_TimeElapsed,
    });
    self.box_InventoryItemModifier_3 = cbox:CreateBox("Domino/System/InventoryItemModifier.lua");
    l0 = self.box_InventoryItemModifier_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryItemModifier_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|593681740");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_InventoryItemModifier_3_Out,
    });
    self.box_HealthListener_v6_143 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_143;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|595993919");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_143_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_143_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_143_Revived,
    });
    self.box_PlayDialog_v6_107 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_107;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|599737413");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_107_Started,
    });
    self.box_StateListener_v2_141 = cbox:CreateBox("Domino/System/AI/StateListener_v2.lua");
    l0 = self.box_StateListener_v2_141;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StateListener_v2_141");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|602608935");
    l0:SetConnections({
        -- StateStop,
        [4] = self.f_box_StateListener_v2_141_StateStop,
    });
    self.box_EquippableWieldListener_168 = cbox:CreateBox("Domino/System/EquippableWieldListener.lua");
    l0 = self.box_EquippableWieldListener_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EquippableWieldListener_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|670703494");
    l0:SetConnections({
        -- Drawn,
        [1] = self.f_box_EquippableWieldListener_168_Drawn,
    });
    self.box_SpawnAI_52 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|686599422");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_113 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_113;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|729724384");
    l0:SetConnections({
    });
    self.box_GroupSizeListener_v5_45 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|738003533");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_45_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_45_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_45_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_45_MemberRemoved,
    });
    self.box_Delay_v5_169 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_169;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|763616965");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_169_TimeElapsed,
    });
    self.box_MultipleOR_135 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_135;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|764779308");
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
        [0] = self.f_box_MultipleOR_135_Out,
    });
    self.box_OnceOnly_v3_43 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|779120897");
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
                [0] = self.f_box_OnceOnly_v3_43_Out_0,
            },
            count = 1,
        },
    });
    self.box_Delay_v5_133 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_133;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|794261667");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_133_TimeElapsed,
    });
    self.box_EntityStatusListener_50 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|814389294");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_50_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_50_Loaded,
    });
    self.box_HealthListener_v6_161 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_161;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|851304786");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_161_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_161_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_161_Revived,
    });
    self.box_SpawnAI_96 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_96;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|868532645");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_96_Out,
    });
    self.box_PlayDialog_v6_129 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_129;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|878466035");
    l0:SetConnections({
    });
    self.box_Delay_v5_121 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_121;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|927526381");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_121_TimeElapsed,
    });
    self.box_MultipleAND_v2_11 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|930743332");
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
        [0] = self.f_box_MultipleAND_v2_11_Out,
    });
    self.box_OnceOnly_v3_48 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|958296276");
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
                [0] = self.f_box_OnceOnly_v3_48_Out_0,
            },
            count = 1,
        },
    });
    self.box_MultipleOR_120 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_120;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|999011223");
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
    self.box_ActivityInitialized_22 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1034012937");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_22_Out,
    });
    self.box_MultipleOR_63 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1049334339");
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
        [0] = self.f_box_MultipleOR_63_Out,
    });
    self.box_EntityStatusListener_99 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1082587477");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_99_Loaded,
    });
    self.box_PlayDialog_v6_130 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_130;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1131681078");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_144 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1150329312");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_144_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_144_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_144_Revived,
    });
    self.box_HealthListener_v6_147 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1186634740");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_147_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_147_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_147_Revived,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1190475853");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_Switch_134 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_134;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1191442266");
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
        -- Out,
        [1] = self.f_box_Switch_134_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_134_Output_0,
                [1] = self.f_box_Switch_134_Output_1,
                [2] = self.f_box_Switch_134_Output_2,
                [3] = self.f_box_Switch_134_Output_3,
                [4] = self.f_box_Switch_134_Output_4,
            },
            count = 5,
        },
    });
    self.box_Switch_111 = cbox:CreateBox("Domino/System/Switch.lua");
    l0 = self.box_Switch_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Switch_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1191505781");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [2] = 6,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_Switch_111_Out,
        -- Output,
        [2] = {
            connections = {
                [0] = self.f_box_Switch_111_Output_0,
                [1] = self.f_box_Switch_111_Output_1,
                [2] = self.f_box_Switch_111_Output_2,
                [3] = self.f_box_Switch_111_Output_3,
                [4] = self.f_box_Switch_111_Output_4,
                [5] = self.f_box_Switch_111_Output_5,
            },
            count = 6,
        },
    });
    self.box_HealthListener_v6_157 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1204124131");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_157_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_157_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_157_Revived,
    });
    self.box_Delay_v5_106 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_106;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1215365069");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_106_TimeElapsed,
    });
    self.box_HealthListener_v6_153 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1220055762");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_153_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_153_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_153_Revived,
    });
    self.box_ProximityRadiusListener_v3_108 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_108;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1225885015");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_ProximityRadiusListener_v3_108_Disabled,
        -- SomeoneNear,
        [5] = self.f_box_ProximityRadiusListener_v3_108_SomeoneNear,
    });
    self.box_HealthListener_v6_149 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1227734347");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_149_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_149_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_149_Revived,
    });
    self.box_Delay_v5_126 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_126;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1233434572");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_126_TimeElapsed,
    });
    self.box_PlayDialog_v6_103 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1263342068");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_103_Started,
    });
    self.box_PlayDialog_v6_115 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_115;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1265231860");
    l0:SetConnections({
    });
    self.box_HealthListener_v6_160 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1268432639");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_160_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_160_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_160_Revived,
    });
    self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1297441409");
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
    self.box_HealthListener_v6_56 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1339109901");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_56_Downed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_56_Revived,
    });
    self.box_HealthListener_v6_65 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1362841893");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_65_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_65_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_65_Revived,
    });
    self.box_PlayDialog_v6_19 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1366496968");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_19_Started,
    });
    self.box_HealthListener_v6_162 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1415947753");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_162_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_162_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_162_Revived,
    });
    self.box_MultipleAND_v2_34 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1440689076");
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
        [0] = self.f_box_MultipleAND_v2_34_Out,
    });
    self.box_EntityStatusListener_9 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1449427939");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_9_Loaded,
    });
    self.box_HealthListener_v6_33 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1475801310");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_33_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_33_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_33_Revived,
    });
    self.box_SpawnAI_53 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1483996197");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_53_Spawned,
    });
    self.box_Delay_v5_166 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_166;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1506038782");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_166_TimeElapsed,
    });
    self.box_ExitZoneWarningListener_v3_94 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.ExitZoneWarningListener_v3.debug.lua");
    l0 = self.box_ExitZoneWarningListener_v3_94;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExitZoneWarningListener_v3_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1562432836");
    l0:SetConnections({
        -- FailingZoneEntered,
        [0] = self.f_box_ExitZoneWarningListener_v3_94_FailingZoneEntered,
    });
    self.box_IgnoreSignal_v2_2 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1580602966");
    l0:SetConnections({
    });
    self.box_SpawnAI_16 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1617772843");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_16_Out,
        -- Spawned,
        [2] = self.f_box_SpawnAI_16_Spawned,
    });
    self.box_PlayDialog_v6_86 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_86;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1629253240");
    l0:SetConnections({
    });
    self.box_Delay_v5_119 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_119;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1630608599");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_119_TimeElapsed,
    });
    self.box_PlayDialog_v6_127 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_127;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1655275777");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_127_Finished,
    });
    self.box_Bind_v4_84 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_84");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1728720535");
    l0:SetConnections({
    });
    self.box_OverrideMenuAccessibility_80 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1785817607");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_80_Out,
    });
    self.box_Delay_v5_105 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_105;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1791491534");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_105_TimeElapsed,
    });
    self.box_CharacterLoadedIdListener_164 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1808370229");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_164_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_164_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_164_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_164_LoadedIdReceived,
    });
    self.box_GroupSizeListener_v5_138 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_138;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1829657743");
    l0:SetConnections({
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_138_MemberAdded,
    });
    self.box_PlayDialog_v6_131 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_131;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1894558624");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_85 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_85");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1912901159");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_140 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_140;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1935705012");
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
        [0] = self.f_box_MultipleAND_v2_140_Out,
    });
    self.box_GroupSizeListener_v5_38 = cbox:CreateBox("Domino/System/GroupSizeListener_v5.lua");
    l0 = self.box_GroupSizeListener_v5_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupSizeListener_v5_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1989708896");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GroupSizeListener_v5_38_Disabled,
        -- Enabled,
        [1] = self.f_box_GroupSizeListener_v5_38_Enabled,
        -- MemberAdded,
        [2] = self.f_box_GroupSizeListener_v5_38_MemberAdded,
        -- MemberRemoved,
        [3] = self.f_box_GroupSizeListener_v5_38_MemberRemoved,
    });
    self.box_EntityStatusListener_23 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1997895179");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_EntityStatusListener_23_Enabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_23_Loaded,
    });
    self.box_PlayDialog_v6_137 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_137;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2017354423");
    l0:SetConnections({
    });
    self.box_NarrativeSceneCleanUp_167 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2035745473");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_167_Out,
    });
    self.box_SpawnAI_95 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2070697958");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_SpawnAI_95_Out,
    });
    self.box_ActivityAcknowledgeGate_28 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2079961205");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_28_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_28_Reloaded,
    });
    self.box_Delay_v5_125 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2140559228");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_125_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|187637126", "187637126", "INTRO_010_B70", "In", "box_OutputOrder_v2_29.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_170_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_94();
    l0 = self.box_ExitZoneWarningListener_v3_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|389982985", "389982985", "INTRO_010_B70", "box_Simple_Node_170.Out", "box_ExitZoneWarningListener_v3_94.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_51_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_64();
    l0 = self.box_HealthListener_v6_51;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1625861539", "1625861539", "INTRO_010_B70", "box_HealthListener_v6_51.Downed", "box_RemoveFromGroup_v2_64.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_51_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_51();
    l0 = self.box_HealthListener_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1543254951", "1543254951", "INTRO_010_B70", "box_HealthListener_v6_51.Killed", "box_HealthListener_v6_51.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_51_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_61();
    l0 = self.box_HealthListener_v6_51;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1383411298", "1383411298", "INTRO_010_B70", "box_HealthListener_v6_51.Revived", "box_GroupAddToGroup_v2_61.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_139_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_138();
    l0 = self.box_GroupSizeListener_v5_138;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|455773636", "455773636", "INTRO_010_B70", "box_OutputOrder_v2_139.Out", "box_GroupSizeListener_v5_138.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_139_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|753554463", "753554463", "INTRO_010_B70", "box_OutputOrder_v2_139.Out", "box_OutputOrder_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_109_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_103();
    l0 = self.box_PlayDialog_v6_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|309581267", "309581267", "INTRO_010_B70", "box_Compare_Boolean_109.A_is_False", "box_PlayDialog_v6_103.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_Compare_Integers_5_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1309419404", "1309419404", "INTRO_010_B70", "box_Compare_Integers_5.A_le_B", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_132_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Switch_134();
    l0 = self.box_ProximityRadiusListener_v3_132;
    l1 = self.box_Switch_134;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1084020018", "1084020018", "INTRO_010_B70", "box_ProximityRadiusListener_v3_132.Disabled", "box_Switch_134.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ProximityRadiusListener_v3_132_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_132();
    l0 = self.box_ProximityRadiusListener_v3_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|910762017", "910762017", "INTRO_010_B70", "box_ProximityRadiusListener_v3_132.SomeoneNear", "box_ProximityRadiusListener_v3_132.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1588698152", "1588698152", "INTRO_010_B70", "box_OutputOrder_v2_20.Out", "box_MultipleOR_40.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_34();
    l0 = self.box_MultipleAND_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1308832432", "1308832432", "INTRO_010_B70", "box_OutputOrder_v2_20.Out", "box_MultipleAND_v2_34.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_20_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_95();
    l0 = self.box_SpawnAI_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1429151728", "1429151728", "INTRO_010_B70", "box_OutputOrder_v2_20.Out", "box_SpawnAI_95.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IgnoreSignal_v2_2();
    l0 = self.box_IgnoreSignal_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1935988260", "1935988260", "INTRO_010_B70", "box_OutputOrder_v2_20.Out", "box_IgnoreSignal_v2_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_101();
    l0 = self.box_EntityStatusListener_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1325047457", "1325047457", "INTRO_010_B70", "box_OutputOrder_v2_20.Out", "box_EntityStatusListener_101.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_20_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_118();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|305281251", "305281251", "INTRO_010_B70", "box_OutputOrder_v2_20.Out", "box_SetBoolean_v2_118.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_54_A_lt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_45();
    l0 = self.box_GroupSizeListener_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|108123184", "108123184", "INTRO_010_B70", "box_Compare_Integers_54.A_lt_B", "box_GroupSizeListener_v5_45.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_WieldInventory_v5_70_Drawn()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryItemModifier_12();
    l0 = self.box_WieldInventory_v5_70;
    l1 = self.box_InventoryItemModifier_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|496387672", "496387672", "INTRO_010_B70", "box_WieldInventory_v5_70.Drawn", "box_InventoryItemModifier_12.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_87_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_6();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|939197057", "939197057", "INTRO_010_B70", "box_OutputOrder_v2_87.Out", "box_GetPlayerGroup_v2_6.FriendlyPlayers", clone:GetLuaBox(), l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_82();
    l0 = self.box_Music_Quest_v2_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1549367613", "1549367613", "INTRO_010_B70", "box_OutputOrder_v2_87.Out", "box_Music_Quest_v2_82.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_87_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_75();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1028230157", "1028230157", "INTRO_010_B70", "box_OutputOrder_v2_87.Out", "box_OutputOrder_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_87_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_23();
    l0 = self.box_EntityStatusListener_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|301434541", "301434541", "INTRO_010_B70", "box_OutputOrder_v2_87.Out", "box_EntityStatusListener_23.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_165_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_166();
    l0 = self.box_NarrativeFade_165;
    l1 = self.box_Delay_v5_166;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1321624949", "1321624949", "INTRO_010_B70", "box_NarrativeFade_165.FadedIn", "box_Delay_v5_166.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_72_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_76();
    l0 = self.box_Delay_v5_72;
    l1 = self.box_Delay_v5_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1568295621", "1568295621", "INTRO_010_B70", "box_Delay_v5_72.Started", "box_Delay_v5_76.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_72_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_16();
    l0 = self.box_Delay_v5_72;
    l1 = self.box_SpawnAI_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|100847707", "100847707", "INTRO_010_B70", "box_Delay_v5_72.TimeElapsed", "box_SpawnAI_16.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Bind_v4_89_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_84();
    l0 = self.box_Bind_v4_89;
    l1 = self.box_Bind_v4_84;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|996386790", "996386790", "INTRO_010_B70", "box_Bind_v4_89.Bound", "box_Bind_v4_84.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_46();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1362014724", "1362014724", "INTRO_010_B70", "box_OutputOrder_v2_27.Out", "box_OutputOrder_v2_46.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TaggingModifier_v3_1();
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1723954341", "1723954341", "INTRO_010_B70", "box_OutputOrder_v2_27.Out", "box_TaggingModifier_v3_1.TagEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- TagEntity
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_40_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ExitZoneWarningListener_v3_94();
    l0 = self.box_MultipleOR_40;
    l1 = self.box_ExitZoneWarningListener_v3_94;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1214164531", "1214164531", "INTRO_010_B70", "box_MultipleOR_40.Out", "box_ExitZoneWarningListener_v3_94.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_41_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_19();
    l0 = self.box_PlayDialog_v6_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1114882375", "1114882375", "INTRO_010_B70", "box_Compare_Boolean_41.A_is_False", "box_PlayDialog_v6_19.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_StateListener_v2_104_StateStart()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_105();
    l0 = self.box_StateListener_v2_104;
    l1 = self.box_Delay_v5_105;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1576024161", "1576024161", "INTRO_010_B70", "box_StateListener_v2_104.StateStart", "box_Delay_v5_105.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_71_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_77();
    l0 = self.box_HealthListener_v6_71;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|556475588", "556475588", "INTRO_010_B70", "box_HealthListener_v6_71.Downed", "box_SetContextualStrategy_77.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_71_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_HealthListener_v6_56();
    l0 = self.box_HealthListener_v6_71;
    l1 = self.box_HealthListener_v6_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1461000666", "1461000666", "INTRO_010_B70", "box_HealthListener_v6_71.Enabled", "box_HealthListener_v6_56.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_71_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_81();
    l0 = self.box_HealthListener_v6_71;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|103011284", "103011284", "INTRO_010_B70", "box_HealthListener_v6_71.Revived", "box_SetContextualStrategy_81.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_124_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_126();
    l0 = self.box_PlayDialog_v6_124;
    l1 = self.box_Delay_v5_126;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1986744171", "1986744171", "INTRO_010_B70", "box_PlayDialog_v6_124.Finished", "box_Delay_v5_126.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_EntityStatusListener_101_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_100();
    l0 = self.box_EntityStatusListener_101;
    l1 = self.box_EntityStatusListener_100;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1912544933", "1912544933", "INTRO_010_B70", "box_EntityStatusListener_101.Enabled", "box_EntityStatusListener_100.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_101_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_98();
    l0 = self.box_EntityStatusListener_101;
    l1 = self.box_MultipleAND_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1717665651", "1717665651", "INTRO_010_B70", "box_EntityStatusListener_101.Loaded", "box_MultipleAND_v2_98.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_62_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_62;
    l1 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1631713057", "1631713057", "INTRO_010_B70", "box_Delay_v5_62.TimeElapsed", "box_MultipleOR_63.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_100_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_99();
    l0 = self.box_EntityStatusListener_100;
    l1 = self.box_EntityStatusListener_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|521575461", "521575461", "INTRO_010_B70", "box_EntityStatusListener_100.Enabled", "box_EntityStatusListener_99.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_100_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_98();
    l0 = self.box_EntityStatusListener_100;
    l1 = self.box_MultipleAND_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2041010036", "2041010036", "INTRO_010_B70", "box_EntityStatusListener_100.Loaded", "box_MultipleAND_v2_98.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleAND_v2_98_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_MultipleAND_v2_98;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|240210504", "240210504", "INTRO_010_B70", "box_MultipleAND_v2_98.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_118_Out()
    self:OnExit_box_SetBoolean_v2_118_Out();
end;

function export:f_box_GetLocalPlayer_v2_4_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_67();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1355509718", "1355509718", "INTRO_010_B70", "box_GetLocalPlayer_v2_4.Out", "box_ActivityMiscInfoModifier_v2_67.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_136_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_91();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_136;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1722212564", "1722212564", "INTRO_010_B70", "box_CHEAT_SetEnvironmentTimeScale_136.Out", "box_OverrideEnvironment_v3_91.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_32_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleModifier_v2_60();
    l0 = self.box_EntityStatusListener_32;
    l1 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1517518043", "1517518043", "INTRO_010_B70", "box_EntityStatusListener_32.Loaded", "box_VehicleModifier_v2_60.SetAsUnusable", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetAsUnusable
    l1:Exec(6, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_76_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_52();
    l0 = self.box_Delay_v5_76;
    l1 = self.box_SpawnAI_52;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|980856010", "980856010", "INTRO_010_B70", "box_Delay_v5_76.TimeElapsed", "box_SpawnAI_52.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_30();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1983292512", "1983292512", "INTRO_010_B70", "box_OutputOrder_v2_29.Out", "box_Print_v2_30.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_88();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1497880932", "1497880932", "INTRO_010_B70", "box_OutputOrder_v2_29.Out", "box_SetTimeOfDay_88.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_29_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1311544138", "1311544138", "INTRO_010_B70", "box_OutputOrder_v2_29.Out", "box_ActivityAcknowledgeGate_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_InventoryItemModifier_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_70();
    l0 = self.box_InventoryItemModifier_3;
    l1 = self.box_WieldInventory_v5_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1974491463", "1974491463", "INTRO_010_B70", "box_InventoryItemModifier_3.Out", "box_WieldInventory_v5_70.LuaDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaDraw
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_143_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_73();
    l0 = self.box_HealthListener_v6_143;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1945601378", "1945601378", "INTRO_010_B70", "box_HealthListener_v6_143.Downed", "box_RemoveFromGroup_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_143_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_143();
    l0 = self.box_HealthListener_v6_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|892834228", "892834228", "INTRO_010_B70", "box_HealthListener_v6_143.Killed", "box_HealthListener_v6_143.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_143_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_68();
    l0 = self.box_HealthListener_v6_143;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|769539074", "769539074", "INTRO_010_B70", "box_HealthListener_v6_143.Revived", "box_GroupAddToGroup_v2_68.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_107_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_PlayDialog_v6_107;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|54269762", "54269762", "INTRO_010_B70", "box_PlayDialog_v6_107.Started", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StateListener_v2_141_StateStop()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_55();
    l0 = self.box_StateListener_v2_141;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|330251862", "330251862", "INTRO_010_B70", "box_StateListener_v2_141.StateStop", "box_SetContextualStrategy_55.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EquippableWieldListener_168_Drawn()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_165();
    l0 = self.box_EquippableWieldListener_168;
    l1 = self.box_NarrativeFade_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2121712537", "2121712537", "INTRO_010_B70", "box_EquippableWieldListener_168.Drawn", "box_NarrativeFade_165.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_45_Disabled()
    local l0, l1;
    l0 = self.box_GroupSizeListener_v5_45;
    l1 = self.box_OnceOnly_v3_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|668185024", "668185024", "INTRO_010_B70", "box_GroupSizeListener_v5_45.Disabled", "box_OnceOnly_v3_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GroupSizeListener_v5_45_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_54();
    l0 = self.box_GroupSizeListener_v5_45;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|786722005", "786722005", "INTRO_010_B70", "box_GroupSizeListener_v5_45.MemberRemoved", "box_Compare_Integers_54.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_169_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_47();
    l0 = self.box_Delay_v5_169;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1176304946", "1176304946", "INTRO_010_B70", "box_Delay_v5_169.TimeElapsed", "box_ActivityEnd_47.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_135_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_133();
    l0 = self.box_MultipleOR_135;
    l1 = self.box_Delay_v5_133;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1464037491", "1464037491", "INTRO_010_B70", "box_MultipleOR_135.Out", "box_Delay_v5_133.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_SetBoolean_v2_117_Out()
    self:OnExit_box_SetBoolean_v2_117_Out();
end;

function export:f_box_OnceOnly_v3_43_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_72();
    l0 = self.box_OnceOnly_v3_43;
    l1 = self.box_Delay_v5_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|299021936", "299021936", "INTRO_010_B70", "box_OnceOnly_v3_43.Out", "box_Delay_v5_72.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_133_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_132();
    l0 = self.box_Delay_v5_133;
    l1 = self.box_ProximityRadiusListener_v3_132;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1951398463", "1951398463", "INTRO_010_B70", "box_Delay_v5_133.TimeElapsed", "box_ProximityRadiusListener_v3_132.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_50_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_9();
    l0 = self.box_EntityStatusListener_50;
    l1 = self.box_EntityStatusListener_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|637187498", "637187498", "INTRO_010_B70", "box_EntityStatusListener_50.Enabled", "box_EntityStatusListener_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_50_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_140();
    l0 = self.box_EntityStatusListener_50;
    l1 = self.box_MultipleAND_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|141828300", "141828300", "INTRO_010_B70", "box_EntityStatusListener_50.Loaded", "box_MultipleAND_v2_140.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_HealthListener_v6_161_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_158();
    l0 = self.box_HealthListener_v6_161;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1854551942", "1854551942", "INTRO_010_B70", "box_HealthListener_v6_161.Downed", "box_RemoveFromGroup_v2_158.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_161_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_161();
    l0 = self.box_HealthListener_v6_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2032908499", "2032908499", "INTRO_010_B70", "box_HealthListener_v6_161.Killed", "box_HealthListener_v6_161.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_161_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_159();
    l0 = self.box_HealthListener_v6_161;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1221262100", "1221262100", "INTRO_010_B70", "box_HealthListener_v6_161.Revived", "box_GroupAddToGroup_v2_159.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_96_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_97();
    l0 = self.box_SpawnAI_96;
    l1 = self.box_SpawnAI_97;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1449672313", "1449672313", "INTRO_010_B70", "box_SpawnAI_96.Out", "box_SpawnAI_97.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_121_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_121;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1074002630", "1074002630", "INTRO_010_B70", "box_Delay_v5_121.TimeElapsed", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleAND_v2_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GroupSizeListener_v5_45();
    l0 = self.box_MultipleAND_v2_11;
    l1 = self.box_GroupSizeListener_v5_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|526055812", "526055812", "INTRO_010_B70", "box_MultipleAND_v2_11.Out", "box_GroupSizeListener_v5_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_71();
    l0 = self.box_HealthListener_v6_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1100487685", "1100487685", "INTRO_010_B70", "box_OutputOrder_v2_46.Out", "box_HealthListener_v6_71.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_38();
    l0 = self.box_GroupSizeListener_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1318061608", "1318061608", "INTRO_010_B70", "box_OutputOrder_v2_46.Out", "box_GroupSizeListener_v5_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_104();
    l0 = self.box_StateListener_v2_104;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2129097547", "2129097547", "INTRO_010_B70", "box_OutputOrder_v2_46.Out", "box_StateListener_v2_104.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_125();
    l0 = self.box_Delay_v5_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1880815552", "1880815552", "INTRO_010_B70", "box_OutputOrder_v2_46.Out", "box_Delay_v5_125.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_46_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StateListener_v2_141();
    l0 = self.box_StateListener_v2_141;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|274196850", "274196850", "INTRO_010_B70", "box_OutputOrder_v2_46.Out", "box_StateListener_v2_141.Combat", clone:GetLuaBox(), l0:GetLuaBox());
    -- Combat
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_46_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|6408801", "6408801", "INTRO_010_B70", "box_OutputOrder_v2_46.Out", "box_OutputOrder_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_48_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = self.box_OnceOnly_v3_48;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1546843110", "1546843110", "INTRO_010_B70", "box_OnceOnly_v3_48.Out", "box_OutputOrder_v2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_120_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_108();
    l0 = self.box_MultipleOR_120;
    l1 = self.box_ProximityRadiusListener_v3_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|661114407", "661114407", "INTRO_010_B70", "box_MultipleOR_120.Out", "box_ProximityRadiusListener_v3_108.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EquippableWieldListener_168();
    l0 = self.box_ActivityInitialized_22;
    l1 = self.box_EquippableWieldListener_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|84222408", "84222408", "INTRO_010_B70", "box_ActivityInitialized_22.Out", "box_EquippableWieldListener_168.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupAddToGroup_v2_57();
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|508237982", "508237982", "INTRO_010_B70", "box_OutputOrder_v2_37.Out", "box_GroupAddToGroup_v2_57.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_32();
    l0 = self.box_EntityStatusListener_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|754458971", "754458971", "INTRO_010_B70", "box_OutputOrder_v2_37.Out", "box_EntityStatusListener_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_63_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_63;
    l1 = self.box_OnceOnly_v3_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2112364904", "2112364904", "INTRO_010_B70", "box_MultipleOR_63.Out", "box_OnceOnly_v3_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_EntityStatusListener_99_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_98();
    l0 = self.box_EntityStatusListener_99;
    l1 = self.box_MultipleAND_v2_98;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|956799926", "956799926", "INTRO_010_B70", "box_EntityStatusListener_99.Loaded", "box_MultipleAND_v2_98.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_HealthListener_v6_144_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_122();
    l0 = self.box_HealthListener_v6_144;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1223530176", "1223530176", "INTRO_010_B70", "box_HealthListener_v6_144.Downed", "box_RemoveFromGroup_v2_122.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_144_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_144();
    l0 = self.box_HealthListener_v6_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|911151026", "911151026", "INTRO_010_B70", "box_HealthListener_v6_144.Killed", "box_HealthListener_v6_144.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_144_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_142();
    l0 = self.box_HealthListener_v6_144;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1721929385", "1721929385", "INTRO_010_B70", "box_HealthListener_v6_144.Revived", "box_GroupAddToGroup_v2_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_147_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_148();
    l0 = self.box_HealthListener_v6_147;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|44420554", "44420554", "INTRO_010_B70", "box_HealthListener_v6_147.Downed", "box_RemoveFromGroup_v2_148.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_147_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_147();
    l0 = self.box_HealthListener_v6_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2080007526", "2080007526", "INTRO_010_B70", "box_HealthListener_v6_147.Killed", "box_HealthListener_v6_147.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_147_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_163();
    l0 = self.box_HealthListener_v6_147;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|869378067", "869378067", "INTRO_010_B70", "box_HealthListener_v6_147.Revived", "box_GroupAddToGroup_v2_163.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_41();
    l0 = self.box_Delay_v5_8;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|388147997", "388147997", "INTRO_010_B70", "box_Delay_v5_8.TimeElapsed", "box_Compare_Boolean_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Switch_134_Out()
    local l0, l1;
    l0 = self.box_Switch_134;
    l1 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1905604855", "1905604855", "INTRO_010_B70", "box_Switch_134.Out", "box_MultipleOR_135.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Switch_134_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_129();
    l0 = self.box_Switch_134;
    l1 = self.box_PlayDialog_v6_129;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1080123232", "1080123232", "INTRO_010_B70", "box_Switch_134.Output", "box_PlayDialog_v6_129.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_134_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_128();
    l0 = self.box_Switch_134;
    l1 = self.box_PlayDialog_v6_128;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|26343785", "26343785", "INTRO_010_B70", "box_Switch_134.Output", "box_PlayDialog_v6_128.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_134_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_131();
    l0 = self.box_Switch_134;
    l1 = self.box_PlayDialog_v6_131;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|663370352", "663370352", "INTRO_010_B70", "box_Switch_134.Output", "box_PlayDialog_v6_131.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_134_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_130();
    l0 = self.box_Switch_134;
    l1 = self.box_PlayDialog_v6_130;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|380118833", "380118833", "INTRO_010_B70", "box_Switch_134.Output", "box_PlayDialog_v6_130.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_134_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_137();
    l0 = self.box_Switch_134;
    l1 = self.box_PlayDialog_v6_137;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|896377241", "896377241", "INTRO_010_B70", "box_Switch_134.Output", "box_PlayDialog_v6_137.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_111_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_119();
    l0 = self.box_Switch_111;
    l1 = self.box_Delay_v5_119;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1038481212", "1038481212", "INTRO_010_B70", "box_Switch_111.Out", "box_Delay_v5_119.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Switch_111_Output_0()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_113();
    l0 = self.box_Switch_111;
    l1 = self.box_PlayDialog_v6_113;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|367078123", "367078123", "INTRO_010_B70", "box_Switch_111.Output", "box_PlayDialog_v6_113.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_111_Output_1()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_114();
    l0 = self.box_Switch_111;
    l1 = self.box_PlayDialog_v6_114;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2111406655", "2111406655", "INTRO_010_B70", "box_Switch_111.Output", "box_PlayDialog_v6_114.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_111_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_86();
    l0 = self.box_Switch_111;
    l1 = self.box_PlayDialog_v6_86;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1575937303", "1575937303", "INTRO_010_B70", "box_Switch_111.Output", "box_PlayDialog_v6_86.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_111_Output_3()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_115();
    l0 = self.box_Switch_111;
    l1 = self.box_PlayDialog_v6_115;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|653887992", "653887992", "INTRO_010_B70", "box_Switch_111.Output", "box_PlayDialog_v6_115.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_111_Output_4()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_85();
    l0 = self.box_Switch_111;
    l1 = self.box_PlayDialog_v6_85;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1150351986", "1150351986", "INTRO_010_B70", "box_Switch_111.Output", "box_PlayDialog_v6_85.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Switch_111_Output_5()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_116();
    l0 = self.box_Switch_111;
    l1 = self.box_PlayDialog_v6_116;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|904453950", "904453950", "INTRO_010_B70", "box_Switch_111.Output", "box_PlayDialog_v6_116.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_157_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_154();
    l0 = self.box_HealthListener_v6_157;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1723257561", "1723257561", "INTRO_010_B70", "box_HealthListener_v6_157.Downed", "box_RemoveFromGroup_v2_154.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_157_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_157();
    l0 = self.box_HealthListener_v6_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1206454896", "1206454896", "INTRO_010_B70", "box_HealthListener_v6_157.Killed", "box_HealthListener_v6_157.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_157_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_155();
    l0 = self.box_HealthListener_v6_157;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1900329926", "1900329926", "INTRO_010_B70", "box_HealthListener_v6_157.Revived", "box_GroupAddToGroup_v2_155.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1981865215", "1981865215", "INTRO_010_B70", "box_OutputOrder_v2_35.Out", "box_MultipleOR_13.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_34();
    l0 = self.box_MultipleAND_v2_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1565151111", "1565151111", "INTRO_010_B70", "box_OutputOrder_v2_35.Out", "box_MultipleAND_v2_34.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_106_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_110();
    l0 = self.box_Delay_v5_106;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1223391297", "1223391297", "INTRO_010_B70", "box_Delay_v5_106.TimeElapsed", "box_Compare_Boolean_110.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_153_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_150();
    l0 = self.box_HealthListener_v6_153;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|999154754", "999154754", "INTRO_010_B70", "box_HealthListener_v6_153.Downed", "box_RemoveFromGroup_v2_150.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_153_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_153();
    l0 = self.box_HealthListener_v6_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1587725134", "1587725134", "INTRO_010_B70", "box_HealthListener_v6_153.Killed", "box_HealthListener_v6_153.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_153_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_151();
    l0 = self.box_HealthListener_v6_153;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1576985541", "1576985541", "INTRO_010_B70", "box_HealthListener_v6_153.Revived", "box_GroupAddToGroup_v2_151.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_108_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_112();
    l0 = self.box_ProximityRadiusListener_v3_108;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1602700133", "1602700133", "INTRO_010_B70", "box_ProximityRadiusListener_v3_108.Disabled", "box_Compare_Boolean_112.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityRadiusListener_v3_108_SomeoneNear()
    local params, l0;
    params = self:OnEnter_box_ProximityRadiusListener_v3_108();
    l0 = self.box_ProximityRadiusListener_v3_108;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|977700150", "977700150", "INTRO_010_B70", "box_ProximityRadiusListener_v3_108.SomeoneNear", "box_ProximityRadiusListener_v3_108.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_149_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_145();
    l0 = self.box_HealthListener_v6_149;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1285936147", "1285936147", "INTRO_010_B70", "box_HealthListener_v6_149.Downed", "box_RemoveFromGroup_v2_145.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_149_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_149();
    l0 = self.box_HealthListener_v6_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2122433217", "2122433217", "INTRO_010_B70", "box_HealthListener_v6_149.Killed", "box_HealthListener_v6_149.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_149_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_146();
    l0 = self.box_HealthListener_v6_149;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|377975599", "377975599", "INTRO_010_B70", "box_HealthListener_v6_149.Revived", "box_GroupAddToGroup_v2_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_126_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_127();
    l0 = self.box_Delay_v5_126;
    l1 = self.box_PlayDialog_v6_127;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|112333109", "112333109", "INTRO_010_B70", "box_Delay_v5_126.TimeElapsed", "box_PlayDialog_v6_127.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_103_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_106();
    l0 = self.box_PlayDialog_v6_103;
    l1 = self.box_Delay_v5_106;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|434501135", "434501135", "INTRO_010_B70", "box_PlayDialog_v6_103.Started", "box_Delay_v5_106.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_HealthListener_v6_160_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_156();
    l0 = self.box_HealthListener_v6_160;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1988129864", "1988129864", "INTRO_010_B70", "box_HealthListener_v6_160.Downed", "box_RemoveFromGroup_v2_156.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_160_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_160();
    l0 = self.box_HealthListener_v6_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1998860827", "1998860827", "INTRO_010_B70", "box_HealthListener_v6_160.Killed", "box_HealthListener_v6_160.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_160_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_152();
    l0 = self.box_HealthListener_v6_160;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|865929603", "865929603", "INTRO_010_B70", "box_HealthListener_v6_160.Revived", "box_GroupAddToGroup_v2_152.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_80();
    l0 = self.box_MultipleOR_13;
    l1 = self.box_OverrideMenuAccessibility_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|644267081", "644267081", "INTRO_010_B70", "box_MultipleOR_13.Out", "box_OverrideMenuAccessibility_80.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_56_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_117();
    l0 = self.box_HealthListener_v6_56;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2054569070", "2054569070", "INTRO_010_B70", "box_HealthListener_v6_56.Downed", "box_SetBoolean_v2_117.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_56_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_117();
    l0 = self.box_HealthListener_v6_56;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|103851267", "103851267", "INTRO_010_B70", "box_HealthListener_v6_56.Revived", "box_SetBoolean_v2_117.False", l0:GetLuaBox(), l1:GetLuaBox());
    -- False
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_65_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_79();
    l0 = self.box_HealthListener_v6_65;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|591582809", "591582809", "INTRO_010_B70", "box_HealthListener_v6_65.Downed", "box_RemoveFromGroup_v2_79.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_65_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_65();
    l0 = self.box_HealthListener_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1829025955", "1829025955", "INTRO_010_B70", "box_HealthListener_v6_65.Killed", "box_HealthListener_v6_65.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_65_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_66();
    l0 = self.box_HealthListener_v6_65;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1724769508", "1724769508", "INTRO_010_B70", "box_HealthListener_v6_65.Revived", "box_GroupAddToGroup_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_19_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_121();
    l0 = self.box_PlayDialog_v6_19;
    l1 = self.box_Delay_v5_121;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|121806033", "121806033", "INTRO_010_B70", "box_PlayDialog_v6_19.Started", "box_Delay_v5_121.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Boolean_110_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayDialog_v6_107();
    l0 = self.box_PlayDialog_v6_107;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|612275730", "612275730", "INTRO_010_B70", "box_Compare_Boolean_110.A_is_False", "box_PlayDialog_v6_107.PlayDialog", clone:GetLuaBox(), l0:GetLuaBox());
    -- PlayDialog
    l0:Exec(1, params);
end;

function export:f_box_HealthListener_v6_162_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_90();
    l0 = self.box_HealthListener_v6_162;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|353704195", "353704195", "INTRO_010_B70", "box_HealthListener_v6_162.Downed", "box_RemoveFromGroup_v2_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_162_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_162();
    l0 = self.box_HealthListener_v6_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1455039408", "1455039408", "INTRO_010_B70", "box_HealthListener_v6_162.Killed", "box_HealthListener_v6_162.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_162_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_44();
    l0 = self.box_HealthListener_v6_162;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1205711771", "1205711771", "INTRO_010_B70", "box_HealthListener_v6_162.Revived", "box_GroupAddToGroup_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PawnWeaponCheck_v3_31();
    l0 = self.box_MultipleAND_v2_34;
    l1 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2071158014", "2071158014", "INTRO_010_B70", "box_MultipleAND_v2_34.Out", "box_PawnWeaponCheck_v3_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_9_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_140();
    l0 = self.box_EntityStatusListener_9;
    l1 = self.box_MultipleAND_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1927657542", "1927657542", "INTRO_010_B70", "box_EntityStatusListener_9.Loaded", "box_MultipleAND_v2_140.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 2);
end;

function export:f_box_HealthListener_v6_33_Downed()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveFromGroup_v2_24();
    l0 = self.box_HealthListener_v6_33;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1503319901", "1503319901", "INTRO_010_B70", "box_HealthListener_v6_33.Downed", "box_RemoveFromGroup_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_33_Killed()
    local params, l0;
    params = self:OnEnter_box_HealthListener_v6_33();
    l0 = self.box_HealthListener_v6_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|729321472", "729321472", "INTRO_010_B70", "box_HealthListener_v6_33.Killed", "box_HealthListener_v6_33.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_33_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_GroupAddToGroup_v2_17();
    l0 = self.box_HealthListener_v6_33;
    l1 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1079644201", "1079644201", "INTRO_010_B70", "box_HealthListener_v6_33.Revived", "box_GroupAddToGroup_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_53_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_SpawnAI_53;
    l1 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|24381844", "24381844", "INTRO_010_B70", "box_SpawnAI_53.Spawned", "box_MultipleAND_v2_11.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_Delay_v5_166_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_167();
    l0 = self.box_Delay_v5_166;
    l1 = self.box_NarrativeSceneCleanUp_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1846254841", "1846254841", "INTRO_010_B70", "box_Delay_v5_166.TimeElapsed", "box_NarrativeSceneCleanUp_167.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GroupAddToGroup_v2_57_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_139();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1371619891", "1371619891", "INTRO_010_B70", "box_GroupAddToGroup_v2_57.Out", "box_OutputOrder_v2_139.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ExitZoneWarningListener_v3_94_FailingZoneEntered()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityRetry_42();
    l0 = self.box_ExitZoneWarningListener_v3_94;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|241480344", "241480344", "INTRO_010_B70", "box_ExitZoneWarningListener_v3_94.FailingZoneEntered", "box_ActivityRetry_42.Retry", l0:GetLuaBox(), l1:GetLuaBox());
    -- Retry
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_74();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|474664885", "474664885", "INTRO_010_B70", "box_OutputOrder_v2_75.Out", "box_OverrideDisabledLogicId_74.HudChallenge", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudChallenge
    l0:Exec(10, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_74();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1111583802", "1111583802", "INTRO_010_B70", "box_OutputOrder_v2_75.Out", "box_OverrideDisabledLogicId_74.HudPerkPoints", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudPerkPoints
    l0:Exec(27, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_74();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|115497768", "115497768", "INTRO_010_B70", "box_OutputOrder_v2_75.Out", "box_OverrideDisabledLogicId_74.HudLocationDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudLocationDiscovery
    l0:Exec(14, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_74();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1757339703", "1757339703", "INTRO_010_B70", "box_OutputOrder_v2_75.Out", "box_OverrideDisabledLogicId_74.HudNewCharacterDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudNewCharacterDiscovery
    l0:Exec(15, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_75_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_74();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|584072648", "584072648", "INTRO_010_B70", "box_OutputOrder_v2_75.Out", "box_OverrideDisabledLogicId_74.HudDiscovery", clone:GetLuaBox(), l0:GetLuaBox());
    -- HudDiscovery
    l0:Exec(11, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnWeaponCheck_v3_31_NotFound()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_InventoryItemModifier_3();
    l0 = self.box_InventoryItemModifier_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|3327873", "3327873", "INTRO_010_B70", "box_PawnWeaponCheck_v3_31.NotFound", "box_InventoryItemModifier_3.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_53();
    l0 = self.box_SpawnAI_16;
    l1 = self.box_SpawnAI_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1501934146", "1501934146", "INTRO_010_B70", "box_SpawnAI_16.Out", "box_SpawnAI_53.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_SpawnAI_16_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_11();
    l0 = self.box_SpawnAI_16;
    l1 = self.box_MultipleAND_v2_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|614560838", "614560838", "INTRO_010_B70", "box_SpawnAI_16.Spawned", "box_MultipleAND_v2_11.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_Delay_v5_119_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_119;
    l1 = self.box_MultipleOR_120;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1565100093", "1565100093", "INTRO_010_B70", "box_Delay_v5_119.TimeElapsed", "box_MultipleOR_120.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_127_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_127;
    l1 = self.box_MultipleOR_135;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|158351517", "158351517", "INTRO_010_B70", "box_PlayDialog_v6_127.Finished", "box_MultipleOR_135.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_63;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1473765757", "1473765757", "INTRO_010_B70", "box_OutputOrder_v2_10.Out", "box_MultipleOR_63.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GroupSizeListener_v5_38();
    l0 = self.box_GroupSizeListener_v5_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|492709884", "492709884", "INTRO_010_B70", "box_OutputOrder_v2_10.Out", "box_GroupSizeListener_v5_38.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_67_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1344983978", "1344983978", "INTRO_010_B70", "box_ActivityMiscInfoModifier_v2_67.Out", "box_OutputOrder_v2_37.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UseContextualActionModifier_v3_102();
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|302665309", "302665309", "INTRO_010_B70", "box_OutputOrder_v2_25.Out", "box_UseContextualActionModifier_v3_102.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_169();
    l0 = self.box_Delay_v5_169;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|339941265", "339941265", "INTRO_010_B70", "box_OutputOrder_v2_25.Out", "box_Delay_v5_169.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_170();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|84094375", "84094375", "INTRO_010_B70", "box_OutputOrder_v2_25.Out", "box_Simple_Node_170.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetPlayerGroup_v2_6_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_6_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_4();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|568992715", "568992715", "INTRO_010_B70", "box_GetPlayerGroup_v2_6.Out", "box_GetLocalPlayer_v2_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_60_OnSetAsIndestructible()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehiclePositionLockModifier_14();
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|607110520", "607110520", "INTRO_010_B70", "box_VehicleModifier_v2_60.OnSetAsIndestructible", "box_VehiclePositionLockModifier_14.Lock", clone:GetLuaBox(), l0:GetLuaBox());
    -- Lock
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleModifier_v2_60_OnSetAsUnusable()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VehicleModifier_v2_60();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|636544082", "636544082", "INTRO_010_B70", "box_VehicleModifier_v2_60.OnSetAsUnusable", "box_VehicleModifier_v2_60.SetAsIndestructable", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAsIndestructable
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OverrideMenuAccessibility_80_Out()
    local params, l0, l1;
    params = self:OnEnter_box_CharacterLoadedIdListener_164();
    l0 = self.box_OverrideMenuAccessibility_80;
    l1 = self.box_CharacterLoadedIdListener_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|351851655", "351851655", "INTRO_010_B70", "box_OverrideMenuAccessibility_80.Out", "box_CharacterLoadedIdListener_164.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_105_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_109();
    l0 = self.box_Delay_v5_105;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|584832325", "584832325", "INTRO_010_B70", "box_Delay_v5_105.TimeElapsed", "box_Compare_Boolean_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_164_LoadedIdReceived()
    local l0, l1;
    self:OnExit_box_CharacterLoadedIdListener_164_LoadedIdReceived();
    l0 = self.box_CharacterLoadedIdListener_164;
    l1 = self.box_ActivityInitialized_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1290116645", "1290116645", "INTRO_010_B70", "box_CharacterLoadedIdListener_164.LoadedIdReceived", "box_ActivityInitialized_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_GroupSizeListener_v5_138_MemberAdded()
    local params, l0, l1;
    params = self:OnEnter_box_SetLootGroup_123();
    l0 = self.box_GroupSizeListener_v5_138;
    l1 = self.box_SetLootGroup_123;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|607909583", "607909583", "INTRO_010_B70", "box_GroupSizeListener_v5_138.MemberAdded", "box_SetLootGroup_123.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_140_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Bind_v4_89();
    l0 = self.box_MultipleAND_v2_140;
    l1 = self.box_Bind_v4_89;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1398743355", "1398743355", "INTRO_010_B70", "box_MultipleAND_v2_140.Out", "box_Bind_v4_89.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_Compare_Boolean_112_A_is_False()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Switch_111();
    l0 = self.box_Switch_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|705761777", "705761777", "INTRO_010_B70", "box_Compare_Boolean_112.A_is_False", "box_Switch_111.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_GroupSizeListener_v5_38_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_62();
    l0 = self.box_GroupSizeListener_v5_38;
    l1 = self.box_Delay_v5_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1140725478", "1140725478", "INTRO_010_B70", "box_GroupSizeListener_v5_38.Enabled", "box_Delay_v5_62.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_GroupSizeListener_v5_38_MemberRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_5();
    l0 = self.box_GroupSizeListener_v5_38;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2099765829", "2099765829", "INTRO_010_B70", "box_GroupSizeListener_v5_38.MemberRemoved", "box_Compare_Integers_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_50();
    l0 = self.box_EntityStatusListener_23;
    l1 = self.box_EntityStatusListener_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1853116123", "1853116123", "INTRO_010_B70", "box_EntityStatusListener_23.Enabled", "box_EntityStatusListener_50.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_23_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_140();
    l0 = self.box_EntityStatusListener_23;
    l1 = self.box_MultipleAND_v2_140;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|73876041", "73876041", "INTRO_010_B70", "box_EntityStatusListener_23.Loaded", "box_MultipleAND_v2_140.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_NarrativeSceneCleanUp_167_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_87();
    l0 = self.box_NarrativeSceneCleanUp_167;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|256403019", "256403019", "INTRO_010_B70", "box_NarrativeSceneCleanUp_167.Out", "box_OutputOrder_v2_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_33();
    l0 = self.box_HealthListener_v6_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|470632131", "470632131", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_51();
    l0 = self.box_HealthListener_v6_51;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|827433213", "827433213", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_51.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_65();
    l0 = self.box_HealthListener_v6_65;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1281291450", "1281291450", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_65.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_144();
    l0 = self.box_HealthListener_v6_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2023791872", "2023791872", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_144.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_149();
    l0 = self.box_HealthListener_v6_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|506411972", "506411972", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_149.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_153();
    l0 = self.box_HealthListener_v6_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2124746064", "2124746064", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_153.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_157();
    l0 = self.box_HealthListener_v6_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2099121715", "2099121715", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_157.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_161();
    l0 = self.box_HealthListener_v6_161;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|434394814", "434394814", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_161.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_143();
    l0 = self.box_HealthListener_v6_143;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|652965522", "652965522", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_143.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_162();
    l0 = self.box_HealthListener_v6_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1607777946", "1607777946", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_162.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_160();
    l0 = self.box_HealthListener_v6_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|452212331", "452212331", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_160.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_39_Out_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_147();
    l0 = self.box_HealthListener_v6_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|507786561", "507786561", "INTRO_010_B70", "box_OutputOrder_v2_39.Out", "box_HealthListener_v6_147.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_SpawnAI_95_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_96();
    l0 = self.box_SpawnAI_95;
    l1 = self.box_SpawnAI_96;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1463686066", "1463686066", "INTRO_010_B70", "box_SpawnAI_95.Out", "box_SpawnAI_96.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_28_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_28;
    l1 = self.box_MultipleOR_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1537350240", "1537350240", "INTRO_010_B70", "box_ActivityAcknowledgeGate_28.Acknowledged", "box_MultipleOR_13.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_28_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = self.box_ActivityAcknowledgeGate_28;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|660826595", "660826595", "INTRO_010_B70", "box_ActivityAcknowledgeGate_28.Reloaded", "box_OutputOrder_v2_35.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetTimeOfDay_88_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_136();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_136;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1563023481", "1563023481", "INTRO_010_B70", "box_SetTimeOfDay_88.Out", "box_CHEAT_SetEnvironmentTimeScale_136.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_Delay_v5_125_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_124();
    l0 = self.box_Delay_v5_125;
    l1 = self.box_PlayDialog_v6_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|424296978", "424296978", "INTRO_010_B70", "box_Delay_v5_125.TimeElapsed", "box_PlayDialog_v6_124.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_170()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|@Cleanup");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_170_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_158()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1112110");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2103222362831880034",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_51()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2101452758329607136",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_128()
    local params;
    params = {
        -- Group,
        [0] = "#AC290609",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "750089744",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|36617599");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_82()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 12,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "2892310692",
        -- StopEvent,
        [7] = "2248944541",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|43785523");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_109_A_is_False,
    });
    params = {
        -- A,
        [0] = self.marshal_downed,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|72299083");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|73718183");
    l0:SetConnections({
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_5_A_le_B,
    });
    l0 = self.box_GroupSizeListener_v5_38;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|111895665");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2103013582405971632",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_114()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2764514735",
    };
    return params;
end;

function export:OnEnter_box_SetLootGroup_123()
    local params;
    params = {
        -- LootGroup,
        [0] = "9015280829166347",
        -- Targets,
        [1] = "#AC290609",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_132()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#AC290609",
        -- id2,
        [3] = self.player,
        -- nearZone,
        [4] = 25,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_12()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015251705182346",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 150,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|154875827");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
                [2] = self.f_box_OutputOrder_v2_20_Out_2,
                [3] = self.f_box_OutputOrder_v2_20_Out_3,
                [4] = self.f_box_OutputOrder_v2_20_Out_4,
                [5] = self.f_box_OutputOrder_v2_20_Out_5,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|162805930");
    l0:SetConnections({
        -- A_lt_B,
        [4] = self.f_box_Compare_Integers_54_A_lt_B,
    });
    l0 = self.box_GroupSizeListener_v5_45;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(1),
        -- B,
        [1] = 2,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|166465723");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2104645663739372597",
        -- Group,
        [1] = "#AC290609",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_70()
    local params;
    params = {
        -- itemFilterId,
        [1] = "9015221256816049",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|168669129");
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
                [0] = self.f_box_OutputOrder_v2_87_Out_0,
                [1] = self.f_box_OutputOrder_v2_87_Out_1,
                [2] = self.f_box_OutputOrder_v2_87_Out_2,
                [3] = self.f_box_OutputOrder_v2_87_Out_3,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_165()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_64()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|186949983");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2101452758329607136",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|201405706");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2101452758329607136",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|206781057");
    l0:SetConnections({
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Playgo_Part_D_Bridge",
        -- ratio,
        [9] = 1,
        -- sky,
        [11] = "FCZ_Default:Special.Playgo_Intro_Sky",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_72()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_116()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4206613109",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|263300920");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2101452727608427388",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_97()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102435124791512881",
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_89()
    local params;
    params = {
        -- BoneName,
        [0] = "VEH_ATT_Camper",
        -- EntityA,
        [1] = "2101257581451319318",
        -- EntityB,
        [2] = "2104192099583806293",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|275787258");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|294253581");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_41_A_is_False,
    });
    params = {
        -- A,
        [0] = self.marshal_downed,
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_104()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- group,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_71()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.players,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|365669649");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "INTRO_010_B80 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_124()
    local params;
    params = {
        -- Group,
        [0] = "#AC290609",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "934451730",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_150()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|403339751");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2103222447978354190",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_101()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103013582405971632",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_62()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_100()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101452489860596456",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_98()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|502170007");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_118_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|526750009");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_136()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_32()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101257581451319318",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_76()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_TaggingModifier_v3_1()
    local params, l0;
    DrawTextToScreen("Comment: tag marshal to make it more visible while outside ", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'TaggingModifier_v3')-- Comment: tag marshal to make it more visible while outside ");
    l0 = Boxes[GetPathID("Domino/System/TaggingModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TaggingModifier_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|568632017");
    l0:SetConnections({
    });
    params = {
        -- Entity,
        [0] = self.marshal,
        -- Pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|583625670");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
                [2] = self.f_box_OutputOrder_v2_29_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_155()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|583680889");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2102435124801998650",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_InventoryItemModifier_3()
    local params;
    params = {
        -- itemDescriptorID,
        [0] = "9015223510819216",
        -- players,
        [2] = "#ED455357",
        -- quantity,
        [3] = 1,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_143()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2103222447978354190",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_107()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1906205057",
    };
    return params;
end;

function export:OnEnter_box_StateListener_v2_141()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#AC290609",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_47()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|668403805");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_EquippableWieldListener_168()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- itemDescriptor,
        [1] = "9015223510819216",
        -- pawns,
        [3] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_52()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101452762588922880",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|713332533");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2101452727606330234",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|716250155");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2102435124801998650",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_113()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "947324988",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_45()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_169()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_117()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_117");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|769465805");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_117_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_133()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_50()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101257581451319318",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_161()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2103222362831880034",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|864455550");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2103222362831880034",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_96()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101452489843819228",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_129()
    local params;
    params = {
        -- Group,
        [0] = "#AC290609",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4141766217",
    };
    return params;
end;

function export:OnEnter_box_VehiclePositionLockModifier_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehiclePositionLockModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehiclePositionLockModifier_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|880317814");
    l0:SetConnections({
    });
    params = {
        -- VehicleEntity,
        [0] = "2101257581451319318",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|885233794");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2103222447978354190",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_156()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|909867912");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2101452727608427388",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_121()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_11()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|934393810");
    l0:SetConnections({
    });
    params = {
        -- ReasonId,
        [0] = {
            section = "Objectives",
            item = "LT04_010_B20_ArrestFather",
            id = "555480",
        },
        -- Reload,
        [1] = true,
        -- ShowHud,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|946250048");
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
                [0] = self.f_box_OutputOrder_v2_46_Out_0,
                [1] = self.f_box_OutputOrder_v2_46_Out_1,
                [2] = self.f_box_OutputOrder_v2_46_Out_2,
                [3] = self.f_box_OutputOrder_v2_46_Out_3,
                [4] = self.f_box_OutputOrder_v2_46_Out_4,
                [5] = self.f_box_OutputOrder_v2_46_Out_5,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|971877999");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2101452758331704290",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|975259227");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2103222447978354190",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_159()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1004903604");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2103222362831880034",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_68()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1026506601");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2103222447978354190",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1046881627");
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
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_90()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_90");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1052747686");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2101452727606330234",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_99()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102435124801998650",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_130()
    local params;
    params = {
        -- Group,
        [0] = "#AC290609",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1909596356",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_144()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2101452489860596456",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1167403509");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2101452489860596456",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_147()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2101452762601505803",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_Switch_134()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Switch_111()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_157()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2102435124801998650",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1211337287");
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

function export:OnEnter_box_Delay_v5_106()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_153()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2103222447978354190",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_108()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = "#AC290609",
        -- id2,
        [3] = self.marshal,
        -- nearZone,
        [4] = 35,
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_149()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2103222362831880034",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_126()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_103()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2400354079",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_115()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "12506691",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_160()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2101452727608427388",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_56()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1348792625");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2101452758331704290",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1360326034");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103067849854563908",
        -- Group,
        [1] = "#2E20EAD1",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_65()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2101452758331704290",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_19()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "1384592215",
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_110()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1368367875");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_110_A_is_False,
    });
    params = {
        -- A,
        [0] = self.marshal_downed,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_162()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2101452727606330234",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_34()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_9()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104192097836878675",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_33()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "2103013582405971632",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_145()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1480049445");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2103222362831880034",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_53()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2101452758312829908",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_166()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1547802545");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GroupAddToGroup_v2_57_Out,
    });
    params = {
        -- FromGroup,
        [0] = self.marshal,
        -- ToGroup,
        [1] = "#2E20EAD1",
    };
    return params;
end;

function export:OnEnter_box_ExitZoneWarningListener_v3_94()
    local params;
    params = {
        -- bShowUI,
        [0] = true,
        -- CoopFailRequiresAllPlayer,
        [1] = true,
        -- FailingZoneTrigger,
        [2] = "2104366725202992339",
        -- WarningZoneTrigger,
        [3] = "2104366675810867286",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_2()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "open_avatar_menu",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1582177770");
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
                [0] = self.f_box_OutputOrder_v2_75_Out_0,
                [1] = self.f_box_OutputOrder_v2_75_Out_1,
                [2] = self.f_box_OutputOrder_v2_75_Out_2,
                [3] = self.f_box_OutputOrder_v2_75_Out_3,
                [4] = self.f_box_OutputOrder_v2_75_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1583448945");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2101452489860596456",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_PawnWeaponCheck_v3_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/PawnWeaponCheck_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnWeaponCheck_v3_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1617030881");
    l0:SetConnections({
        -- NotFound,
        [2] = self.f_box_PawnWeaponCheck_v3_31_NotFound,
    });
    params = {
        -- className,
        [1] = "assault",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_16()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103222362823491417",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_86()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "581544358",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_119()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 15,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_127()
    local params;
    params = {
        -- Group,
        [0] = "#AC290609",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3313211695",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1661037511");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_UseContextualActionModifier_v3_102()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/ContextualAction/UseContextualActionModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UseContextualActionModifier_v3_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1683063050");
    l0:SetConnections({
    });
    params = {
        -- ContextualAction,
        [0] = "2102143711455501941",
        -- Entity,
        [1] = self.marshal,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1723072849");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_67_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_84()
    local params;
    params = {
        -- BoneName,
        [0] = "VEH_ATT_Camper",
        -- EntityA,
        [1] = "2101257581451319318",
        -- EntityB,
        [2] = "2104192097836878675",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1747467083");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1757696782");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_6_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleModifier_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/VehicleModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleModifier_v2_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1764512615");
    l0:SetConnections({
        -- OnSetAsIndestructible,
        [4] = self.f_box_VehicleModifier_v2_60_OnSetAsIndestructible,
        -- OnSetAsUnusable,
        [6] = self.f_box_VehicleModifier_v2_60_OnSetAsUnusable,
    });
    params = {
        -- targets,
        [0] = "2101257581451319318",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_80()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = false,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- LootMenuEnabled,
        [4] = false,
        -- OnlineMenuEnabled,
        [5] = false,
        -- PerksMenuEnabled,
        [6] = false,
        -- ResistanceMenuEnabled,
        [7] = false,
        -- SquadMenuEnabled,
        [8] = false,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_105()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_CharacterLoadedIdListener_164()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015218968137231",
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1816547319");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2103013582405971632",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_138()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#AC290609",
    };
    return params;
end;

function export:OnEnter_box_RemoveFromGroup_v2_148()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/RemoveFromGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveFromGroup_v2_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1848393648");
    l0:SetConnections({
    });
    params = {
        -- Entities,
        [0] = "2101452762601505803",
        -- Group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_131()
    local params;
    params = {
        -- Group,
        [0] = "#AC290609",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3518427574",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_85()
    local params;
    params = {
        -- Group,
        [0] = self.marshal,
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "4232085778",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_140()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_112()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|1963095329");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_112_A_is_False,
    });
    params = {
        -- A,
        [0] = self.marshal_downed,
    };
    return params;
end;

function export:OnEnter_box_GroupSizeListener_v5_38()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- group,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_23()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104192099583806293",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2012911662");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2102145042262011195",
        -- Group,
        [1] = "#2E20EAD1",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_137()
    local params;
    params = {
        -- Group,
        [0] = "#AC290609",
        -- RelevancyTime,
        [1] = 10,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2302596900",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_167()
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

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2055054762");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 12,
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
                [2] = self.f_box_OutputOrder_v2_39_Out_2,
                [3] = self.f_box_OutputOrder_v2_39_Out_3,
                [4] = self.f_box_OutputOrder_v2_39_Out_4,
                [5] = self.f_box_OutputOrder_v2_39_Out_5,
                [6] = self.f_box_OutputOrder_v2_39_Out_6,
                [7] = self.f_box_OutputOrder_v2_39_Out_7,
                [8] = self.f_box_OutputOrder_v2_39_Out_8,
                [9] = self.f_box_OutputOrder_v2_39_Out_9,
                [10] = self.f_box_OutputOrder_v2_39_Out_10,
                [11] = self.f_box_OutputOrder_v2_39_Out_11,
            },
            count = 12,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_95()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2103013582393388711",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2088571830");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_88_Out,
    });
    params = {
        -- Hour,
        [0] = 2,
        -- Minute,
        [1] = 10,
    };
    return params;
end;

function export:OnEnter_box_GroupAddToGroup_v2_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Coop/Group/GroupAddToGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GroupAddToGroup_v2_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_010\\INTRO_010_B70.domino|@INTRO_010_B70|2096824158");
    l0:SetConnections({
    });
    params = {
        -- FromGroup,
        [0] = "2101452762601505803",
        -- ToGroup,
        [1] = "#4AF8531C",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_125()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnExit_box_SetBoolean_v2_118_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.marshal_downed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_4_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_117_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.marshal_downed = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_6_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.players = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CharacterLoadedIdListener_164_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_164;
    self.marshal = l0:GetDataOutValue(0);
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
