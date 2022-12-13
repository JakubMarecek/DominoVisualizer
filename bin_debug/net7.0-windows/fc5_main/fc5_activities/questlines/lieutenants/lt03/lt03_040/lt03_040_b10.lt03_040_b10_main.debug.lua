LUACT� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_040/lt03_040_b10.domino
-- User graph: LT03_040_B10_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Bliss.Lib_Bliss_RevealGate.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjective_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/Bind_v4.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Coop/JoinInProgresModifier.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/DynamicLightModifier.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthListener_v6.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/IndexList_v2.lua");
        cboxRes:RegisterBox("Domino/System/IntegerArithmetics_v2.lua");
        cboxRes:RegisterBox("Domino/System/IsValueNil_v3.lua");
        cboxRes:RegisterBox("Domino/System/ListWriter_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ParticleSystem_v3.lua");
        cboxRes:RegisterBox("Domino/System/PlayDialog_v6.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/TimedSlowMotion_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetBoolean_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Angel_Spawner.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_BuildUp.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Faith_Enrage.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Faith_Selector.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Health_Listener.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Mortar.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Phase_Manager.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_PlayerUI.debug.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Sounds_and_VOs.debug.lua");
        -- External globals dependencies
        cboxRes:RegisterGlobals("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.globals.lua");
        
        -- Load resources
        cboxRes:LoadResource([[594816581.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2954205277.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3469897059.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3490069973.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2758663278.bnk]], "CSoundResource");
        cboxRes:LoadResource([[101957856.bnk]], "CSoundResource");
    end;
end;

function export:ResetLocalGlobals()
    Globals.LT03_040_B10 = nil;
    Globals.LT03_040_B10 = {
        eRealFaith = nil,
        fCurrentHealth = 100,
        eRealFaithDialogPoint = nil,
        RealFaith_2 = false,
        RealFaith_1 = false,
        RealFaith_3 = false,
        RealFaith_4 = false,
        RealFaith_5 = false,
        RealFaith_6 = false,
        RealFaith_7 = false,
        ePlayerAttacking = nil,
        iFaithProgress = 100,
        iFaithNumber = 3,
        Faith_Invisible = {
        },
        Faith_Visible = {
        },
        fAngelWaveIntervale = 15,
        bFaithHintTimer = 0.1,
        fBuildUp_Timer = 21,
        fMortarFrequency = 17,
        iNbrMortarPerAttack = 2,
        iFaithTeleportNbr = 2,
        bFaithTeleport = false,
        Faith_Circle = {
        },
        Faith_Random = {
        },
        fProjectileSpeed = 15,
        fTeleportTimer = 13.5,
        bActivateMarker = false,
        RealFaith_8 = false,
        RealFaith_9 = false,
        RealFaith_10 = false,
        eFaithTeleport_FX = "2104423650397529717",
        eLocalPlayer = nil,
        fThresholdHealth = 85,
        iAngelNbr = 0,
        RealFaith_Start = true,
        fTeleportDuration = 2,
        ePlayer1 = nil,
        ePlayer2 = nil,
        PlayersToTarget = {
        },
    };
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Bliss.Lib_Bliss_RevealGate.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Initialize",
            },
            [1] = {
                name = "Reveal_Gate",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Initialize_OUT",
                delayed = false,
            },
            [1] = {
                name = "RevealGate_OUT",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Door_Angle",
                type = "float",
            },
            [1] = {
                name = "FX_Fog_Parent",
                type = "entity",
            },
            [2] = {
                name = "Left_Door",
                type = "entity",
            },
            [3] = {
                name = "Right_Door",
                type = "entity",
            },
            [4] = {
                name = "X_Offset",
                type = "float",
            },
            [5] = {
                name = "Y_Offset",
                type = "float",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "BoneName",
                type = "string",
            },
            [1] = {
                name = "eMobileMarker",
                type = "entity",
            },
            [2] = {
                name = "eNPC",
                type = "entity",
            },
            [3] = {
                name = "fHeight",
                type = "float",
            },
        },
        dataInCount = 4,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua")] = {
        stateless = false,
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
    metadataTable[GetPathID("Domino/System/ChangeSunOrientation_v4.lua")] = {
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
                name = "Out",
                delayed = false,
            },
            [1] = {
                name = "Reseted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "AzimuthDegree",
                type = "float",
            },
            [1] = {
                name = "ElevationDegree",
                type = "float",
            },
            [2] = {
                name = "ResetAfterBeat",
                type = "bool",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/Coop/JoinInProgresModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LockSession",
            },
            [1] = {
                name = "UnlockSession",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnLockSession",
                delayed = false,
            },
            [1] = {
                name = "OnUnlockSession",
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
    metadataTable[GetPathID("Domino/System/DynamicLightModifier.lua")] = {
        stateless = true,
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
                name = "dynamicLightId",
                type = "entity",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/IndexList_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Output",
                dynamicType = 1,
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "Index",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/IsValueNil_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Animation",
            },
            [1] = {
                name = "Archetype",
            },
            [2] = {
                name = "Boolean",
            },
            [3] = {
                name = "Database",
            },
            [4] = {
                name = "Entity",
            },
            [5] = {
                name = "Float",
            },
            [6] = {
                name = "GenericDb",
            },
            [7] = {
                name = "Group",
            },
            [8] = {
                name = "Integer",
            },
            [9] = {
                name = "MissionBlock",
            },
            [10] = {
                name = "MissionBlockLayer",
            },
            [11] = {
                name = "Oasis",
            },
            [12] = {
                name = "Script",
            },
            [13] = {
                name = "Sound",
            },
            [14] = {
                name = "String",
            },
        },
        controlInCount = 15,
        controlOut = {
            [0] = {
                name = "No",
                delayed = false,
            },
            [1] = {
                name = "Yes",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "anim",
                type = "animation",
            },
            [1] = {
                name = "archetypeId",
                type = "archetype",
            },
            [2] = {
                name = "bool",
                type = "bool",
            },
            [3] = {
                name = "databaseId",
                type = "database",
            },
            [4] = {
                name = "ent",
                type = "entity",
            },
            [5] = {
                name = "float",
                type = "float",
            },
            [6] = {
                name = "genericDbId",
                type = "genericdb",
            },
            [7] = {
                name = "group",
                type = "group",
            },
            [8] = {
                name = "int",
                type = "int",
            },
            [9] = {
                name = "missionBlockId",
                type = "missionblock",
            },
            [10] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
            [11] = {
                name = "oasis",
                type = "oasis",
            },
            [12] = {
                name = "script",
                type = "boxclass",
            },
            [13] = {
                name = "sound",
                type = "Sound",
            },
            [14] = {
                name = "str",
                type = "string",
            },
        },
        dataInCount = 15,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ListWriter_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Add",
            },
            [1] = {
                name = "Remove",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Added",
                delayed = false,
            },
            [1] = {
                name = "Removed",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Data",
                type = "entity",
            },
            [1] = {
                name = "Index",
                type = "int",
            },
            [2] = {
                name = "Input",
                type = "list",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
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
                name = "useAnims",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/ParticleSystem_v3.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Clean",
            },
            [1] = {
                name = "Pause",
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
                name = "Cleaned",
                delayed = false,
            },
            [1] = {
                name = "Paused",
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
                name = "TargetEntities",
                type = "group",
            },
        },
        dataInCount = 1,
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
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "BlendInTime",
                type = "float",
            },
            [2] = {
                name = "BlendOutTime",
                type = "float",
            },
            [3] = {
                name = "Duration",
                type = "float",
            },
            [4] = {
                name = "PreDelay",
                type = "float",
            },
            [5] = {
                name = "TimeFactor",
                type = "float",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PlayerSpeedModifier_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "ApplySpeedFactor",
            },
            [1] = {
                name = "ForceWalk",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "ApplySpeedFactorOut",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "ForceWalkOut",
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
                name = "blendTime",
                type = "float",
            },
            [1] = {
                name = "factor",
                type = "float",
            },
            [2] = {
                name = "Players",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/VisionModeModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartBliss",
            },
            [1] = {
                name = "StartCustomIntoxication",
            },
            [2] = {
                name = "StartDrunk",
            },
            [3] = {
                name = "StartHigh",
            },
            [4] = {
                name = "StartScopolamine",
            },
            [5] = {
                name = "StartScopolamineHeavy",
            },
            [6] = {
                name = "StartScopolamineMedium",
            },
            [7] = {
                name = "Stop",
            },
        },
        controlInCount = 8,
        controlOut = {
            [0] = {
                name = "StartedBliss",
                delayed = false,
            },
            [1] = {
                name = "StartedCustomIntoxication",
                delayed = false,
            },
            [2] = {
                name = "StartedDrunk",
                delayed = false,
            },
            [3] = {
                name = "StartedHigh",
                delayed = false,
            },
            [4] = {
                name = "StartedScopolamine",
                delayed = false,
            },
            [5] = {
                name = "StartedScopolamineHeavy",
                delayed = false,
            },
            [6] = {
                name = "StartedScopolamineMedium",
                delayed = false,
            },
            [7] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "intoxicationAmount",
                type = "float",
            },
            [1] = {
                name = "players",
                type = "group",
            },
            [2] = {
                name = "useAsPercent",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Activate_Faith",
            },
            [1] = {
                name = "Desactivate_Faith",
            },
            [2] = {
                name = "Faith_Attack",
            },
            [3] = {
                name = "Initialize",
            },
        },
        controlInCount = 4,
        controlOut = {
            [0] = {
                name = "Clone_Killed_OUT",
                delayed = false,
            },
            [1] = {
                name = "Faith_Activated",
                delayed = true,
            },
            [2] = {
                name = "Faith_Desactivated",
                delayed = true,
            },
            [3] = {
                name = "Initialized",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "FaithPrefab",
                type = "entity",
            },
            [1] = {
                name = "isRealFaith",
                type = "bool",
            },
            [2] = {
                name = "List",
                type = "list",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Angel_Spawner.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Disable",
            },
            [1] = {
                name = "Spawn",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_BuildUp.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Enrage",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
            [2] = {
                name = "Out_Mortar",
                delayed = false,
            },
            [3] = {
                name = "Phase1_OUT",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Faith_Enrage.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
            [1] = {
                name = "Start_Enrage",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Enrage_Out",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Prefab",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Faith_Selector.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Despawn_AllClones",
            },
            [1] = {
                name = "Despawn_Faith",
            },
            [2] = {
                name = "Select",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "DespawnFaith_1",
                delayed = false,
            },
            [1] = {
                name = "DespawnFaith_10",
                delayed = false,
            },
            [2] = {
                name = "DespawnFaith_2",
                delayed = false,
            },
            [3] = {
                name = "DespawnFaith_3",
                delayed = false,
            },
            [4] = {
                name = "DespawnFaith_4",
                delayed = false,
            },
            [5] = {
                name = "DespawnFaith_5",
                delayed = false,
            },
            [6] = {
                name = "DespawnFaith_6",
                delayed = false,
            },
            [7] = {
                name = "DespawnFaith_7",
                delayed = false,
            },
            [8] = {
                name = "DespawnFaith_8",
                delayed = false,
            },
            [9] = {
                name = "DespawnFaith_9",
                delayed = false,
            },
            [10] = {
                name = "DespawnFaith_Start",
                delayed = false,
            },
            [11] = {
                name = "SpawnFaith_1",
                delayed = false,
            },
            [12] = {
                name = "SpawnFaith_10",
                delayed = false,
            },
            [13] = {
                name = "SpawnFaith_2",
                delayed = false,
            },
            [14] = {
                name = "SpawnFaith_3",
                delayed = false,
            },
            [15] = {
                name = "SpawnFaith_4",
                delayed = false,
            },
            [16] = {
                name = "SpawnFaith_5",
                delayed = false,
            },
            [17] = {
                name = "SpawnFaith_6",
                delayed = false,
            },
            [18] = {
                name = "SpawnFaith_7",
                delayed = false,
            },
            [19] = {
                name = "SpawnFaith_8",
                delayed = false,
            },
            [20] = {
                name = "SpawnFaith_9",
                delayed = false,
            },
            [21] = {
                name = "SpawnFaith_Start",
                delayed = false,
            },
        },
        controlOutCount = 22,
        dataIn = {
            [0] = {
                name = "Faith_1",
                type = "entity",
            },
            [1] = {
                name = "Faith_10",
                type = "entity",
            },
            [2] = {
                name = "Faith_2",
                type = "entity",
            },
            [3] = {
                name = "Faith_3",
                type = "entity",
            },
            [4] = {
                name = "Faith_4",
                type = "entity",
            },
            [5] = {
                name = "Faith_5",
                type = "entity",
            },
            [6] = {
                name = "Faith_6",
                type = "entity",
            },
            [7] = {
                name = "Faith_7",
                type = "entity",
            },
            [8] = {
                name = "Faith_8",
                type = "entity",
            },
            [9] = {
                name = "Faith_9",
                type = "entity",
            },
        },
        dataInCount = 10,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Health_Listener.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
            [1] = {
                name = "Reset",
            },
            [2] = {
                name = "Stop_VO",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Disabled",
                delayed = false,
            },
            [1] = {
                name = "Faith_Attacked",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Mortar.debug.lua")] = {
        stateless = false,
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
        },
        controlOutCount = 0,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Phase_Manager.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out_Buildup",
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_PlayerUI.debug.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "jump",
                type = "string",
            },
            [1] = {
                name = "short_range_melee_start",
                type = "string",
            },
            [2] = {
                name = "sprint",
                type = "string",
            },
            [3] = {
                name = "toggle_no_weapon",
                type = "string",
            },
            [4] = {
                name = "updateshooting",
                type = "string",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Sounds_and_VOs.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Clone_Killed",
            },
            [1] = {
                name = "Faith_Found",
            },
            [2] = {
                name = "Faith_Spawned",
            },
            [3] = {
                name = "Reset_VO",
            },
        },
        controlInCount = 4,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT03_040_B10_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main";
    self.eFaith = nil;
    self.Clones_Only = {
    };
    self.eRealFaithFoV = nil;
    self.fBaseHealthValue = 0;
    self.bIsEnraged = false;
    self.iMemberCount = 0;
    self.iFaithProgress = 100;
    self.eMeanPlayer = nil;
    self.eMortar = nil;
    self.bIntroDialogOver = true;
    self.bCoopActivated = false;
    self.box_NarrativeSceneCleanUp_V2_198 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_198;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_198");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|14707891");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_198_Out,
    });
    self.box_HealthListener_v6_18 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|55891871");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_18_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_18_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_18_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_18_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_18_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_18_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_18_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_18_Revived,
    });
    self.box_LT03_040_B10_Health_Listener_49 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Health_Listener.debug.lua");
    l0 = self.box_LT03_040_B10_Health_Listener_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_Health_Listener_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|63305731");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_LT03_040_B10_Health_Listener_49_Disabled,
        -- Faith_Attacked,
        [1] = self.f_box_LT03_040_B10_Health_Listener_49_Faith_Attacked,
    });
    self.box_PlayDialog_v6_149 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_149;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_149");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|71063143");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_149_Started,
    });
    self.box_LT03_040_B01_Clone_Manager_79 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_79");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|77489766");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_79_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_79_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_79_Faith_Desactivated,
    });
    self.box_LockTimeOfDay_170 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_170;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_170");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|102173560");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_170_Out,
    });
    self.box_ChangeSunOrientation_v4_187 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_187;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_187");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|118983589");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_187_Out,
    });
    self.box_ChangeSunOrientation_v4_197 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_197;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_197");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|129904609");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_197_Out,
    });
    self.box_Delay_v5_202 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_202;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_202");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|171621289");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_202_TimeElapsed,
    });
    self.box_LT03_040_B01_Clone_Manager_62 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|173343658");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_62_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_62_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_62_Faith_Desactivated,
    });
    self.box_PlayDialog_v6_148 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_148;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_148");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|180534127");
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlayDialog_v6_148_Started,
    });
    self.box_MultipleOR_81 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_81");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|202637924");
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
        [0] = self.f_box_MultipleOR_81_Out,
    });
    self.box_LT03_040_B01_Clone_Manager_70 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|213021503");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_70_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_70_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_70_Faith_Desactivated,
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|247270847");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_LT03_040_B01_Clone_Manager_110 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_110;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_110");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|266155767");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_110_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_110_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_110_Faith_Desactivated,
    });
    self.box_LT03_040_B01_Clone_Manager_57 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_57");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|270378350");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_57_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_57_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_57_Faith_Desactivated,
    });
    self.box_MultipleOR_82 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_82;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_82");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|272570672");
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
    self.box_JoinInProgressModifier_222 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_222;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_222");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|289248683");
    l0:SetConnections({
        -- OnLockSession,
        [0] = self.f_box_JoinInProgressModifier_222_OnLockSession,
    });
    self.box_LT03_040_B10_Angel_Spawner_13 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Angel_Spawner.debug.lua");
    l0 = self.box_LT03_040_B10_Angel_Spawner_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_Angel_Spawner_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|292729090");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_150 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_150;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_150");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|375928136");
    l0:SetConnections({
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_150_Enter,
    });
    self.box_Music_Quest_v2_165 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_165;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_165");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|411118323");
    l0:SetConnections({
    });
    self.box_LT03_040_B10_Sounds_and_VOs_125 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Sounds_and_VOs.debug.lua");
    l0 = self.box_LT03_040_B10_Sounds_and_VOs_125;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_Sounds_and_VOs_125");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|416570837");
    l0:SetConnections({
    });
    self.box_Bind_v4_195 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_195;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_195");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|436335989");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_195_Bound,
    });
    self.box_LT03_040_B01_Clone_Manager_61 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|488514158");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_61_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_61_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_61_Faith_Desactivated,
    });
    self.box_LT03_040_B10_PlayerUI_188 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_PlayerUI.debug.lua");
    l0 = self.box_LT03_040_B10_PlayerUI_188;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_PlayerUI_188");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|510018946");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT03_040_B10_PlayerUI_188_Out,
    });
    self.box_MultipleOR_167 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_167;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_167");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|545014203");
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
        [0] = self.f_box_MultipleOR_167_Out,
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|546481058");
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
    self.box_LT03_040_B10_Phase_Manager_56 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Phase_Manager.debug.lua");
    l0 = self.box_LT03_040_B10_Phase_Manager_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_Phase_Manager_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|568607136");
    l0:SetConnections({
        -- Out_Buildup,
        [0] = self.f_box_LT03_040_B10_Phase_Manager_56_Out_Buildup,
    });
    self.box_Delay_v5_157 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_157;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_157");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|577522082");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_157_TimeElapsed,
    });
    self.box_IndexList_v2_75 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|597154505");
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
        -- Output,
        [0] = {
            connections = {
                [1] = self.f_box_IndexList_v2_75_Output_1,
            },
            count = 5,
        },
    });
    self.box_IndexList_v2_47 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|602717362");
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
        -- Output,
        [0] = {
            connections = {
                [2] = self.f_box_IndexList_v2_47_Output_2,
            },
            count = 4,
        },
    });
    self.box_PlaySequence_v8_200 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_200;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_200");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|610670629");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Started,
        [4] = self.f_box_PlaySequence_v8_200_Started,
    });
    self.box_LT03_040_B10_Faith_Selector_69 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Faith_Selector.debug.lua");
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_Faith_Selector_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|629962448");
    l0:SetConnections({
        -- DespawnFaith_1,
        [0] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_1,
        -- DespawnFaith_10,
        [1] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_10,
        -- DespawnFaith_2,
        [2] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_2,
        -- DespawnFaith_3,
        [3] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_3,
        -- DespawnFaith_4,
        [4] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_4,
        -- DespawnFaith_5,
        [5] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_5,
        -- DespawnFaith_6,
        [6] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_6,
        -- DespawnFaith_7,
        [7] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_7,
        -- DespawnFaith_8,
        [8] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_8,
        -- DespawnFaith_9,
        [9] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_9,
        -- DespawnFaith_Start,
        [10] = self.f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_Start,
        -- SpawnFaith_1,
        [11] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_1,
        -- SpawnFaith_10,
        [12] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_10,
        -- SpawnFaith_2,
        [13] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_2,
        -- SpawnFaith_3,
        [14] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_3,
        -- SpawnFaith_4,
        [15] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_4,
        -- SpawnFaith_5,
        [16] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_5,
        -- SpawnFaith_6,
        [17] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_6,
        -- SpawnFaith_7,
        [18] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_7,
        -- SpawnFaith_8,
        [19] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_8,
        -- SpawnFaith_9,
        [20] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_9,
        -- SpawnFaith_Start,
        [21] = self.f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_Start,
    });
    self.box_LT03_040_B10_PlayerUI_73 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_PlayerUI.debug.lua");
    l0 = self.box_LT03_040_B10_PlayerUI_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_PlayerUI_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|686295258");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT03_040_B10_PlayerUI_73_Out,
    });
    self.box_VisionModeModifier_v2_26 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|722974179");
    l0:SetConnections({
        -- Stopped,
        [7] = self.f_box_VisionModeModifier_v2_26_Stopped,
    });
    self.box_GunsForHireSystemModifier_95 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_95;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_95");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|732827711");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_95_Enabled,
    });
    self.box_LT03_040_B01_Clone_Manager_66 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|766137637");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_66_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_66_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_66_Faith_Desactivated,
    });
    self.box_IndexList_v2_83 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_83");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|787846441");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_83_Output_0,
                [1] = self.f_box_IndexList_v2_83_Output_1,
            },
            count = 5,
        },
    });
    self.box_LT03_040_B10_Faith_Selector_5 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Faith_Selector.debug.lua");
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_Faith_Selector_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|829042062");
    l0:SetConnections({
        -- DespawnFaith_1,
        [0] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_1,
        -- DespawnFaith_10,
        [1] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_10,
        -- DespawnFaith_2,
        [2] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_2,
        -- DespawnFaith_3,
        [3] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_3,
        -- DespawnFaith_4,
        [4] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_4,
        -- DespawnFaith_5,
        [5] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_5,
        -- DespawnFaith_6,
        [6] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_6,
        -- DespawnFaith_7,
        [7] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_7,
        -- DespawnFaith_8,
        [8] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_8,
        -- DespawnFaith_9,
        [9] = self.f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_9,
        -- SpawnFaith_1,
        [11] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_1,
        -- SpawnFaith_10,
        [12] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_10,
        -- SpawnFaith_2,
        [13] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_2,
        -- SpawnFaith_3,
        [14] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_3,
        -- SpawnFaith_4,
        [15] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_4,
        -- SpawnFaith_5,
        [16] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_5,
        -- SpawnFaith_6,
        [17] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_6,
        -- SpawnFaith_7,
        [18] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_7,
        -- SpawnFaith_8,
        [19] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_8,
        -- SpawnFaith_9,
        [20] = self.f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_9,
    });
    self.box_RemoveEntity_v2_124 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_124;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_124");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|831625648");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_124_Out,
    });
    self.box_LT03_040_B01_Clone_Manager_101 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_101;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_101");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|849525167");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_101_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_101_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_101_Faith_Desactivated,
    });
    self.box_LT03_040_B10_BuildUp_48 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_BuildUp.debug.lua");
    l0 = self.box_LT03_040_B10_BuildUp_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_BuildUp_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|878668623");
    l0:SetConnections({
        -- Enrage,
        [0] = self.f_box_LT03_040_B10_BuildUp_48_Enrage,
        -- Out,
        [1] = self.f_box_LT03_040_B10_BuildUp_48_Out,
        -- Phase1_OUT,
        [3] = self.f_box_LT03_040_B10_BuildUp_48_Phase1_OUT,
    });
    self.box_LT03_040_B01_Clone_Manager_103 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_103;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_103");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|907947736");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_103_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_103_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_103_Faith_Desactivated,
    });
    self.box_MultipleOR_203 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_203;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_203");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|919328543");
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
        [0] = self.f_box_MultipleOR_203_Out,
    });
    self.box_Bind_v4_189 = cbox:CreateBox("Domino/System/Bind_v4.lua");
    l0 = self.box_Bind_v4_189;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Bind_v4_189");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|926342868");
    l0:SetConnections({
        -- Bound,
        [0] = self.f_box_Bind_v4_189_Bound,
    });
    self.box_EntityStatusListener_184 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_184;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_184");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|926558451");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_184_Loaded,
    });
    self.box_LockTimeOfDay_30 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|931825696");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_30_Out,
    });
    self.box_MultipleOR_99 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_99;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_99");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|939668413");
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
    self.box_Music_Quest_v2_29 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|987966458");
    l0:SetConnections({
    });
    self.box_PlayDialog_v6_158 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_158;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_158");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1035719111");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_158_Finished,
    });
    self.box_HealthListener_v6_19 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1068996665");
    l0:SetConnections({
        -- Critical,
        [0] = self.f_box_HealthListener_v6_19_Critical,
        -- Damaged,
        [1] = self.f_box_HealthListener_v6_19_Damaged,
        -- Disabled,
        [2] = self.f_box_HealthListener_v6_19_Disabled,
        -- Downed,
        [3] = self.f_box_HealthListener_v6_19_Downed,
        -- Enabled,
        [4] = self.f_box_HealthListener_v6_19_Enabled,
        -- Healed,
        [5] = self.f_box_HealthListener_v6_19_Healed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_19_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_19_Revived,
    });
    self.box_SpawnAI_147 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_147;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_147");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1145165885");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_147_Spawned,
    });
    self.box_ActivityAcknowledgeGate_23 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1148082060");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_23_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_23_Reloaded,
    });
    self.box_IndexList_v2_68 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1237554953");
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
        -- Output,
        [0] = {
            connections = {
                [2] = self.f_box_IndexList_v2_68_Output_2,
            },
            count = 4,
        },
    });
    self.box_PlayerSpeedModifier_v3_74 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1247416685");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_74_ApplySpeedFactorOut,
    });
    self.box_RemoveEntity_v2_17 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1274642207");
    l0:SetConnections({
    });
    self.box_LT03_040_B10_Faith_Enrage_12 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Faith_Enrage.debug.lua");
    l0 = self.box_LT03_040_B10_Faith_Enrage_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_Faith_Enrage_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1280172719");
    l0:SetConnections({
        -- Enrage_Out,
        [0] = self.f_box_LT03_040_B10_Faith_Enrage_12_Enrage_Out,
        -- Out,
        [1] = self.f_box_LT03_040_B10_Faith_Enrage_12_Out,
    });
    self.box_PlaySequence_v8_199 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_199;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_199");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1295705671");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 0,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_199_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_199_Skipped,
    });
    self.box_TimedSlowMotion_v2_221 = cbox:CreateBox("Domino/System/Player/TimedSlowMotion_v2.lua");
    l0 = self.box_TimedSlowMotion_v2_221;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimedSlowMotion_v2_221");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1312402467");
    l0:SetConnections({
        -- SlowMotionEnded,
        [2] = self.f_box_TimedSlowMotion_v2_221_SlowMotionEnded,
    });
    self.box_MultipleOR_225 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_225;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_225");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1372339485");
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
        [0] = self.f_box_MultipleOR_225_Out,
    });
    self.box_PostFx_v3_155 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_155;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_155");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1389170013");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_155_Disabled,
    });
    self.box_LT03_040_B01_Clone_Manager_80 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_80;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_80");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1398776274");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_80_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_80_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_80_Faith_Desactivated,
    });
    self.box_PlayerSpeedModifier_v3_156 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_156;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_156");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1401772735");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PlayerSpeedModifier_v3_156_Done,
    });
    self.box_PlayDialog_v6_159 = cbox:CreateBox("Domino/System/PlayDialog_v6.lua");
    l0 = self.box_PlayDialog_v6_159;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayDialog_v6_159");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1410053520");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlayDialog_v6_159_Finished,
        -- FinishedInterrupted,
        [1] = self.f_box_PlayDialog_v6_159_FinishedInterrupted,
        -- StartedPriorityFailed,
        [5] = self.f_box_PlayDialog_v6_159_StartedPriorityFailed,
    });
    self.box_PlayerSpeedModifier_v3_219 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_219;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_219");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1443789221");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_219_ApplySpeedFactorOut,
    });
    self.box_LT03_040_B01_Clone_Manager_112 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_112;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_112");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1471087744");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_112_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_112_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_112_Faith_Desactivated,
    });
    self.box_LT03_040_B01_Clone_Manager_2 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1485727038");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_2_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_2_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_2_Faith_Desactivated,
    });
    self.box_HealthListener_v6_214 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_214;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_214");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1525086696");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_214_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_214_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_214_Revived,
    });
    self.box_ActivityInitialized_22 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1554276256");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_22_Out,
    });
    self.box_LT03_040_B01_Clone_Manager_67 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1569917394");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_67_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_67_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_67_Faith_Desactivated,
    });
    self.box_PlayerSpeedModifier_v3_217 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_217;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_217");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1577059858");
    l0:SetConnections({
        -- Done,
        [1] = self.f_box_PlayerSpeedModifier_v3_217_Done,
    });
    self.box_IndexList_v2_72 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1581024213");
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
        -- Output,
        [0] = {
            connections = {
                [2] = self.f_box_IndexList_v2_72_Output_2,
            },
            count = 4,
        },
    });
    self.box_BindMarkerOverHead_v2_164 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.BindMarkerOverHead_v2.debug.lua");
    l0 = self.box_BindMarkerOverHead_v2_164;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BindMarkerOverHead_v2_164");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1595950381");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_BindMarkerOverHead_v2_164_Out,
    });
    self.box_LT03_040_B01_Clone_Manager_6 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1624769400");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_6_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_6_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_6_Faith_Desactivated,
    });
    self.box_NoWeaponMode_v3_220 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_220;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_220");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1641632871");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_220_OnEnter,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1647344154");
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
        [0] = self.f_box_MultipleOR_24_Out,
    });
    self.box_LockTimeOfDay_168 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_168;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_168");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1682017676");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_168_Out,
    });
    self.box_Delay_v5_153 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_153;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_153");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1692690238");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_153_TimeElapsed,
    });
    self.box_HealthListener_v6_210 = cbox:CreateBox("Domino/System/HealthListener_v6.lua");
    l0 = self.box_HealthListener_v6_210;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthListener_v6_210");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1734339149");
    l0:SetConnections({
        -- Downed,
        [3] = self.f_box_HealthListener_v6_210_Downed,
        -- Killed,
        [6] = self.f_box_HealthListener_v6_210_Killed,
        -- Revived,
        [7] = self.f_box_HealthListener_v6_210_Revived,
    });
    self.box_NarrativeFade_204 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_204;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_204");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1751358568");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_204_FadedOut,
    });
    self.box_JoinInProgressModifier_223 = cbox:CreateBox("Domino/System/Coop/JoinInProgresModifier.lua");
    l0 = self.box_JoinInProgressModifier_223;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_JoinInProgressModifier_223");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1794601999");
    l0:SetConnections({
        -- OnUnlockSession,
        [1] = self.f_box_JoinInProgressModifier_223_OnUnlockSession,
    });
    self.box_SpawnAI_144 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_144;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_144");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1798435597");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_144_Spawned,
    });
    self.box_Lib_Bliss_RevealGate_60 = cbox:CreateBox("Domino/Library/Sp/Lib_Bliss.Lib_Bliss_RevealGate.debug.lua");
    l0 = self.box_Lib_Bliss_RevealGate_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Lib_Bliss_RevealGate_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1808010854");
    l0:SetConnections({
        -- Initialize_OUT,
        [0] = self.f_box_Lib_Bliss_RevealGate_60_Initialize_OUT,
    });
    self.box_IndexList_v2_76 = cbox:CreateBox("Domino/System/IndexList_v2.lua");
    l0 = self.box_IndexList_v2_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IndexList_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1839844837");
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
        -- Output,
        [0] = {
            connections = {
                [0] = self.f_box_IndexList_v2_76_Output_0,
                [1] = self.f_box_IndexList_v2_76_Output_1,
            },
            count = 5,
        },
    });
    self.box_LT03_040_B10_Mortar_11 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B10_Mortar.debug.lua");
    l0 = self.box_LT03_040_B10_Mortar_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B10_Mortar_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1840518257");
    l0:SetConnections({
    });
    self.box_MultipleOR_77 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_77;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_77");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1855118229");
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
    self.box_NoWeaponMode_v3_160 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_160;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_160");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1867365042");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_160_OnEnter,
    });
    self.box_LT03_040_B01_Clone_Manager_102 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_102;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_102");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1875647351");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_102_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_102_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_102_Faith_Desactivated,
    });
    self.box_Delay_v5_162 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_162;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_162");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1896209624");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_162_TimeElapsed,
    });
    self.box_EntityStatusListener_185 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_185;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_185");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1912862457");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_185_Loaded,
    });
    self.box_LT03_040_B01_Clone_Manager_3 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1918071167");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_3_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_3_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_3_Faith_Desactivated,
    });
    self.box_Delay_v5_145 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_145;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_145");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1936279840");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_145_TimeElapsed,
    });
    self.box_LT03_040_B01_Clone_Manager_111 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_111;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_111");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1958051928");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_111_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_111_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_111_Faith_Desactivated,
    });
    self.box_NoWeaponMode_v3_218 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_218;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_218");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1972083968");
    l0:SetConnections({
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_218_OnLeave,
    });
    self.box_LT03_040_B01_Clone_Manager_78 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_78");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1978907264");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_78_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_78_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_78_Faith_Desactivated,
    });
    self.box_MultipleOR_224 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_224;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_224");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2013885715");
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
        [0] = self.f_box_MultipleOR_224_Out,
    });
    self.box_ActivityInitialized_182 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_182;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_182");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2014356669");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_182_Out,
    });
    self.box_CoopActivePlayers_205 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_205;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_205");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2022932261");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_205_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_205_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_205_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_205_TwoPlayers,
    });
    self.box_LT03_040_B01_Clone_Manager_64 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2044665818");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_64_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_64_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_64_Faith_Desactivated,
    });
    self.box_NarrativeSceneCleanUp_V2_186 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_186;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_186");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2081445262");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_186_Out,
    });
    self.box_LT03_040_B01_Clone_Manager_4 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2114834767");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_4_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_4_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_4_Faith_Desactivated,
    });
    self.box_RemoveEntity_v2_20 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2127961909");
    l0:SetConnections({
    });
    self.box_LT03_040_B01_Clone_Manager_55 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_040/LT03_040_B10.LT03_040_B01_Clone_Manager.debug.lua");
    l0 = self.box_LT03_040_B01_Clone_Manager_55;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT03_040_B01_Clone_Manager_55");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2141735374");
    l0:SetConnections({
        -- Clone_Killed_OUT,
        [0] = self.f_box_LT03_040_B01_Clone_Manager_55_Clone_Killed_OUT,
        -- Faith_Activated,
        [1] = self.f_box_LT03_040_B01_Clone_Manager_55_Faith_Activated,
        -- Faith_Desactivated,
        [2] = self.f_box_LT03_040_B01_Clone_Manager_55_Faith_Desactivated,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1035326567", "1035326567", "LT03_040_B10_Main", "In", "box_ActivityAcknowledgeGate_23.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_53();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1405147245", "1405147245", "LT03_040_B10_Main", "OnLeaveZone", "box_ActivityRetry_53.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_45_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_80();
    l0 = self.box_LT03_040_B01_Clone_Manager_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|980357803", "980357803", "LT03_040_B10_Main", "box_Simple_Node_45.Out", "box_LT03_040_B01_Clone_Manager_80.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_118_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_112();
    l0 = self.box_LT03_040_B01_Clone_Manager_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|340241849", "340241849", "LT03_040_B10_Main", "box_Simple_Node_118.Out", "box_LT03_040_B01_Clone_Manager_112.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_106_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_103();
    l0 = self.box_LT03_040_B01_Clone_Manager_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|185572337", "185572337", "LT03_040_B10_Main", "box_Simple_Node_106.Out", "box_LT03_040_B01_Clone_Manager_103.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_84_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_62();
    l0 = self.box_LT03_040_B01_Clone_Manager_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|676941336", "676941336", "LT03_040_B10_Main", "box_Simple_Node_84.Out", "box_LT03_040_B01_Clone_Manager_62.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_10_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_79();
    l0 = self.box_LT03_040_B01_Clone_Manager_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1129454946", "1129454946", "LT03_040_B10_Main", "box_Simple_Node_10.Out", "box_LT03_040_B01_Clone_Manager_79.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_85_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_66();
    l0 = self.box_LT03_040_B01_Clone_Manager_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1369854802", "1369854802", "LT03_040_B10_Main", "box_Simple_Node_85.Out", "box_LT03_040_B01_Clone_Manager_66.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_31_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_78();
    l0 = self.box_LT03_040_B01_Clone_Manager_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1296413004", "1296413004", "LT03_040_B10_Main", "box_Simple_Node_31.Out", "box_LT03_040_B01_Clone_Manager_78.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_86_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_64();
    l0 = self.box_LT03_040_B01_Clone_Manager_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1130592935", "1130592935", "LT03_040_B10_Main", "box_Simple_Node_86.Out", "box_LT03_040_B01_Clone_Manager_64.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_36_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_2();
    l0 = self.box_LT03_040_B01_Clone_Manager_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|339977614", "339977614", "LT03_040_B10_Main", "box_Simple_Node_36.Out", "box_LT03_040_B01_Clone_Manager_2.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_87_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_57();
    l0 = self.box_LT03_040_B01_Clone_Manager_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1814635188", "1814635188", "LT03_040_B10_Main", "box_Simple_Node_87.Out", "box_LT03_040_B01_Clone_Manager_57.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_37_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_3();
    l0 = self.box_LT03_040_B01_Clone_Manager_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|174720074", "174720074", "LT03_040_B10_Main", "box_Simple_Node_37.Out", "box_LT03_040_B01_Clone_Manager_3.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_88_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_55();
    l0 = self.box_LT03_040_B01_Clone_Manager_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|521425761", "521425761", "LT03_040_B10_Main", "box_Simple_Node_88.Out", "box_LT03_040_B01_Clone_Manager_55.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_41_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_4();
    l0 = self.box_LT03_040_B01_Clone_Manager_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|741261888", "741261888", "LT03_040_B10_Main", "box_Simple_Node_41.Out", "box_LT03_040_B01_Clone_Manager_4.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_89_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_67();
    l0 = self.box_LT03_040_B01_Clone_Manager_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|308243007", "308243007", "LT03_040_B10_Main", "box_Simple_Node_89.Out", "box_LT03_040_B01_Clone_Manager_67.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_6();
    l0 = self.box_LT03_040_B01_Clone_Manager_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1845083055", "1845083055", "LT03_040_B10_Main", "box_Simple_Node_43.Out", "box_LT03_040_B01_Clone_Manager_6.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_90_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_61();
    l0 = self.box_LT03_040_B01_Clone_Manager_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1687147119", "1687147119", "LT03_040_B10_Main", "box_Simple_Node_90.Out", "box_LT03_040_B01_Clone_Manager_61.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_113_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_110();
    l0 = self.box_LT03_040_B01_Clone_Manager_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1824035715", "1824035715", "LT03_040_B10_Main", "box_Simple_Node_113.Out", "box_LT03_040_B01_Clone_Manager_110.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_104_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_101();
    l0 = self.box_LT03_040_B01_Clone_Manager_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|56303988", "56303988", "LT03_040_B10_Main", "box_Simple_Node_104.Out", "box_LT03_040_B01_Clone_Manager_101.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_115_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_111();
    l0 = self.box_LT03_040_B01_Clone_Manager_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1926483536", "1926483536", "LT03_040_B10_Main", "box_Simple_Node_115.Out", "box_LT03_040_B01_Clone_Manager_111.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_105_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_102();
    l0 = self.box_LT03_040_B01_Clone_Manager_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|628404330", "628404330", "LT03_040_B10_Main", "box_Simple_Node_105.Out", "box_LT03_040_B01_Clone_Manager_102.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_175_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_70();
    l0 = self.box_LT03_040_B01_Clone_Manager_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1354767245", "1354767245", "LT03_040_B10_Main", "box_Simple_Node_175.Out", "box_LT03_040_B01_Clone_Manager_70.Activate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate_Faith
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_126_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_LT03_040_B10_Sounds_and_VOs_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|869416227", "869416227", "LT03_040_B10_Main", "box_Simple_Node_126.Out", "box_LT03_040_B10_Sounds_and_VOs_125.Clone_Killed", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clone_Killed
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_179_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_150();
    l0 = self.box_ProximityTrigger_v2_150;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1788687945", "1788687945", "LT03_040_B10_Main", "box_Simple_Node_179.Out", "box_ProximityTrigger_v2_150.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_178_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_139();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1857860203", "1857860203", "LT03_040_B10_Main", "box_Simple_Node_178.Out", "box_ParticleSystem_v3_139.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_46_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_80();
    l0 = self.box_LT03_040_B01_Clone_Manager_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1610293437", "1610293437", "LT03_040_B10_Main", "box_Simple_Node_46.Out", "box_LT03_040_B01_Clone_Manager_80.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_119_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_112();
    l0 = self.box_LT03_040_B01_Clone_Manager_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|485640457", "485640457", "LT03_040_B10_Main", "box_Simple_Node_119.Out", "box_LT03_040_B01_Clone_Manager_112.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_109_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_103();
    l0 = self.box_LT03_040_B01_Clone_Manager_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2070325050", "2070325050", "LT03_040_B10_Main", "box_Simple_Node_109.Out", "box_LT03_040_B01_Clone_Manager_103.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_91_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_62();
    l0 = self.box_LT03_040_B01_Clone_Manager_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|316243468", "316243468", "LT03_040_B10_Main", "box_Simple_Node_91.Out", "box_LT03_040_B01_Clone_Manager_62.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_79();
    l0 = self.box_LT03_040_B01_Clone_Manager_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|487908716", "487908716", "LT03_040_B10_Main", "box_Simple_Node_16.Out", "box_LT03_040_B01_Clone_Manager_79.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_92_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_66();
    l0 = self.box_LT03_040_B01_Clone_Manager_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|358116614", "358116614", "LT03_040_B10_Main", "box_Simple_Node_92.Out", "box_LT03_040_B01_Clone_Manager_66.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_33_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_78();
    l0 = self.box_LT03_040_B01_Clone_Manager_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1746622581", "1746622581", "LT03_040_B10_Main", "box_Simple_Node_33.Out", "box_LT03_040_B01_Clone_Manager_78.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_93_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_64();
    l0 = self.box_LT03_040_B01_Clone_Manager_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1502901399", "1502901399", "LT03_040_B10_Main", "box_Simple_Node_93.Out", "box_LT03_040_B01_Clone_Manager_64.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_2();
    l0 = self.box_LT03_040_B01_Clone_Manager_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1583600085", "1583600085", "LT03_040_B10_Main", "box_Simple_Node_38.Out", "box_LT03_040_B01_Clone_Manager_2.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_94_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_57();
    l0 = self.box_LT03_040_B01_Clone_Manager_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|219640826", "219640826", "LT03_040_B10_Main", "box_Simple_Node_94.Out", "box_LT03_040_B01_Clone_Manager_57.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_3();
    l0 = self.box_LT03_040_B01_Clone_Manager_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1302335735", "1302335735", "LT03_040_B10_Main", "box_Simple_Node_40.Out", "box_LT03_040_B01_Clone_Manager_3.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_96_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_55();
    l0 = self.box_LT03_040_B01_Clone_Manager_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|968609304", "968609304", "LT03_040_B10_Main", "box_Simple_Node_96.Out", "box_LT03_040_B01_Clone_Manager_55.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_42_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_4();
    l0 = self.box_LT03_040_B01_Clone_Manager_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1175470543", "1175470543", "LT03_040_B10_Main", "box_Simple_Node_42.Out", "box_LT03_040_B01_Clone_Manager_4.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_97_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_67();
    l0 = self.box_LT03_040_B01_Clone_Manager_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|942698304", "942698304", "LT03_040_B10_Main", "box_Simple_Node_97.Out", "box_LT03_040_B01_Clone_Manager_67.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_44_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_6();
    l0 = self.box_LT03_040_B01_Clone_Manager_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1238941915", "1238941915", "LT03_040_B10_Main", "box_Simple_Node_44.Out", "box_LT03_040_B01_Clone_Manager_6.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_98_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_61();
    l0 = self.box_LT03_040_B01_Clone_Manager_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1745605288", "1745605288", "LT03_040_B10_Main", "box_Simple_Node_98.Out", "box_LT03_040_B01_Clone_Manager_61.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_114_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_110();
    l0 = self.box_LT03_040_B01_Clone_Manager_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|306655815", "306655815", "LT03_040_B10_Main", "box_Simple_Node_114.Out", "box_LT03_040_B01_Clone_Manager_110.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_107_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_101();
    l0 = self.box_LT03_040_B01_Clone_Manager_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1741551474", "1741551474", "LT03_040_B10_Main", "box_Simple_Node_107.Out", "box_LT03_040_B01_Clone_Manager_101.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_116_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_111();
    l0 = self.box_LT03_040_B01_Clone_Manager_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|446625232", "446625232", "LT03_040_B10_Main", "box_Simple_Node_116.Out", "box_LT03_040_B01_Clone_Manager_111.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_108_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_102();
    l0 = self.box_LT03_040_B01_Clone_Manager_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|507877857", "507877857", "LT03_040_B10_Main", "box_Simple_Node_108.Out", "box_LT03_040_B01_Clone_Manager_102.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_177_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_70();
    l0 = self.box_LT03_040_B01_Clone_Manager_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1282295323", "1282295323", "LT03_040_B10_Main", "box_Simple_Node_177.Out", "box_LT03_040_B01_Clone_Manager_70.Desactivate_Faith", clone:GetLuaBox(), l0:GetLuaBox());
    -- Desactivate_Faith
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_9_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_101();
    l0 = self.box_LT03_040_B01_Clone_Manager_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1993385250", "1993385250", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_101.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_66();
    l0 = self.box_LT03_040_B01_Clone_Manager_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|708637446", "708637446", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_66.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_80();
    l0 = self.box_LT03_040_B01_Clone_Manager_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|86909506", "86909506", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_80.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_55();
    l0 = self.box_LT03_040_B01_Clone_Manager_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1550140845", "1550140845", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_55.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_79();
    l0 = self.box_LT03_040_B01_Clone_Manager_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1892228701", "1892228701", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_79.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_112();
    l0 = self.box_LT03_040_B01_Clone_Manager_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1923187816", "1923187816", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_112.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_3();
    l0 = self.box_LT03_040_B01_Clone_Manager_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1565442294", "1565442294", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_3.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_61();
    l0 = self.box_LT03_040_B01_Clone_Manager_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|333581990", "333581990", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_61.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_62();
    l0 = self.box_LT03_040_B01_Clone_Manager_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|399420063", "399420063", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_62.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    l0 = self.box_LT03_040_B10_Angel_Spawner_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2023537912", "2023537912", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B10_Angel_Spawner_13.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, {
    });
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_102();
    l0 = self.box_LT03_040_B01_Clone_Manager_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1707562461", "1707562461", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_102.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_70();
    l0 = self.box_LT03_040_B01_Clone_Manager_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2132672757", "2132672757", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_70.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_2();
    l0 = self.box_LT03_040_B01_Clone_Manager_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|377706722", "377706722", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_2.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_103();
    l0 = self.box_LT03_040_B01_Clone_Manager_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|979530556", "979530556", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_103.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_57();
    l0 = self.box_LT03_040_B01_Clone_Manager_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|225652520", "225652520", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_57.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_4();
    l0 = self.box_LT03_040_B01_Clone_Manager_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|597980409", "597980409", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_4.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_110();
    l0 = self.box_LT03_040_B01_Clone_Manager_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1714644006", "1714644006", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_110.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_64();
    l0 = self.box_LT03_040_B01_Clone_Manager_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1210107930", "1210107930", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_64.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    l0 = self.box_LT03_040_B10_Mortar_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1833072262", "1833072262", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B10_Mortar_11.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, {
    });
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_78();
    l0 = self.box_LT03_040_B01_Clone_Manager_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|218294361", "218294361", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_78.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_IndexList_v2_75();
    l0 = self.box_IndexList_v2_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|245577844", "245577844", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_IndexList_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_6();
    l0 = self.box_LT03_040_B01_Clone_Manager_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1949648005", "1949648005", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_6.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    params = self:OnEnter_box_IndexList_v2_68();
    l0 = self.box_IndexList_v2_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1927054628", "1927054628", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_IndexList_v2_68.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_111();
    l0 = self.box_LT03_040_B01_Clone_Manager_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1232427335", "1232427335", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_111.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
    l0 = self.box_LT03_040_B10_Sounds_and_VOs_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|301098253", "301098253", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B10_Sounds_and_VOs_125.Faith_Found", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Found
    l0:Exec(1, {
    });
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_67();
    l0 = self.box_LT03_040_B01_Clone_Manager_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|906613819", "906613819", "LT03_040_B10_Main", "box_Simple_Node_9.Out", "box_LT03_040_B01_Clone_Manager_67.Faith_Attack", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Attack
    l0:Exec(2, params);
end;

function export:f_box_Simple_Node_226_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_213();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1301047777", "1301047777", "LT03_040_B10_Main", "box_Simple_Node_226.Out", "box_OutputOrder_v2_213.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_32_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_172();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|845326905", "845326905", "LT03_040_B10_Main", "box_Simple_Node_32.Out", "box_SetActivityObjectiveProgress_v2_172.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_146_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_LT03_040_B10_Angel_Spawner_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1529748708", "1529748708", "LT03_040_B10_Main", "box_Simple_Node_146.Out", "box_LT03_040_B10_Angel_Spawner_13.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, {
    });
    l0 = self.box_LT03_040_B10_Sounds_and_VOs_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|388711444", "388711444", "LT03_040_B10_Main", "box_Simple_Node_146.Out", "box_LT03_040_B10_Sounds_and_VOs_125.Faith_Spawned", clone:GetLuaBox(), l0:GetLuaBox());
    -- Faith_Spawned
    l0:Exec(2, {
    });
    l0 = self.box_LT03_040_B10_Health_Listener_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|287831818", "287831818", "LT03_040_B10_Main", "box_Simple_Node_146.Out", "box_LT03_040_B10_Health_Listener_49.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|349632897", "349632897", "LT03_040_B10_Main", "box_Simple_Node_7.Out", "box_MultipleOR_99.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    l0 = self.box_LT03_040_B10_Health_Listener_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2116891192", "2116891192", "LT03_040_B10_Main", "box_Simple_Node_7.Out", "box_LT03_040_B10_Health_Listener_49.Stop_VO", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop_VO
    l0:Exec(2, {
    });
end;

function export:f_box_Simple_Node_50_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_IndexList_v2_76();
    l0 = self.box_IndexList_v2_76;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1301760448", "1301760448", "LT03_040_B10_Main", "box_Simple_Node_50.Out", "box_IndexList_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_IndexList_v2_72();
    l0 = self.box_IndexList_v2_72;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|369749975", "369749975", "LT03_040_B10_Main", "box_Simple_Node_50.Out", "box_IndexList_v2_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_59_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_55();
    l0 = self.box_LT03_040_B01_Clone_Manager_55;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|97053089", "97053089", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_55.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_61();
    l0 = self.box_LT03_040_B01_Clone_Manager_61;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|888713814", "888713814", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_61.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_112();
    l0 = self.box_LT03_040_B01_Clone_Manager_112;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1148591758", "1148591758", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_112.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_111();
    l0 = self.box_LT03_040_B01_Clone_Manager_111;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1160060392", "1160060392", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_111.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_62();
    l0 = self.box_LT03_040_B01_Clone_Manager_62;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|412368684", "412368684", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_62.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_80();
    l0 = self.box_LT03_040_B01_Clone_Manager_80;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|957838657", "957838657", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_80.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_101();
    l0 = self.box_LT03_040_B01_Clone_Manager_101;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1933256772", "1933256772", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_101.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_110();
    l0 = self.box_LT03_040_B01_Clone_Manager_110;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1459739656", "1459739656", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_110.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_3();
    l0 = self.box_LT03_040_B01_Clone_Manager_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|834831475", "834831475", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_3.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_70();
    l0 = self.box_LT03_040_B01_Clone_Manager_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1517544076", "1517544076", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_70.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_2();
    l0 = self.box_LT03_040_B01_Clone_Manager_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|132922203", "132922203", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_2.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_78();
    l0 = self.box_LT03_040_B01_Clone_Manager_78;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1978032070", "1978032070", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_78.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_103();
    l0 = self.box_LT03_040_B01_Clone_Manager_103;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1285917862", "1285917862", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_103.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_67();
    l0 = self.box_LT03_040_B01_Clone_Manager_67;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1353058770", "1353058770", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_67.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_4();
    l0 = self.box_LT03_040_B01_Clone_Manager_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|226741942", "226741942", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_4.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_102();
    l0 = self.box_LT03_040_B01_Clone_Manager_102;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1098266495", "1098266495", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_102.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_57();
    l0 = self.box_LT03_040_B01_Clone_Manager_57;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|875424230", "875424230", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_57.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_66();
    l0 = self.box_LT03_040_B01_Clone_Manager_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2122751959", "2122751959", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_66.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_64();
    l0 = self.box_LT03_040_B01_Clone_Manager_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|535886143", "535886143", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_64.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_6();
    l0 = self.box_LT03_040_B01_Clone_Manager_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1590423113", "1590423113", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_6.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
    params = self:OnEnter_box_LT03_040_B01_Clone_Manager_79();
    l0 = self.box_LT03_040_B01_Clone_Manager_79;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1946978530", "1946978530", "LT03_040_B10_Main", "box_Simple_Node_59.Out", "box_LT03_040_B01_Clone_Manager_79.Initialize", clone:GetLuaBox(), l0:GetLuaBox());
    -- Initialize
    l0:Exec(3, params);
end;

function export:f_box_Simple_Node_58_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|419596089", "419596089", "LT03_040_B10_Main", "box_Simple_Node_58.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
    l0 = self.box_CoopActivePlayers_205;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2059047826", "2059047826", "LT03_040_B10_Main", "box_Simple_Node_58.Out", "box_CoopActivePlayers_205.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
    l0 = self.box_JoinInProgressModifier_222;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|255207885", "255207885", "LT03_040_B10_Main", "box_Simple_Node_58.Out", "box_JoinInProgressModifier_222.LockSession", clone:GetLuaBox(), l0:GetLuaBox());
    -- LockSession
    l0:Exec(0, {
    });
    params = self:OnEnter_box_Music_Quest_v2_165();
    l0 = self.box_Music_Quest_v2_165;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|46355556", "46355556", "LT03_040_B10_Main", "box_Simple_Node_58.Out", "box_Music_Quest_v2_165.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_LT03_040_B10_Health_Listener_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2064029137", "2064029137", "LT03_040_B10_Main", "box_Simple_Node_25.Out", "box_LT03_040_B10_Health_Listener_49.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
    params = self:OnEnter_box_IndexList_v2_83();
    l0 = self.box_IndexList_v2_83;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|835756838", "835756838", "LT03_040_B10_Main", "box_Simple_Node_25.Out", "box_IndexList_v2_83.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    params = self:OnEnter_box_IndexList_v2_47();
    l0 = self.box_IndexList_v2_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|849935451", "849935451", "LT03_040_B10_Main", "box_Simple_Node_25.Out", "box_IndexList_v2_47.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1220679598", "1220679598", "LT03_040_B10_Main", "box_Simple_Node_25.Out", "box_MultipleOR_71.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Simple_Node_52_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_LT03_040_B10_BuildUp_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|160738274", "160738274", "LT03_040_B10_Main", "box_Simple_Node_52.Out", "box_LT03_040_B10_BuildUp_48.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
    l0 = self.box_LT03_040_B10_Sounds_and_VOs_125;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1201567282", "1201567282", "LT03_040_B10_Main", "box_Simple_Node_52.Out", "box_LT03_040_B10_Sounds_and_VOs_125.Reset_VO", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset_VO
    l0:Exec(3, {
    });
end;

function export:f_box_Simple_Node_34_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1997222342", "1997222342", "LT03_040_B10_Main", "box_Simple_Node_34.Out", "box_MultipleOR_71.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
    params = self:OnEnter_box_LT03_040_B10_Faith_Enrage_12();
    l0 = self.box_LT03_040_B10_Faith_Enrage_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|240128963", "240128963", "LT03_040_B10_Main", "box_Simple_Node_34.Out", "box_LT03_040_B10_Faith_Enrage_12.Start_Enrage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start_Enrage
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_100_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_99;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1710196341", "1710196341", "LT03_040_B10_Main", "box_Simple_Node_100.Out", "box_MultipleOR_99.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_NarrativeSceneCleanUp_V2_198_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BindMarkerOverHead_v2_164();
    l0 = self.box_NarrativeSceneCleanUp_V2_198;
    l1 = self.box_BindMarkerOverHead_v2_164;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|476528064", "476528064", "LT03_040_B10_Main", "box_NarrativeSceneCleanUp_V2_198.Out", "box_BindMarkerOverHead_v2_164.Bind", l0:GetLuaBox(), l1:GetLuaBox());
    -- Bind
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_28_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_28_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_189();
    l0 = self.box_Bind_v4_189;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1731314573", "1731314573", "LT03_040_B10_Main", "box_GetLocalPlayer_v2_28.Out", "box_Bind_v4_189.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_HealthListener_v6_18_Critical()
    self:OnExit_box_HealthListener_v6_18_Critical();
end;

function export:f_box_HealthListener_v6_18_Damaged()
    self:OnExit_box_HealthListener_v6_18_Damaged();
end;

function export:f_box_HealthListener_v6_18_Downed()
    self:OnExit_box_HealthListener_v6_18_Downed();
end;

function export:f_box_HealthListener_v6_18_Healed()
    self:OnExit_box_HealthListener_v6_18_Healed();
end;

function export:f_box_HealthListener_v6_18_Killed()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_18_Killed();
    params = self:OnEnter_box_RemoveEntity_v2_17();
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_RemoveEntity_v2_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1910989096", "1910989096", "LT03_040_B10_Main", "box_HealthListener_v6_18.Killed", "box_RemoveEntity_v2_17.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_18_Revived()
    self:OnExit_box_HealthListener_v6_18_Revived();
end;

function export:f_box_ActivityMiscInfoModifier_v2_142_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_155();
    l0 = self.box_PostFx_v3_155;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|99702339", "99702339", "LT03_040_B10_Main", "box_ActivityMiscInfoModifier_v2_142.Out", "box_PostFx_v3_155.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_LT03_040_B10_Health_Listener_49_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_50();
    l0 = self.box_LT03_040_B10_Health_Listener_49;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|260918730", "260918730", "LT03_040_B10_Main", "box_LT03_040_B10_Health_Listener_49.Disabled", "box_Simple_Node_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Health_Listener_49_Faith_Attacked()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_9();
    l0 = self.box_LT03_040_B10_Health_Listener_49;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|419357020", "419357020", "LT03_040_B10_Main", "box_LT03_040_B10_Health_Listener_49.Faith_Attacked", "box_Simple_Node_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_149_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_153();
    l0 = self.box_PlayDialog_v6_149;
    l1 = self.box_Delay_v5_153;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1787979128", "1787979128", "LT03_040_B10_Main", "box_PlayDialog_v6_149.Started", "box_Delay_v5_153.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LT03_040_B01_Clone_Manager_79_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_79;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1483857488", "1483857488", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_79.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_79_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_79;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1873681966", "1873681966", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_79.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_79_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_79;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1378530417", "1378530417", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_79.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LockTimeOfDay_170_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ChangeSunOrientation_v4_187();
    l0 = self.box_LockTimeOfDay_170;
    l1 = self.box_ChangeSunOrientation_v4_187;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1474856896", "1474856896", "LT03_040_B10_Main", "box_LockTimeOfDay_170.Out", "box_ChangeSunOrientation_v4_187.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_154_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_200();
    l0 = self.box_PlaySequence_v8_200;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|774719015", "774719015", "LT03_040_B10_Main", "box_ParticleSystem_v3_154.Started", "box_PlaySequence_v8_200.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_ChangeSunOrientation_v4_187_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_181();
    l0 = self.box_ChangeSunOrientation_v4_187;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|890089199", "890089199", "LT03_040_B10_Main", "box_ChangeSunOrientation_v4_187.Out", "box_Compare_Integers_181.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ChangeSunOrientation_v4_197_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LockTimeOfDay_168();
    l0 = self.box_ChangeSunOrientation_v4_197;
    l1 = self.box_LockTimeOfDay_168;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|827055951", "827055951", "LT03_040_B10_Main", "box_ChangeSunOrientation_v4_197.Out", "box_LockTimeOfDay_168.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_65_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_204();
    l0 = self.box_NarrativeFade_204;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|709644481", "709644481", "LT03_040_B10_Main", "box_ActivityMiscInfoModifier_v2_65.Out", "box_NarrativeFade_204.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_192_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_123();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|25504897", "25504897", "LT03_040_B10_Main", "box_DynamicLightModifier_192.Disabled", "box_DynamicLightModifier_123.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_202_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_100();
    l0 = self.box_Delay_v5_202;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|527967607", "527967607", "LT03_040_B10_Main", "box_Delay_v5_202.TimeElapsed", "box_Simple_Node_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_62_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_62;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1157239194", "1157239194", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_62.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_62_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_62;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1621237408", "1621237408", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_62.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_62_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_62;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1741663760", "1741663760", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_62.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_148_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_145();
    l0 = self.box_PlayDialog_v6_148;
    l1 = self.box_Delay_v5_145;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|689393042", "689393042", "LT03_040_B10_Main", "box_PlayDialog_v6_148.Started", "box_Delay_v5_145.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ListWriter_v2_207_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_226();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2017500107", "2017500107", "LT03_040_B10_Main", "box_ListWriter_v2_207.Added", "box_Simple_Node_226.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_81_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT03_040_B10_Faith_Selector_69();
    l0 = self.box_MultipleOR_81;
    l1 = self.box_LT03_040_B10_Faith_Selector_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|884547090", "884547090", "LT03_040_B10_Main", "box_MultipleOR_81.Out", "box_LT03_040_B10_Faith_Selector_69.Despawn_AllClones", l0:GetLuaBox(), l1:GetLuaBox());
    -- Despawn_AllClones
    l1:Exec(0, params);
end;

function export:f_box_LT03_040_B01_Clone_Manager_70_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_70;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|58283909", "58283909", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_70.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_70_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_131();
    l0 = self.box_LT03_040_B01_Clone_Manager_70;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1987282307", "1987282307", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_70.Faith_Activated", "box_OutputOrder_v2_131.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_70_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_70;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|948131332", "948131332", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_70.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_95();
    l0 = self.box_Delay_v5_15;
    l1 = self.box_GunsForHireSystemModifier_95;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|331640016", "331640016", "LT03_040_B10_Main", "box_Delay_v5_15.TimeElapsed", "box_GunsForHireSystemModifier_95.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_LT03_040_B01_Clone_Manager_110_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_110;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1519430691", "1519430691", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_110.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_110_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_110;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1868570692", "1868570692", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_110.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_110_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_110;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|384220493", "384220493", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_110.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_57_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1846710638", "1846710638", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_57.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_57_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1580490452", "1580490452", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_57.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_57_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_57;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|725082485", "725082485", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_57.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_82_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT03_040_B10_Faith_Selector_69();
    l0 = self.box_MultipleOR_82;
    l1 = self.box_LT03_040_B10_Faith_Selector_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|376502221", "376502221", "LT03_040_B10_Main", "box_MultipleOR_82.Out", "box_LT03_040_B10_Faith_Selector_69.Despawn_Faith", l0:GetLuaBox(), l1:GetLuaBox());
    -- Despawn_Faith
    l1:Exec(1, params);
end;

function export:f_box_JoinInProgressModifier_222_OnLockSession()
    local params, l0, l1;
    params = self:OnEnter_box_LT03_040_B10_Faith_Enrage_12();
    l0 = self.box_JoinInProgressModifier_222;
    l1 = self.box_LT03_040_B10_Faith_Enrage_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1744728392", "1744728392", "LT03_040_B10_Main", "box_JoinInProgressModifier_222.OnLockSession", "box_LT03_040_B10_Faith_Enrage_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_194_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_194_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Bind_v4_195();
    l0 = self.box_Bind_v4_195;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|558709171", "558709171", "LT03_040_B10_Main", "box_GetLocalPlayer_v2_194.Out", "box_Bind_v4_195.Bind", clone:GetLuaBox(), l0:GetLuaBox());
    -- Bind
    l0:Exec(0, params);
end;

function export:f_box_AddActivityObjectiveProgress_v2_54_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetActivityObjectiveProgress_v2_169();
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|441637656", "441637656", "LT03_040_B10_Main", "box_AddActivityObjectiveProgress_v2_54.Out", "box_SetActivityObjectiveProgress_v2_169.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_129_Disabled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|641788006", "641788006", "LT03_040_B10_Main", "box_MissionBlockLayer_129.Disabled", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_150_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_ParticleSystem_v3_137();
    l0 = self.box_ProximityTrigger_v2_150;
    l1 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1662685128", "1662685128", "LT03_040_B10_Main", "box_ProximityTrigger_v2_150.Enter", "box_ParticleSystem_v3_137.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_132_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_157();
    l0 = self.box_Delay_v5_157;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1683733397", "1683733397", "LT03_040_B10_Main", "box_ParticleSystem_v3_132.Stopped", "box_Delay_v5_157.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Bind_v4_195_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = self.box_Bind_v4_195;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|823427274", "823427274", "LT03_040_B10_Main", "box_Bind_v4_195.Bound", "box_Simple_Node_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_213_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_211();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|869441413", "869441413", "LT03_040_B10_Main", "box_OutputOrder_v2_213.Out", "box_IsValueNil_v3_211.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_213_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_IsValueNil_v3_212();
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1676425157", "1676425157", "LT03_040_B10_Main", "box_OutputOrder_v2_213.Out", "box_IsValueNil_v3_212.Entity", clone:GetLuaBox(), l0:GetLuaBox());
    -- Entity
    l0:Exec(4, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_212_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_214();
    l0 = self.box_HealthListener_v6_214;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|99368249", "99368249", "LT03_040_B10_Main", "box_IsValueNil_v3_212.No", "box_HealthListener_v6_214.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_123_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_193();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|783048305", "783048305", "LT03_040_B10_Main", "box_DynamicLightModifier_123.Disabled", "box_DynamicLightModifier_193.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_137_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_147();
    l0 = self.box_SpawnAI_147;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|305615997", "305615997", "LT03_040_B10_Main", "box_ParticleSystem_v3_137.Started", "box_SpawnAI_147.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_LT03_040_B01_Clone_Manager_61_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_61;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|568969817", "568969817", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_61.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_61_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_61;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1239749219", "1239749219", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_61.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_61_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_61;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1696916180", "1696916180", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_61.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjective_v2_143_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_161();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|685983173", "685983173", "LT03_040_B10_Main", "box_AddActivityObjective_v2_143.Out", "box_AddActivityObjectiveProgress_v2_161.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_PlayerUI_188_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_218();
    l0 = self.box_LT03_040_B10_PlayerUI_188;
    l1 = self.box_NoWeaponMode_v3_218;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1253814877", "1253814877", "LT03_040_B10_Main", "box_LT03_040_B10_PlayerUI_188.Out", "box_NoWeaponMode_v3_218.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_167_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetBoolean_v2_173();
    l0 = self.box_MultipleOR_167;
    l1 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1635110903", "1635110903", "LT03_040_B10_Main", "box_MultipleOR_167.Out", "box_SetBoolean_v2_173.True", l0:GetLuaBox(), l1:GetLuaBox());
    -- True
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_71_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_29();
    l0 = self.box_MultipleOR_71;
    l1 = self.box_Music_Quest_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|387303452", "387303452", "LT03_040_B10_Main", "box_MultipleOR_71.Out", "box_Music_Quest_v2_29.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_AddActivityObjective_v2_1_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AddActivityObjectiveProgress_v2_54();
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1093372595", "1093372595", "LT03_040_B10_Main", "box_AddActivityObjective_v2_1.Out", "box_AddActivityObjectiveProgress_v2_54.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Phase_Manager_56_Out_Buildup()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_52();
    l0 = self.box_LT03_040_B10_Phase_Manager_56;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1388163686", "1388163686", "LT03_040_B10_Main", "box_LT03_040_B10_Phase_Manager_56.Out_Buildup", "box_Simple_Node_52.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_157_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_158();
    l0 = self.box_Delay_v5_157;
    l1 = self.box_PlayDialog_v6_158;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|509673142", "509673142", "LT03_040_B10_Main", "box_Delay_v5_157.TimeElapsed", "box_PlayDialog_v6_158.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_IndexList_v2_75_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_75;
    l1 = self.box_MultipleOR_81;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|863065798", "863065798", "LT03_040_B10_Main", "box_IndexList_v2_75.Output", "box_MultipleOR_81.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ListWriter_v2_206_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_226();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1834748016", "1834748016", "LT03_040_B10_Main", "box_ListWriter_v2_206.Added", "box_Simple_Node_226.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_47_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT03_040_B10_Faith_Selector_5();
    l0 = self.box_IndexList_v2_47;
    l1 = self.box_LT03_040_B10_Faith_Selector_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1449634657", "1449634657", "LT03_040_B10_Main", "box_IndexList_v2_47.Output", "box_LT03_040_B10_Faith_Selector_5.Select", l0:GetLuaBox(), l1:GetLuaBox());
    -- Select
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_200_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_202();
    l0 = self.box_PlaySequence_v8_200;
    l1 = self.box_Delay_v5_202;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|794634103", "794634103", "LT03_040_B10_Main", "box_PlaySequence_v8_200.Started", "box_Delay_v5_202.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_91();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1526331690", "1526331690", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_1", "box_Simple_Node_91.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_10()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_109();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|885147739", "885147739", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_10", "box_Simple_Node_109.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_92();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1475873982", "1475873982", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_2", "box_Simple_Node_92.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_93();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2105809616", "2105809616", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_3", "box_Simple_Node_93.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_4()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_94();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|731257054", "731257054", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_4", "box_Simple_Node_94.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_5()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_96();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|342699793", "342699793", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_5", "box_Simple_Node_96.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_6()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_97();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|942204764", "942204764", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_6", "box_Simple_Node_97.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_7()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_98();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|935281944", "935281944", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_7", "box_Simple_Node_98.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_8()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_107();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|618897231", "618897231", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_8", "box_Simple_Node_107.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_9()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_108();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1512680216", "1512680216", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_9", "box_Simple_Node_108.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_DespawnFaith_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_177();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2142631908", "2142631908", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.DespawnFaith_Start", "box_Simple_Node_177.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_84();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1509707891", "1509707891", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_1", "box_Simple_Node_84.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_10()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_106();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|407949521", "407949521", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_10", "box_Simple_Node_106.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_85();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|805351942", "805351942", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_2", "box_Simple_Node_85.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_86();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1524344521", "1524344521", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_3", "box_Simple_Node_86.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_4()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_87();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1166049810", "1166049810", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_4", "box_Simple_Node_87.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_5()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_88();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1039639382", "1039639382", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_5", "box_Simple_Node_88.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_6()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_89();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|718866267", "718866267", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_6", "box_Simple_Node_89.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_7()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_90();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|398093152", "398093152", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_7", "box_Simple_Node_90.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_8()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_104();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1864468095", "1864468095", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_8", "box_Simple_Node_104.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_9()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_105();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|810688648", "810688648", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_9", "box_Simple_Node_105.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_69_SpawnFaith_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_175();
    l0 = self.box_LT03_040_B10_Faith_Selector_69;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2092057872", "2092057872", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_69.SpawnFaith_Start", "box_Simple_Node_175.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_173_Out()
    self:OnExit_box_SetBoolean_v2_173_Out();
end;

function export:f_box_LT03_040_B10_PlayerUI_73_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_74();
    l0 = self.box_LT03_040_B10_PlayerUI_73;
    l1 = self.box_PlayerSpeedModifier_v3_74;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1248428668", "1248428668", "LT03_040_B10_Main", "box_LT03_040_B10_PlayerUI_73.Out", "box_PlayerSpeedModifier_v3_74.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_VisionModeModifier_v2_26_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_LockTimeOfDay_30();
    l0 = self.box_VisionModeModifier_v2_26;
    l1 = self.box_LockTimeOfDay_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1506634722", "1506634722", "LT03_040_B10_Main", "box_VisionModeModifier_v2_26.Stopped", "box_LockTimeOfDay_30.Unlock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Unlock
    l1:Exec(1, params);
end;

function export:f_box_GunsForHireSystemModifier_95_Enabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_95;
    l1 = self.box_JoinInProgressModifier_223;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1738715100", "1738715100", "LT03_040_B10_Main", "box_GunsForHireSystemModifier_95.Enabled", "box_JoinInProgressModifier_223.UnlockSession", l0:GetLuaBox(), l1:GetLuaBox());
    -- UnlockSession
    l1:Exec(1, {
    });
end;

function export:f_box_LT03_040_B01_Clone_Manager_66_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_66;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|864780236", "864780236", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_66.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_66_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_66;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1292290810", "1292290810", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_66.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_66_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_66;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|869084337", "869084337", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_66.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_122_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_120();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|709350558", "709350558", "LT03_040_B10_Main", "box_DynamicLightModifier_122.Enabled", "box_ParticleSystem_v3_120.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_83_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_83;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|200521636", "200521636", "LT03_040_B10_Main", "box_IndexList_v2_83.Output", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_83_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_83;
    l1 = self.box_MultipleOR_77;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1219244003", "1219244003", "LT03_040_B10_Main", "box_IndexList_v2_83.Output", "box_MultipleOR_77.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_131_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetBoolean_v2_171();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|777628539", "777628539", "LT03_040_B10_Main", "box_OutputOrder_v2_131.Out", "box_SetBoolean_v2_171.False", clone:GetLuaBox(), l0:GetLuaBox());
    -- False
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_132();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|530113241", "530113241", "LT03_040_B10_Main", "box_OutputOrder_v2_131.Out", "box_ParticleSystem_v3_132.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_131_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_162();
    l0 = self.box_Delay_v5_162;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|348415707", "348415707", "LT03_040_B10_Main", "box_OutputOrder_v2_131.Out", "box_Delay_v5_162.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_152_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_138();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|758238788", "758238788", "LT03_040_B10_Main", "box_ParticleSystem_v3_152.Started", "box_HealthModifier_v2_138.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_46();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|438047867", "438047867", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_1", "box_Simple_Node_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_10()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_119();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|462703706", "462703706", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_10", "box_Simple_Node_119.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|749794665", "749794665", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_2", "box_Simple_Node_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_33();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|644320810", "644320810", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_3", "box_Simple_Node_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_4()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_38();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1773143449", "1773143449", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_4", "box_Simple_Node_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_5()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_40();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1480397840", "1480397840", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_5", "box_Simple_Node_40.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_6()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_42();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|911155419", "911155419", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_6", "box_Simple_Node_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_7()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_44();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|281219785", "281219785", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_7", "box_Simple_Node_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_8()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_114();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|190894670", "190894670", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_8", "box_Simple_Node_114.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_DespawnFaith_9()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_116();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|394583334", "394583334", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.DespawnFaith_9", "box_Simple_Node_116.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_1()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_45();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|384109361", "384109361", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_1", "box_Simple_Node_45.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_10()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_118();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1424854938", "1424854938", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_10", "box_Simple_Node_118.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_2()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_10();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|358043257", "358043257", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_2", "box_Simple_Node_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_3()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_31();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|889764082", "889764082", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_3", "box_Simple_Node_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_4()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_36();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|950625408", "950625408", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_4", "box_Simple_Node_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_5()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_37();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2013898945", "2013898945", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_5", "box_Simple_Node_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_6()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_41();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1461241547", "1461241547", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_6", "box_Simple_Node_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_7()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_43();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1177990028", "1177990028", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_7", "box_Simple_Node_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_8()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_113();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1848698751", "1848698751", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_8", "box_Simple_Node_113.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Selector_5_SpawnFaith_9()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_115();
    l0 = self.box_LT03_040_B10_Faith_Selector_5;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|637910100", "637910100", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Selector_5.SpawnFaith_9", "box_Simple_Node_115.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_124_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DynamicLightModifier_192();
    l0 = self.box_RemoveEntity_v2_124;
    l1 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|934340500", "934340500", "LT03_040_B10_Main", "box_RemoveEntity_v2_124.Out", "box_DynamicLightModifier_192.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_101_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_101;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1405995151", "1405995151", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_101.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_101_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_101;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1442011392", "1442011392", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_101.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_101_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_101;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|664253170", "664253170", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_101.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_BuildUp_48_Enrage()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_34();
    l0 = self.box_LT03_040_B10_BuildUp_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|805139403", "805139403", "LT03_040_B10_Main", "box_LT03_040_B10_BuildUp_48.Enrage", "box_Simple_Node_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_BuildUp_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = self.box_LT03_040_B10_BuildUp_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1457004842", "1457004842", "LT03_040_B10_Main", "box_LT03_040_B10_BuildUp_48.Out", "box_Simple_Node_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_BuildUp_48_Phase1_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_25();
    l0 = self.box_LT03_040_B10_BuildUp_48;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|464932831", "464932831", "LT03_040_B10_Main", "box_LT03_040_B10_BuildUp_48.Phase1_OUT", "box_Simple_Node_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_103_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_103;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1057817407", "1057817407", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_103.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_103_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_103;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2069940505", "2069940505", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_103.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_103_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_103;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1503238293", "1503238293", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_103.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_203_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_178();
    l0 = self.box_MultipleOR_203;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|955883371", "955883371", "LT03_040_B10_Main", "box_MultipleOR_203.Out", "box_Simple_Node_178.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Bind_v4_189_Bound()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_58();
    l0 = self.box_Bind_v4_189;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|202689785", "202689785", "LT03_040_B10_Main", "box_Bind_v4_189.Bound", "box_Simple_Node_58.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_184_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_156();
    l0 = self.box_EntityStatusListener_184;
    l1 = self.box_PlayerSpeedModifier_v3_156;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1491619645", "1491619645", "LT03_040_B10_Main", "box_EntityStatusListener_184.Loaded", "box_PlayerSpeedModifier_v3_156.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_LockTimeOfDay_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_65();
    l0 = self.box_LockTimeOfDay_30;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|390047324", "390047324", "LT03_040_B10_Main", "box_LockTimeOfDay_30.Out", "box_ActivityMiscInfoModifier_v2_65.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_181_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_IntegerArithmetics_v2_183();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|489721904", "489721904", "LT03_040_B10_Main", "box_Compare_Integers_181.A_gt_B", "box_IntegerArithmetics_v2_183.Sub", clone:GetLuaBox(), l0:GetLuaBox());
    -- Sub
    l0:Exec(8, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_181_A_le_B()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1803859983", "1803859983", "LT03_040_B10_Main", "box_Compare_Integers_181.A_le_B", "box_MultipleOR_24.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_99_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_99;
    l1 = self.box_LT03_040_B10_Phase_Manager_56;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|829731894", "829731894", "LT03_040_B10_Main", "box_MultipleOR_99.Out", "box_LT03_040_B10_Phase_Manager_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_HealthModifier_v2_191_OnRemoveCritical()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_124();
    l0 = self.box_RemoveEntity_v2_124;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2126221707", "2126221707", "LT03_040_B10_Main", "box_HealthModifier_v2_191.OnRemoveCritical", "box_RemoveEntity_v2_124.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_59();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1669492082", "1669492082", "LT03_040_B10_Main", "box_OutputOrder_v2_27.Out", "box_Simple_Node_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Integers_201();
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|888529055", "888529055", "LT03_040_B10_Main", "box_OutputOrder_v2_27.Out", "box_Compare_Integers_201.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_DynamicLightModifier_193_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_135();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|765521898", "765521898", "LT03_040_B10_Main", "box_DynamicLightModifier_193.Disabled", "box_ParticleSystem_v3_135.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayDialog_v6_158_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_159();
    l0 = self.box_PlayDialog_v6_158;
    l1 = self.box_PlayDialog_v6_159;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|294828646", "294828646", "LT03_040_B10_Main", "box_PlayDialog_v6_158.Finished", "box_PlayDialog_v6_159.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_HealthListener_v6_19_Critical()
    self:OnExit_box_HealthListener_v6_19_Critical();
end;

function export:f_box_HealthListener_v6_19_Damaged()
    self:OnExit_box_HealthListener_v6_19_Damaged();
end;

function export:f_box_HealthListener_v6_19_Downed()
    self:OnExit_box_HealthListener_v6_19_Downed();
end;

function export:f_box_HealthListener_v6_19_Healed()
    self:OnExit_box_HealthListener_v6_19_Healed();
end;

function export:f_box_HealthListener_v6_19_Killed()
    local params, l0, l1;
    self:OnExit_box_HealthListener_v6_19_Killed();
    params = self:OnEnter_box_RemoveEntity_v2_20();
    l0 = self.box_HealthListener_v6_19;
    l1 = self.box_RemoveEntity_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2015990358", "2015990358", "LT03_040_B10_Main", "box_HealthListener_v6_19.Killed", "box_RemoveEntity_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_HealthListener_v6_19_Revived()
    self:OnExit_box_HealthListener_v6_19_Revived();
end;

function export:f_box_SpawnAI_147_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_148();
    l0 = self.box_SpawnAI_147;
    l1 = self.box_PlayDialog_v6_148;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1240786728", "1240786728", "LT03_040_B10_Main", "box_SpawnAI_147.Spawned", "box_PlayDialog_v6_148.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_23_Acknowledged()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_128();
    l0 = self.box_ActivityAcknowledgeGate_23;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1523745573", "1523745573", "LT03_040_B10_Main", "box_ActivityAcknowledgeGate_23.Acknowledged", "box_MissionBlockLayer_128.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_23_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_Lib_Bliss_RevealGate_60();
    l0 = self.box_ActivityAcknowledgeGate_23;
    l1 = self.box_Lib_Bliss_RevealGate_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2053950301", "2053950301", "LT03_040_B10_Main", "box_ActivityAcknowledgeGate_23.Reloaded", "box_Lib_Bliss_RevealGate_60.Initialize", l0:GetLuaBox(), l1:GetLuaBox());
    -- Initialize
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_127_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_127_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_121();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1093843422", "1093843422", "LT03_040_B10_Main", "box_GetLocalPlayer_v2_127.Out", "box_DynamicLightModifier_121.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_133_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthModifier_v2_140();
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1751482336", "1751482336", "LT03_040_B10_Main", "box_ParticleSystem_v3_133.Started", "box_HealthModifier_v2_140.Damage", clone:GetLuaBox(), l0:GetLuaBox());
    -- Damage
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IndexList_v2_68_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT03_040_B10_Faith_Selector_5();
    l0 = self.box_IndexList_v2_68;
    l1 = self.box_LT03_040_B10_Faith_Selector_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|573176004", "573176004", "LT03_040_B10_Main", "box_IndexList_v2_68.Output", "box_LT03_040_B10_Faith_Selector_5.Despawn_AllClones", l0:GetLuaBox(), l1:GetLuaBox());
    -- Despawn_AllClones
    l1:Exec(0, params);
end;

function export:f_box_PlayerSpeedModifier_v3_74_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_198();
    l0 = self.box_PlayerSpeedModifier_v3_74;
    l1 = self.box_NarrativeSceneCleanUp_V2_198;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1209366283", "1209366283", "LT03_040_B10_Main", "box_PlayerSpeedModifier_v3_74.ApplySpeedFactorOut", "box_NarrativeSceneCleanUp_V2_198.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_134_Cleaned()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_130();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1341973790", "1341973790", "LT03_040_B10_Main", "box_ParticleSystem_v3_134.Cleaned", "box_ParticleSystem_v3_130.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_134_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_134();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2123944201", "2123944201", "LT03_040_B10_Main", "box_ParticleSystem_v3_134.Stopped", "box_ParticleSystem_v3_134.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Integers_201_A_gt_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B10_PlayerUI_188();
    l0 = self.box_LT03_040_B10_PlayerUI_188;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1183213796", "1183213796", "LT03_040_B10_Main", "box_Compare_Integers_201.A_gt_B", "box_LT03_040_B10_PlayerUI_188.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_Compare_Integers_201_A_le_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_179();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|17501699", "17501699", "LT03_040_B10_Main", "box_Compare_Integers_201.A_le_B", "box_Simple_Node_179.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Enrage_12_Enrage_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_32();
    l0 = self.box_LT03_040_B10_Faith_Enrage_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|393336111", "393336111", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Enrage_12.Enrage_Out", "box_Simple_Node_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B10_Faith_Enrage_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_LT03_040_B10_Faith_Enrage_12;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|953921235", "953921235", "LT03_040_B10_Main", "box_LT03_040_B10_Faith_Enrage_12.Out", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetActivityObjectiveProgress_v2_169_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_LT03_040_B10_PlayerUI_73();
    l0 = self.box_LT03_040_B10_PlayerUI_73;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1535509969", "1535509969", "LT03_040_B10_Main", "box_SetActivityObjectiveProgress_v2_169.Out", "box_LT03_040_B10_PlayerUI_73.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_ParticleSystem_v3_120_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_28();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1506353110", "1506353110", "LT03_040_B10_Main", "box_ParticleSystem_v3_120.Started", "box_GetLocalPlayer_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_199_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_199;
    l1 = self.box_MultipleOR_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|312900752", "312900752", "LT03_040_B10_Main", "box_PlaySequence_v8_199.Finished", "box_MultipleOR_203.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_199_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_199;
    l1 = self.box_MultipleOR_203;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|755397509", "755397509", "LT03_040_B10_Main", "box_PlaySequence_v8_199.Skipped", "box_MultipleOR_203.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_TimedSlowMotion_v2_221_SlowMotionEnded()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_TimedSlowMotion_v2_221;
    l1 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|577538052", "577538052", "LT03_040_B10_Main", "box_TimedSlowMotion_v2_221.SlowMotionEnded", "box_Delay_v5_15.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ParticleSystem_v3_136_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_199();
    l0 = self.box_PlaySequence_v8_199;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|66668045", "66668045", "LT03_040_B10_Main", "box_ParticleSystem_v3_136.Started", "box_PlaySequence_v8_199.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_ParticleSystem_v3_130_Cleaned()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_39();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|920366129", "920366129", "LT03_040_B10_Main", "box_ParticleSystem_v3_130.Cleaned", "box_ActivityEnd_39.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_130_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_130();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|901881180", "901881180", "LT03_040_B10_Main", "box_ParticleSystem_v3_130.Stopped", "box_ParticleSystem_v3_130.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_225_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_215();
    l0 = self.box_MultipleOR_225;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1270848078", "1270848078", "LT03_040_B10_Main", "box_MultipleOR_225.Out", "box_ListWriter_v2_215.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_155_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_186();
    l0 = self.box_PostFx_v3_155;
    l1 = self.box_NarrativeSceneCleanUp_V2_186;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|143415696", "143415696", "LT03_040_B10_Main", "box_PostFx_v3_155.Disabled", "box_NarrativeSceneCleanUp_V2_186.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_LT03_040_B01_Clone_Manager_80_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_80;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|664078830", "664078830", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_80.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_80_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_80;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1246149489", "1246149489", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_80.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_80_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_80;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|413691587", "413691587", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_80.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerSpeedModifier_v3_156_Done()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_220();
    l0 = self.box_PlayerSpeedModifier_v3_156;
    l1 = self.box_NoWeaponMode_v3_220;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1180435575", "1180435575", "LT03_040_B10_Main", "box_PlayerSpeedModifier_v3_156.Done", "box_NoWeaponMode_v3_220.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_128_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_129();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|761007008", "761007008", "LT03_040_B10_Main", "box_MissionBlockLayer_128.Disabled", "box_MissionBlockLayer_129.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IsValueNil_v3_211_No()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_210();
    l0 = self.box_HealthListener_v6_210;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|475741612", "475741612", "LT03_040_B10_Main", "box_IsValueNil_v3_211.No", "box_HealthListener_v6_210.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PlayDialog_v6_159_Finished()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_159;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1272007243", "1272007243", "LT03_040_B10_Main", "box_PlayDialog_v6_159.Finished", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayDialog_v6_159_FinishedInterrupted()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_159;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|927894398", "927894398", "LT03_040_B10_Main", "box_PlayDialog_v6_159.FinishedInterrupted", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayDialog_v6_159_StartedPriorityFailed()
    local l0, l1;
    l0 = self.box_PlayDialog_v6_159;
    l1 = self.box_MultipleOR_167;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|478139585", "478139585", "LT03_040_B10_Main", "box_PlayDialog_v6_159.StartedPriorityFailed", "box_MultipleOR_167.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_166_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_133();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2018316945", "2018316945", "LT03_040_B10_Main", "box_OutputOrder_v2_166.Out", "box_ParticleSystem_v3_133.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_166_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_136();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1987530871", "1987530871", "LT03_040_B10_Main", "box_OutputOrder_v2_166.Out", "box_ParticleSystem_v3_136.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_190_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ListWriter_v2_207();
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|456143564", "456143564", "LT03_040_B10_Main", "box_ListWriter_v2_190.Added", "box_ListWriter_v2_207.Add", clone:GetLuaBox(), l0:GetLuaBox());
    -- Add
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayerSpeedModifier_v3_219_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_100();
    l0 = self.box_PlayerSpeedModifier_v3_219;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1037631605", "1037631605", "LT03_040_B10_Main", "box_PlayerSpeedModifier_v3_219.ApplySpeedFactorOut", "box_Simple_Node_100.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_112_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_112;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|960305237", "960305237", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_112.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_112_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_112;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1833620366", "1833620366", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_112.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_112_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_112;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|772221408", "772221408", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_112.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_2_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|264197624", "264197624", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_2.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_2_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|344236706", "344236706", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_2.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_2_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_2;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|905890638", "905890638", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_2.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_196_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_194();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|665750613", "665750613", "LT03_040_B10_Main", "box_ActivityMiscInfoModifier_v2_196.Out", "box_GetLocalPlayer_v2_194.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_214_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_214;
    l1 = self.box_MultipleOR_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1030949290", "1030949290", "LT03_040_B10_Main", "box_HealthListener_v6_214.Downed", "box_MultipleOR_224.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_214_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_214;
    l1 = self.box_MultipleOR_224;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1056086033", "1056086033", "LT03_040_B10_Main", "box_HealthListener_v6_214.Killed", "box_MultipleOR_224.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_214_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_216();
    l0 = self.box_HealthListener_v6_214;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|323745611", "323745611", "LT03_040_B10_Main", "box_HealthListener_v6_214.Revived", "box_ListWriter_v2_216.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IntegerArithmetics_v2_183_Out()
    local params, l0;
    self:OnExit_box_IntegerArithmetics_v2_183_Out();
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NoWeaponMode_v3_160();
    l0 = self.box_NoWeaponMode_v3_160;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|606255355", "606255355", "LT03_040_B10_Main", "box_IntegerArithmetics_v2_183.Out", "box_NoWeaponMode_v3_160.On", clone:GetLuaBox(), l0:GetLuaBox());
    -- On
    l0:Exec(1, params);
end;

function export:f_box_ActivityInitialized_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_142();
    l0 = self.box_ActivityInitialized_22;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|846722424", "846722424", "LT03_040_B10_Main", "box_ActivityInitialized_22.Out", "box_ActivityMiscInfoModifier_v2_142.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetBoolean_v2_171_Out()
    local params, l0;
    self:OnExit_box_SetBoolean_v2_171_Out();
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|105483533", "105483533", "LT03_040_B10_Main", "box_SetBoolean_v2_171.Out", "box_Simple_Node_146.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_67_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_67;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|225350512", "225350512", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_67.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_67_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_67;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1528819711", "1528819711", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_67.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_67_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_67;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1308589380", "1308589380", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_67.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayerSpeedModifier_v3_217_Done()
    local l0, l1;
    l0 = self.box_PlayerSpeedModifier_v3_217;
    l1 = self.box_ActivityInitialized_182;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1508868316", "1508868316", "LT03_040_B10_Main", "box_PlayerSpeedModifier_v3_217.Done", "box_ActivityInitialized_182.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_IndexList_v2_72_Output_2()
    local params, l0, l1;
    params = self:OnEnter_box_LT03_040_B10_Faith_Selector_5();
    l0 = self.box_IndexList_v2_72;
    l1 = self.box_LT03_040_B10_Faith_Selector_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1711324620", "1711324620", "LT03_040_B10_Main", "box_IndexList_v2_72.Output", "box_LT03_040_B10_Faith_Selector_5.Despawn_Faith", l0:GetLuaBox(), l1:GetLuaBox());
    -- Despawn_Faith
    l1:Exec(1, params);
end;

function export:f_box_SetActivityObjectiveProgress_v2_172_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimedSlowMotion_v2_221();
    l0 = self.box_TimedSlowMotion_v2_221;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|502898090", "502898090", "LT03_040_B10_Main", "box_SetActivityObjectiveProgress_v2_172.Out", "box_TimedSlowMotion_v2_221.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_DynamicLightModifier_121_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_DynamicLightModifier_122();
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1730869989", "1730869989", "LT03_040_B10_Main", "box_DynamicLightModifier_121.Enabled", "box_DynamicLightModifier_122.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BindMarkerOverHead_v2_164_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityObjectiveMarkerModifier_v3_163();
    l0 = self.box_BindMarkerOverHead_v2_164;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1714878709", "1714878709", "LT03_040_B10_Main", "box_BindMarkerOverHead_v2_164.Out", "box_ActivityObjectiveMarkerModifier_v3_163.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_6_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_6;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1156161553", "1156161553", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_6.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_6_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_6;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1779195830", "1779195830", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_6.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_6_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_6;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|524542848", "524542848", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_6.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_139_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_151();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|154060548", "154060548", "LT03_040_B10_Main", "box_ParticleSystem_v3_139.Stopped", "box_ParticleSystem_v3_151.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NoWeaponMode_v3_220_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_ChangeSunOrientation_v4_197();
    l0 = self.box_NoWeaponMode_v3_220;
    l1 = self.box_ChangeSunOrientation_v4_197;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1862074671", "1862074671", "LT03_040_B10_Main", "box_NoWeaponMode_v3_220.OnEnter", "box_ChangeSunOrientation_v4_197.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_185();
    l0 = self.box_MultipleOR_24;
    l1 = self.box_EntityStatusListener_185;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1070347102", "1070347102", "LT03_040_B10_Main", "box_MultipleOR_24.Out", "box_EntityStatusListener_185.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LockTimeOfDay_168_Out()
    local l0, l1;
    l0 = self.box_LockTimeOfDay_168;
    l1 = self.box_ActivityInitialized_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1903752230", "1903752230", "LT03_040_B10_Main", "box_LockTimeOfDay_168.Out", "box_ActivityInitialized_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_153_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_180();
    l0 = self.box_Delay_v5_153;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1778245490", "1778245490", "LT03_040_B10_Main", "box_Delay_v5_153.TimeElapsed", "box_OutputOrder_v2_180.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthListener_v6_210_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_210;
    l1 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|987511019", "987511019", "LT03_040_B10_Main", "box_HealthListener_v6_210.Downed", "box_MultipleOR_225.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_HealthListener_v6_210_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_210;
    l1 = self.box_MultipleOR_225;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1791495522", "1791495522", "LT03_040_B10_Main", "box_HealthListener_v6_210.Killed", "box_MultipleOR_225.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_HealthListener_v6_210_Revived()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_215();
    l0 = self.box_HealthListener_v6_210;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1178187944", "1178187944", "LT03_040_B10_Main", "box_HealthListener_v6_210.Revived", "box_ListWriter_v2_215.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AddActivityObjectiveProgress_v2_161_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_219();
    l0 = self.box_PlayerSpeedModifier_v3_219;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1608822419", "1608822419", "LT03_040_B10_Main", "box_AddActivityObjectiveProgress_v2_161.Out", "box_PlayerSpeedModifier_v3_219.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_NarrativeFade_204_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_191();
    l0 = self.box_NarrativeFade_204;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1994668739", "1994668739", "LT03_040_B10_Main", "box_NarrativeFade_204.FadedOut", "box_HealthModifier_v2_191.RemoveCritical", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveCritical
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_135_Cleaned()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_134();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1475475151", "1475475151", "LT03_040_B10_Main", "box_ParticleSystem_v3_135.Cleaned", "box_ParticleSystem_v3_134.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_135_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_135();
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2084019448", "2084019448", "LT03_040_B10_Main", "box_ParticleSystem_v3_135.Stopped", "box_ParticleSystem_v3_135.Clean", clone:GetLuaBox(), l0:GetLuaBox());
    -- Clean
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ListWriter_v2_209_Added()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_226();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1856100577", "1856100577", "LT03_040_B10_Main", "box_ListWriter_v2_209.Added", "box_Simple_Node_226.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_152();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1364379928", "1364379928", "LT03_040_B10_Main", "box_OutputOrder_v2_180.Out", "box_ParticleSystem_v3_152.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_180_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ParticleSystem_v3_154();
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|448871090", "448871090", "LT03_040_B10_Main", "box_OutputOrder_v2_180.Out", "box_ParticleSystem_v3_154.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_JoinInProgressModifier_223_OnUnlockSession()
    local params, l0, l1;
    params = self:OnEnter_box_VisionModeModifier_v2_26();
    l0 = self.box_JoinInProgressModifier_223;
    l1 = self.box_VisionModeModifier_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1148536106", "1148536106", "LT03_040_B10_Main", "box_JoinInProgressModifier_223.OnUnlockSession", "box_VisionModeModifier_v2_26.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(7, params);
end;

function export:f_box_SpawnAI_144_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_PlayDialog_v6_149();
    l0 = self.box_SpawnAI_144;
    l1 = self.box_PlayDialog_v6_149;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|561450752", "561450752", "LT03_040_B10_Main", "box_SpawnAI_144.Spawned", "box_PlayDialog_v6_149.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(1, params);
end;

function export:f_box_Lib_Bliss_RevealGate_60_Initialize_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_LockTimeOfDay_170();
    l0 = self.box_Lib_Bliss_RevealGate_60;
    l1 = self.box_LockTimeOfDay_170;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|173416801", "173416801", "LT03_040_B10_Main", "box_Lib_Bliss_RevealGate_60.Initialize_OUT", "box_LockTimeOfDay_170.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
end;

function export:f_box_IndexList_v2_76_Output_0()
    local l0, l1;
    l0 = self.box_IndexList_v2_76;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1814336065", "1814336065", "LT03_040_B10_Main", "box_IndexList_v2_76.Output", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_IndexList_v2_76_Output_1()
    local l0, l1;
    l0 = self.box_IndexList_v2_76;
    l1 = self.box_MultipleOR_82;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1068870968", "1068870968", "LT03_040_B10_Main", "box_IndexList_v2_76.Output", "box_MultipleOR_82.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_77_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LT03_040_B10_Faith_Selector_69();
    l0 = self.box_MultipleOR_77;
    l1 = self.box_LT03_040_B10_Faith_Selector_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|928991506", "928991506", "LT03_040_B10_Main", "box_MultipleOR_77.Out", "box_LT03_040_B10_Faith_Selector_69.Select", l0:GetLuaBox(), l1:GetLuaBox());
    -- Select
    l1:Exec(2, params);
end;

function export:f_box_NoWeaponMode_v3_160_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_217();
    l0 = self.box_NoWeaponMode_v3_160;
    l1 = self.box_PlayerSpeedModifier_v3_217;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|630463376", "630463376", "LT03_040_B10_Main", "box_NoWeaponMode_v3_160.OnEnter", "box_PlayerSpeedModifier_v3_217.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_LT03_040_B01_Clone_Manager_102_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_102;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1399527095", "1399527095", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_102.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_102_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_102;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1753615188", "1753615188", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_102.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_102_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_102;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1081803740", "1081803740", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_102.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_162_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_1();
    l0 = self.box_Delay_v5_162;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1462679268", "1462679268", "LT03_040_B10_Main", "box_Delay_v5_162.TimeElapsed", "box_AddActivityObjective_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_185_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_184();
    l0 = self.box_EntityStatusListener_185;
    l1 = self.box_EntityStatusListener_184;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|791447133", "791447133", "LT03_040_B10_Main", "box_EntityStatusListener_185.Loaded", "box_EntityStatusListener_184.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_LT03_040_B01_Clone_Manager_3_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|156943489", "156943489", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_3.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_3_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|603980382", "603980382", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_3.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_3_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_3;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1910706006", "1910706006", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_3.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_145_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_166();
    l0 = self.box_Delay_v5_145;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1378580361", "1378580361", "LT03_040_B10_Main", "box_Delay_v5_145.TimeElapsed", "box_OutputOrder_v2_166.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_111_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_111;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1060636552", "1060636552", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_111.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_111_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_111;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|620428558", "620428558", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_111.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_111_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_111;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|15076928", "15076928", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_111.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NoWeaponMode_v3_218_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_AddActivityObjective_v2_143();
    l0 = self.box_NoWeaponMode_v3_218;
    l1 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1576991149", "1576991149", "LT03_040_B10_Main", "box_NoWeaponMode_v3_218.OnLeave", "box_AddActivityObjective_v2_143.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_78_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_78;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1472415005", "1472415005", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_78.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_78_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_78;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|847761912", "847761912", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_78.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_78_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_78;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1172725247", "1172725247", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_78.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ParticleSystem_v3_151_Started()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_144();
    l0 = self.box_SpawnAI_144;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1026838594", "1026838594", "LT03_040_B10_Main", "box_ParticleSystem_v3_151.Started", "box_SpawnAI_144.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_224_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_216();
    l0 = self.box_MultipleOR_224;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1768733443", "1768733443", "LT03_040_B10_Main", "box_MultipleOR_224.Out", "box_ListWriter_v2_216.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_182_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_196();
    l0 = self.box_ActivityInitialized_182;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1068489740", "1068489740", "LT03_040_B10_Main", "box_ActivityInitialized_182.Out", "box_ActivityMiscInfoModifier_v2_196.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_18();
    l0 = self.box_HealthListener_v6_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|645542252", "645542252", "LT03_040_B10_Main", "box_OutputOrder_v2_21.Out", "box_HealthListener_v6_18.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_HealthListener_v6_19();
    l0 = self.box_HealthListener_v6_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1502974869", "1502974869", "LT03_040_B10_Main", "box_OutputOrder_v2_21.Out", "box_HealthListener_v6_19.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_CoopActivePlayers_205_OnePlayer()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_205_OnePlayer();
    params = self:OnEnter_box_ListWriter_v2_206();
    l0 = self.box_CoopActivePlayers_205;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|923808916", "923808916", "LT03_040_B10_Main", "box_CoopActivePlayers_205.OnePlayer", "box_ListWriter_v2_206.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_205_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_209();
    l0 = self.box_CoopActivePlayers_205;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|891923400", "891923400", "LT03_040_B10_Main", "box_CoopActivePlayers_205.PlayerAdded", "box_ListWriter_v2_209.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_205_PlayerRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_ListWriter_v2_208();
    l0 = self.box_CoopActivePlayers_205;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|789436803", "789436803", "LT03_040_B10_Main", "box_CoopActivePlayers_205.PlayerRemoved", "box_ListWriter_v2_208.Remove", l0:GetLuaBox(), l1:GetLuaBox());
    -- Remove
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_205_TwoPlayers()
    local params, l0, l1;
    self:OnExit_box_CoopActivePlayers_205_TwoPlayers();
    params = self:OnEnter_box_ListWriter_v2_190();
    l0 = self.box_CoopActivePlayers_205;
    l1 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1732145091", "1732145091", "LT03_040_B10_Main", "box_CoopActivePlayers_205.TwoPlayers", "box_ListWriter_v2_190.Add", l0:GetLuaBox(), l1:GetLuaBox());
    -- Add
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_64_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_64;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1572330332", "1572330332", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_64.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_64_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_64;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|703639161", "703639161", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_64.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_64_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_64;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|645822494", "645822494", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_64.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_V2_186_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_127();
    l0 = self.box_NarrativeSceneCleanUp_V2_186;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1574309921", "1574309921", "LT03_040_B10_Main", "box_NarrativeSceneCleanUp_V2_186.Out", "box_GetLocalPlayer_v2_127.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_4_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1287091644", "1287091644", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_4.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_4_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|646021641", "646021641", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_4.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_4_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_4;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|109906474", "109906474", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_4.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_55_Clone_Killed_OUT()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_126();
    l0 = self.box_LT03_040_B01_Clone_Manager_55;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|783891865", "783891865", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_55.Clone_Killed_OUT", "box_Simple_Node_126.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_55_Faith_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_146();
    l0 = self.box_LT03_040_B01_Clone_Manager_55;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|817172627", "817172627", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_55.Faith_Activated", "box_Simple_Node_146.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_LT03_040_B01_Clone_Manager_55_Faith_Desactivated()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_7();
    l0 = self.box_LT03_040_B01_Clone_Manager_55;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|808202366", "808202366", "LT03_040_B10_Main", "box_LT03_040_B01_Clone_Manager_55.Faith_Desactivated", "box_Simple_Node_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_45_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_118()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_118");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_10");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_118_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_106()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_106");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_10C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_106_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_1C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_84_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_10_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_2C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_85_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_31_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_86()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_86");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_3C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_86_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_36_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_87()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_87");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_4C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_87_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_5");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_37_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_88()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_88");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_5C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_88_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_6");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_41_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_89()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_89");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_6C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_89_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_7");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_43_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_7C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_90_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_113()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_113");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_8");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_113_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_104()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_104");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_8C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_104_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_115()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_115");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_9");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_115_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_105()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_105");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Activate_Faith_9C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_105_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_175()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_175");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@ActivateFaith_Start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_175_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_126()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_126");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Clone_Killed");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_126_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_179()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_179");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@D1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_179_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_178()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_178");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@D2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_178_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_46()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_1");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_46_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_119()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_119");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_10");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_119_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_109()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_109");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_10C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_109_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_91()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_91");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_1C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_91_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_2");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_92()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_92");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_2C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_92_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_3");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_33_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_93()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_93");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_3C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_93_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_4");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_94()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_94");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_4C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_94_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_5");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_40_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_96()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_96");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_5C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_96_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_6");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_42_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_97()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_97");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_6C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_97_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_7");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_44_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_7C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_98_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_114()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_114");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_8");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_114_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_107()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_107");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_8C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_107_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_116()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_116");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_9");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_116_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_108()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_108");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_9C");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_108_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_177()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_177");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Faith_Start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_177_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Desactivate_Flicker");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_226()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_226");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@EnablePlayerListener");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_226_Out,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Exit_Combat");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_32_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_146()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_146");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Faith_Activated");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_146_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Faith_Desactivated");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Faith_Despawn");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_50_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Initialize_Clone");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_59_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_58");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Initialize_Enrage");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_58_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Select_Real_Faith");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_25_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_52");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Start_BuildUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_52_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Start_Enrage");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_34_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_100()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_100");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|@Start_PhaseManager");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_100_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_198()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = true,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = false,
        -- KeepWeaponHolstered,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|28443199");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_28_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_18()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#8ACCBCD8",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_142()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_142");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|61013005");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_142_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_149()
    local params;
    params = {
        -- Group,
        [0] = "2102195568664127198",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "101957856",
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_79()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2103982984529999728",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_2,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_170()
    local params;
    params = {
        -- Hour,
        [0] = 16,
        -- Minute,
        [1] = 40,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_154()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_154");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|115304546");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_154_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104936819280941711",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_187()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 495,
        -- ElevationDegree,
        [1] = 23,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_197()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 495,
        -- ElevationDegree,
        [1] = 23,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|135361654");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_65_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = true,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_192()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_192");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|149279670");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_192_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2105044269715713299",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_202()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.4,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_62()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2101670130101541012",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_1,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_148()
    local params;
    params = {
        -- Group,
        [0] = "2102195040657876390",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "3490069973",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_207()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_207");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|198673665");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_207_Added,
    });
    params = {
        -- Data,
        [0] = Globals.LT03_040_B10.ePlayer2,
        -- Input,
        [2] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_70()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2104935154572114416",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_Start,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_15()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_110()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2104384414732522815",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_8,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_57()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2101670062785058877",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_4,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_194()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_194");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|294027910");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_194_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_54");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|298566615");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_54_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
        -- ProgressDisplayType,
        [2] = 1,
        -- TotalProgress,
        [3] = Globals.LT03_040_B10.iFaithProgress,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_129()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_129");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|305620430");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_129_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160247024345029",
        -- missionLayerId,
        [1] = "27160247151041395",
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_150()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104657831358680572",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_132()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_132");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|407746009");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_132_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104936819280941711",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_165()
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
        [6] = "3469897059",
        -- StopEvent,
        [7] = "594816581",
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

function export:OnEnter_box_Bind_v4_195()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- BoneName,
        [0] = "Head",
        -- EntityA,
        [1] = l0:GetDataOutValue(0),
        -- EntityB,
        [2] = "2101187290125586233",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_213()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_213");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|450285376");
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
                [0] = self.f_box_OutputOrder_v2_213_Out_0,
                [1] = self.f_box_OutputOrder_v2_213_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_212()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_212");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|456753432");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_212_No,
    });
    params = {
        -- ent,
        [4] = Globals.LT03_040_B10.ePlayer2,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_123()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_123");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|462496519");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_123_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2105044281860320535",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_137()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_137");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|476560072");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_137_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104936810724561547",
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_61()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2101867545825940815",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_7,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_208()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_208");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|506167580");
    l0:SetConnections({
    });
    l0 = self.box_CoopActivePlayers_205;
    params = {
        -- Data,
        [0] = l0:GetDataOutValue(2),
        -- Input,
        [2] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_143()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_143");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|509230056");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_143_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B10_PlayerUI_188()
    local params;
    params = {
        -- jump,
        [0] = "updateshooting",
        -- short_range_melee_start,
        [1] = "toggle_no_weapon",
        -- sprint,
        [2] = "jump",
        -- toggle_no_weapon,
        [3] = "sprint",
        -- updateshooting,
        [4] = "short_range_melee_start",
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjective_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjective_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjective_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|559861248");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjective_v2_1_Out,
    });
    params = {
        -- CompletePreviousObjective,
        [0] = true,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
        -- TargetGroup,
        [2] = "#ED455357",
        -- Time,
        [3] = 0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_157()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_75()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_206()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_206");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|601503396");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_206_Added,
    });
    params = {
        -- Data,
        [0] = Globals.LT03_040_B10.ePlayer1,
        -- Input,
        [2] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_47()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_200()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2105238462457229799",
        -- SequenceFile,
        [4] = "sequences/zeta_main/fc5_activities/fc5_activities_lieutenants/lt03_040/lt03_040_b10_tp2.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B10_Faith_Selector_69()
    local params;
    params = {
        -- Faith_1,
        [0] = "2101670130101541012",
        -- Faith_10,
        [1] = "2104353582114421640",
        -- Faith_2,
        [2] = "2101670131103979682",
        -- Faith_3,
        [3] = "2101670132062378160",
        -- Faith_4,
        [4] = "2101670062785058877",
        -- Faith_5,
        [5] = "2101867541811991853",
        -- Faith_6,
        [6] = "2101867543942698302",
        -- Faith_7,
        [7] = "2101867545825940815",
        -- Faith_8,
        [8] = "2104353576974301828",
        -- Faith_9,
        [9] = "2104353579327306497",
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_173()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_173");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|663298565");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_173_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B10_PlayerUI_73()
    local params;
    params = {
        -- jump,
        [0] = "updateshooting",
        -- short_range_melee_start,
        [1] = "toggle_no_weapon",
        -- sprint,
        [2] = "jump",
        -- toggle_no_weapon,
        [3] = "sprint",
        -- updateshooting,
        [4] = "short_range_melee_start",
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_26()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 10,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_95()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_66()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2101670131103979682",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_2,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_122()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_122");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|775313777");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_122_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2105044255316667663",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_83()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_131()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_131");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|787846915");
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
                [0] = self.f_box_OutputOrder_v2_131_Out_0,
                [1] = self.f_box_OutputOrder_v2_131_Out_1,
                [2] = self.f_box_OutputOrder_v2_131_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_152()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_152");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|802570142");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_152_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104936809109754505",
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B10_Faith_Selector_5()
    local params;
    params = {
        -- Faith_1,
        [0] = "2103982977252882199",
        -- Faith_10,
        [1] = "2104384418899564141",
        -- Faith_2,
        [2] = "2103982984529999728",
        -- Faith_3,
        [3] = "2103982985188505533",
        -- Faith_4,
        [4] = "2103982985953966094",
        -- Faith_5,
        [5] = "2103982986495031387",
        -- Faith_6,
        [6] = "2103982987025610924",
        -- Faith_7,
        [7] = "2103982987881249017",
        -- Faith_8,
        [8] = "2104384414732522815",
        -- Faith_9,
        [9] = "2104384417265882582",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_124()
    local params;
    params = {
        -- Group,
        [0] = "2102351166911306867",
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_101()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2104353576974301828",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_8,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_215()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_215");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|888236334");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = Globals.LT03_040_B10.ePlayer1,
        -- Input,
        [2] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_103()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2104353582114421640",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_10,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnEnter_box_Bind_v4_189()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- BoneName,
        [0] = "Head",
        -- EntityA,
        [1] = l0:GetDataOutValue(0),
        -- EntityB,
        [2] = "2101187290125586233",
        -- IsMultiBeatBind,
        [3] = false,
        -- PositionOnly,
        [4] = false,
        -- RemoveOffset,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_184()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2102195348570121673",
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_30()
    local params;
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_181()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_181");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|935350679");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_181_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_181_A_le_B,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_29()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3469897059",
        -- StopEvent,
        [7] = "594816581",
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

function export:OnEnter_box_HealthModifier_v2_191()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_191");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|988108457");
    l0:SetConnections({
        -- OnRemoveCritical,
        [2] = self.f_box_HealthModifier_v2_191_OnRemoveCritical,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#ED455357",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|991866446");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_193()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_193");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1024591433");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_DynamicLightModifier_193_Disabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2105044286903971099",
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_158()
    local params;
    params = {
        -- Group,
        [0] = "2104454556592198284",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2758663278",
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_19()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = "#067C58FA",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_147()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102195032248296731",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_216()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_216");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1154977273");
    l0:SetConnections({
    });
    params = {
        -- Data,
        [0] = Globals.LT03_040_B10.ePlayer2,
        -- Input,
        [2] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_127()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_127");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1184497871");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_127_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_133()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_133");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1227245653");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_133_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104936738712556090",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_68()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_74()
    local params;
    params = {
        -- blendTime,
        [0] = 1,
        -- factor,
        [1] = 1,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_134()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_134");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1254578587");
    l0:SetConnections({
        -- Cleaned,
        [0] = self.f_box_ParticleSystem_v3_134_Cleaned,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_134_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104740878988893879",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_201()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_201");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1264976755");
    l0:SetConnections({
        -- A_gt_B,
        [2] = self.f_box_Compare_Integers_201_A_gt_B,
        -- A_le_B,
        [3] = self.f_box_Compare_Integers_201_A_le_B,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
        -- B,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_17()
    local params, l0;
    l0 = self.box_HealthListener_v6_18;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(6),
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B10_Faith_Enrage_12()
    local params;
    params = {
        -- Prefab,
        [0] = "2101728623934314681",
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_169()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_169");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1284219802");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_169_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
        -- Progress,
        [1] = Globals.LT03_040_B10.iFaithProgress,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_120()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_120");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1290035462");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_120_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2105044144488475902",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_199()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- SceneEntity,
        [3] = "2105237037555672830",
        -- SequenceFile,
        [4] = "sequences/zeta_main/fc5_activities/fc5_activities_lieutenants/lt03_040/lt03_040_b10_tp1.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_TimedSlowMotion_v2_221()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- BlendInTime,
        [1] = 2,
        -- BlendOutTime,
        [2] = 2,
        -- Duration,
        [3] = 1,
        -- PreDelay,
        [4] = 0,
        -- TimeFactor,
        [5] = 0.25,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_136()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_136");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1312993146");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_136_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104936819280941711",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_130()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_130");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1329453666");
    l0:SetConnections({
        -- Cleaned,
        [0] = self.f_box_ParticleSystem_v3_130_Cleaned,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_130_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104740833545707187",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_155()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "fadetowhite",
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_80()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2103982977252882199",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_1,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_156()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.5,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_128()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_128");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1406432223");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_128_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160247024345029",
        -- missionLayerId,
        [1] = "27160251050430209",
    };
    return params;
end;

function export:OnEnter_box_IsValueNil_v3_211()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IsValueNil_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IsValueNil_v3_211");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1409578687");
    l0:SetConnections({
        -- No,
        [0] = self.f_box_IsValueNil_v3_211_No,
    });
    params = {
        -- ent,
        [4] = Globals.LT03_040_B10.ePlayer1,
    };
    return params;
end;

function export:OnEnter_box_PlayDialog_v6_159()
    local params;
    params = {
        -- Group,
        [0] = "2104454556592198284",
        -- RelevancyTime,
        [1] = 1,
        -- ReplayIfInterrupted,
        [2] = false,
        -- SoundId,
        [3] = "2954205277",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_166()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_166");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1411889154");
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
                [0] = self.f_box_OutputOrder_v2_166_Out_0,
                [1] = self.f_box_OutputOrder_v2_166_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_190()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_190");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1417021610");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_190_Added,
    });
    params = {
        -- Data,
        [0] = Globals.LT03_040_B10.ePlayer1,
        -- Input,
        [2] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_219()
    local params;
    params = {
        -- blendTime,
        [0] = 1,
        -- factor,
        [1] = 1,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_112()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2104384418899564141",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_10,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_2()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2103982985953966094",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_4,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_196()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_196");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1506812532");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_196_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_214()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = Globals.LT03_040_B10.ePlayer2,
    };
    return params;
end;

function export:OnEnter_box_IntegerArithmetics_v2_183()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IntegerArithmetics_v2_183");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1539068068");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_IntegerArithmetics_v2_183_Out,
    });
    params = {
        -- A,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
        -- B,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1539176386");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityObjectiveMarkerModifier_v3_163()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityObjectiveMarkerModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityObjectiveMarkerModifier_v3_163");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1541658260");
    l0:SetConnections({
    });
    params = {
        -- Marker,
        [1] = "2104189010569101364",
        -- ObjectiveId,
        [2] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
    };
    return params;
end;

function export:OnEnter_box_SetBoolean_v2_171()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetBoolean_v2_171");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1566482994");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetBoolean_v2_171_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_67()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2101867543942698302",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_6,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_217()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0.5,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_72()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_SetActivityObjectiveProgress_v2_172()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/SetActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetActivityObjectiveProgress_v2_172");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1586599452");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetActivityObjectiveProgress_v2_172_Out,
    });
    params = {
        -- ObjectiveId,
        [0] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
        -- Progress,
        [1] = 0,
        -- ProgressId,
        [2] = 0,
    };
    return params;
end;

function export:OnEnter_box_DynamicLightModifier_121()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/DynamicLightModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DynamicLightModifier_121");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1593887830");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_DynamicLightModifier_121_Enabled,
    });
    params = {
        -- dynamicLightId,
        [0] = "2105044223607729419",
    };
    return params;
end;

function export:OnEnter_box_BindMarkerOverHead_v2_164()
    local params;
    params = {
        -- BoneName,
        [0] = "Head",
        -- eMobileMarker,
        [1] = "2104189010569101364",
        -- eNPC,
        [2] = Globals.LT03_040_B10.eRealFaith,
        -- fHeight,
        [3] = 0.45,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_6()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2103982987881249017",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_7,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_139()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_139");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1628751706");
    l0:SetConnections({
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_139_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104936819280941711",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_220()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_138()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_138");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1670213523");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2102195568664127198",
        -- pawns,
        [2] = "2102195568664127198",
        -- value,
        [3] = 105,
    };
    return params;
end;

function export:OnEnter_box_LockTimeOfDay_168()
    local params;
    params = {
        -- Hour,
        [0] = 16,
        -- Minute,
        [1] = 40,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_153()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2.5,
    };
    return params;
end;

function export:OnEnter_box_HealthListener_v6_210()
    local params;
    params = {
        -- AutoDisable,
        [0] = false,
        -- pawns,
        [1] = Globals.LT03_040_B10.ePlayer1,
    };
    return params;
end;

function export:OnEnter_box_AddActivityObjectiveProgress_v2_161()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/AddActivityObjectiveProgress_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AddActivityObjectiveProgress_v2_161");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1739656275");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AddActivityObjectiveProgress_v2_161_Out,
    });
    params = {
        -- MarkerTypeId,
        [0] = nil,
        -- ObjectiveId,
        [1] = {
            section = "Objectives",
            item = "LT03_040_B10_OBJ_KillFaith",
            id = "730088",
        },
        -- ProgressDisplayType,
        [2] = 1,
        -- TotalProgress,
        [3] = Globals.LT03_040_B10.iFaithProgress,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_204()
    local params;
    params = {
        -- PostFX,
        [1] = "fadetowhite",
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_135()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_135");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1769714389");
    l0:SetConnections({
        -- Cleaned,
        [0] = self.f_box_ParticleSystem_v3_135_Cleaned,
        -- Stopped,
        [3] = self.f_box_ParticleSystem_v3_135_Stopped,
    });
    params = {
        -- TargetEntities,
        [0] = "2104728356044955209",
    };
    return params;
end;

function export:OnEnter_box_ListWriter_v2_209()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ListWriter_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ListWriter_v2_209");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1782976059");
    l0:SetConnections({
        -- Added,
        [0] = self.f_box_ListWriter_v2_209_Added,
    });
    params = {
        -- Data,
        [0] = Globals.LT03_040_B10.ePlayer2,
        -- Input,
        [2] = Globals.LT03_040_B10.PlayersToTarget,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_180()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_180");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1783535965");
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
                [1] = self.f_box_OutputOrder_v2_180_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_144()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2102195568657835732",
    };
    return params;
end;

function export:OnEnter_box_Lib_Bliss_RevealGate_60()
    local params;
    params = {
        -- Door_Angle,
        [0] = 80,
        -- Left_Door,
        [2] = "2102100317809171492",
        -- Right_Door,
        [3] = "2102100325279226918",
        -- X_Offset,
        [4] = 0,
        -- Y_Offset,
        [5] = 0,
    };
    return params;
end;

function export:OnEnter_box_IndexList_v2_76()
    local params;
    params = {
        -- Index,
        [0] = PersistentGlobals.LT03_040_B10.iPhase,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_160()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_102()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2104353579327306497",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_9,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_162()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_185()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103591840306441711",
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_3()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2103982986495031387",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_5,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_140()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_140");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1922037061");
    l0:SetConnections({
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- origin,
        [1] = "2102195040657876390",
        -- pawns,
        [2] = "2102195040657876390",
        -- value,
        [3] = 105,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_145()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_111()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2104384417265882582",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_9,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_218()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_78()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2103982985188505533",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_3,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_ParticleSystem_v3_151()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ParticleSystem_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ParticleSystem_v3_151");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|1988256225");
    l0:SetConnections({
        -- Started,
        [2] = self.f_box_ParticleSystem_v3_151_Started,
    });
    params = {
        -- TargetEntities,
        [0] = "2104936814866436749",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2016597304");
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
                [0] = self.f_box_OutputOrder_v2_21_Out_0,
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_64()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2101670132062378160",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_3,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_186()
    local params;
    params = {
        -- KeepBlackBars,
        [0] = false,
        -- KeepGFHDisabled,
        [1] = true,
        -- KeepGodMode,
        [2] = false,
        -- KeepHUDMode,
        [3] = true,
        -- KeepWeaponHolstered,
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_LT03_040_B01_Clone_Manager_4()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2103982987025610924",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_6,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Random,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_20()
    local params, l0;
    l0 = self.box_HealthListener_v6_19;
    params = {
        -- Group,
        [0] = l0:GetDataOutValue(6),
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_040\\LT03_040_B10.domino|@LT03_040_B10_Main|2138753655");
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

function export:OnEnter_box_LT03_040_B01_Clone_Manager_55()
    local params;
    params = {
        -- FaithPrefab,
        [0] = "2101867541811991853",
        -- isRealFaith,
        [1] = Globals.LT03_040_B10.RealFaith_5,
        -- List,
        [2] = Globals.LT03_040_B10.Faith_Circle,
    };
    return params;
end;

function export:OnExit_box_GetLocalPlayer_v2_28_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_Bind_v4_189;
    l1:GetLuaBox().EntityA = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_18_Critical()
    local l0, l1;
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_RemoveEntity_v2_17;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_18_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_RemoveEntity_v2_17;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_18_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_RemoveEntity_v2_17;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_18_Healed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_RemoveEntity_v2_17;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_18_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_RemoveEntity_v2_17;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_18_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_18;
    l1 = self.box_RemoveEntity_v2_17;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_GetLocalPlayer_v2_194_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_Bind_v4_195;
    l1:GetLuaBox().EntityA = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_173_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bIntroDialogOver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_HealthListener_v6_19_Critical()
    local l0, l1;
    l0 = self.box_HealthListener_v6_19;
    l1 = self.box_RemoveEntity_v2_20;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_19_Damaged()
    local l0, l1;
    l0 = self.box_HealthListener_v6_19;
    l1 = self.box_RemoveEntity_v2_20;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_19_Downed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_19;
    l1 = self.box_RemoveEntity_v2_20;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_19_Healed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_19;
    l1 = self.box_RemoveEntity_v2_20;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_19_Killed()
    local l0, l1;
    l0 = self.box_HealthListener_v6_19;
    l1 = self.box_RemoveEntity_v2_20;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_HealthListener_v6_19_Revived()
    local l0, l1;
    l0 = self.box_HealthListener_v6_19;
    l1 = self.box_RemoveEntity_v2_20;
    l1:GetLuaBox().Group = l0:GetDataOutValue(6);
end;

function export:OnExit_box_GetLocalPlayer_v2_127_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    Globals.LT03_040_B10.eLocalPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_IntegerArithmetics_v2_183_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/IntegerArithmetics_v2.lua")];
    PersistentGlobals.LT03_040_B10.iPhase = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetBoolean_v2_171_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetBoolean_v2.lua")];
    self.bIntroDialogOver = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_205_OnePlayer()
    local l0;
    l0 = self.box_CoopActivePlayers_205;
    Globals.LT03_040_B10.ePlayer1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_CoopActivePlayers_205_TwoPlayers()
    local l0;
    l0 = self.box_CoopActivePlayers_205;
    Globals.LT03_040_B10.ePlayer1 = l0:GetDataOutValue(0);
    Globals.LT03_040_B10.ePlayer2 = l0:GetDataOutValue(1);
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
