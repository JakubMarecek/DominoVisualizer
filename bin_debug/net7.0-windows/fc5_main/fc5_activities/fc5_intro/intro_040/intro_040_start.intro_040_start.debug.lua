LUAC�` -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_040/intro_040_start.domino
-- User graph: INTRO_040_Start
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/IgnoreSignal_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/InputPriorityModifier_v4.lua");
        cboxRes:RegisterBox("Domino/System/Player/InventoryWieldModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/PlayerSpeedModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideDisabledLogicId.lua");
        cboxRes:RegisterBox("Domino/System/UI/OverrideMenuAccessibility.lua");
        cboxRes:RegisterBox("Domino/System/UI/StartWorldMapTutorial.lua");
        cboxRes:RegisterBox("Domino/System/UI/UIListener.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1660125871.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1704258244.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_040/INTRO_040_Start.INTRO_040_Start.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.UIMode.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "CinematicMode",
            },
            [1] = {
                name = "NormalMode",
            },
            [2] = {
                name = "OutpostMode",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "OnCinematicMode",
                delayed = false,
            },
            [1] = {
                name = "OnNormalMode",
                delayed = false,
            },
            [2] = {
                name = "OnOutpostMode",
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
    metadataTable[GetPathID("Domino/System/Player/InputPriorityModifier_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Release",
            },
            [1] = {
                name = "Set",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnRelease",
                delayed = false,
            },
            [1] = {
                name = "OnSet",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "InputPriority",
                type = "string",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Player/InventoryWieldModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableAutoDraw",
            },
            [1] = {
                name = "EnableAutoDraw",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "AutoDrawDisabled",
                delayed = false,
            },
            [1] = {
                name = "AutoDrawEnabled",
                delayed = false,
            },
            [2] = {
                name = "Error",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "errorMsg",
                type = "string",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/UI/StartWorldMapTutorial.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
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
        },
        dataInCount = 0,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/UIListener.lua")] = {
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
                name = "ExitPauseMenu",
                delayed = true,
            },
            [3] = {
                name = "OpenCraftingPage",
                delayed = true,
            },
            [4] = {
                name = "OpenPauseMenu",
                delayed = true,
            },
            [5] = {
                name = "OpenPhotoMap",
                delayed = true,
            },
            [6] = {
                name = "OpenSkillPage",
                delayed = true,
            },
            [7] = {
                name = "OpenWorldMap",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
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
    self._name = "INTRO_040_Start";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start";
    self.gPlayer = nil;
    self.box_Delay_v5_40 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|33294111");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_40_TimeElapsed,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|73248081");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_IgnoreSignal_v2_27 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|106641905");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_27_Enabled,
    });
    self.box_IgnoreSignal_v2_46 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|127636932");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_46_Enabled,
    });
    self.box_IgnoreSignal_v2_37 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|132510015");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_37_Enabled,
    });
    self.box_InputPriorityModifier_v4_19 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|133425240");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_19_OnRelease,
    });
    self.box_UIMode_41 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.UIMode.debug.lua");
    l0 = self.box_UIMode_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIMode_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|164139305");
    l0:SetConnections({
        -- OnCinematicMode,
        [0] = self.f_box_UIMode_41_OnCinematicMode,
    });
    self.box_NarrativeSceneSetup_10 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|279974799");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_10_Out,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|340248386");
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
    self.box_IgnoreSignal_v2_30 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|384336613");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_30_Enabled,
    });
    self.box_NarrativeFade_6 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|426380760");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_6_FadedOut,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|553135637");
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
    self.box_InventoryWieldModifier_v2_26 = cbox:CreateBox("Domino/System/Player/InventoryWieldModifier_v2.lua");
    l0 = self.box_InventoryWieldModifier_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryWieldModifier_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|575985935");
    l0:SetConnections({
        -- AutoDrawDisabled,
        [0] = self.f_box_InventoryWieldModifier_v2_26_AutoDrawDisabled,
    });
    self.box_NarrativeFade_22 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|579035888");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_22_FadedIn,
    });
    self.box_OverrideMenuAccessibility_12 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|631588272");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_12_Out,
    });
    self.box_OverrideMenuAccessibility_15 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|783062371");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_15_Out,
    });
    self.box_PlayerSpeedModifier_v3_44 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|823636450");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_44_ApplySpeedFactorOut,
    });
    self.box_IgnoreSignal_v2_45 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|829700323");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_45_Enabled,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|902140230");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_StartWorldMapTutorial_20 = cbox:CreateBox("Domino/System/UI/StartWorldMapTutorial.lua");
    l0 = self.box_StartWorldMapTutorial_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartWorldMapTutorial_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|945713259");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_StartWorldMapTutorial_20_Started,
    });
    self.box_PhoneCallExclusivityModifier_31 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1016899430");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_31_Enabled,
    });
    self.box_OverrideMenuAccessibility_16 = cbox:CreateBox("Domino/System/UI/OverrideMenuAccessibility.lua");
    l0 = self.box_OverrideMenuAccessibility_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideMenuAccessibility_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1020952718");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_OverrideMenuAccessibility_16_Out,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1236457614");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_IgnoreSignal_v2_43 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1299175880");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_43_Enabled,
    });
    self.box_NarrativeFade_18 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1391142267");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_18_FadedIn,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_21 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1405382264");
    l0:SetConnections({
    });
    self.box_NoWeaponMode_v3_47 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1484169619");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_47_OnEnter,
    });
    self.box_IgnoreSignal_v2_48 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1487139525");
    l0:SetConnections({
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1605293039");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_Delay_v5_39 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1608930958");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_39_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_39_TimeElapsed,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1639072822");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_InventoryWieldModifier_v2_49 = cbox:CreateBox("Domino/System/Player/InventoryWieldModifier_v2.lua");
    l0 = self.box_InventoryWieldModifier_v2_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InventoryWieldModifier_v2_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1662727205");
    l0:SetConnections({
        -- AutoDrawDisabled,
        [0] = self.f_box_InventoryWieldModifier_v2_49_AutoDrawDisabled,
    });
    self.box_RequestPhoneCall_v2_32 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1680811470");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_32_Completed,
        -- Failed,
        [2] = self.f_box_RequestPhoneCall_v2_32_Failed,
    });
    self.box_PlayerSpeedModifier_v3_33 = cbox:CreateBox("Domino/System/PlayerSpeedModifier_v3.lua");
    l0 = self.box_PlayerSpeedModifier_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayerSpeedModifier_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1715290283");
    l0:SetConnections({
        -- ApplySpeedFactorOut,
        [0] = self.f_box_PlayerSpeedModifier_v3_33_ApplySpeedFactorOut,
    });
    self.box_InputPriorityModifier_v4_42 = cbox:CreateBox("Domino/System/Player/InputPriorityModifier_v4.lua");
    l0 = self.box_InputPriorityModifier_v4_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_InputPriorityModifier_v4_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1724425974");
    l0:SetConnections({
        -- OnRelease,
        [0] = self.f_box_InputPriorityModifier_v4_42_OnRelease,
    });
    self.box_IgnoreSignal_v2_25 = cbox:CreateBox("Domino/System/Player/IgnoreSignal_v2.lua");
    l0 = self.box_IgnoreSignal_v2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_IgnoreSignal_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1874832783");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_IgnoreSignal_v2_25_Enabled,
    });
    self.box_NoWeaponMode_v3_29 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1894063414");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_29_OnEnter,
    });
    self.box_RequestPhoneCall_v2_28 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1980290378");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_28_Completed,
    });
    self.box_UIListener_35 = cbox:CreateBox("Domino/System/UI/UIListener.lua");
    l0 = self.box_UIListener_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UIListener_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|2033209217");
    l0:SetConnections({
        -- ExitPauseMenu,
        [2] = self.f_box_UIListener_35_ExitPauseMenu,
    });
    self.box_NarrativeSceneSetup_50 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|2097268413");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_50_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1959764613", "1959764613", "INTRO_040_Start", "In", "box_ActivityAcknowledgeGate_4.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_ActivityRetry_3();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1968959626", "1968959626", "INTRO_040_Start", "OnLeaveZone", "box_ActivityRetry_3.Retry", self, l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_40_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_40;
    l1 = self.box_UIMode_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|23715124", "23715124", "INTRO_040_Start", "box_Delay_v5_40.TimeElapsed", "box_UIMode_41.CinematicMode", l0:GetLuaBox(), l1:GetLuaBox());
    -- CinematicMode
    l1:Exec(0, {
    });
end;

function export:f_box_GetPlayerGroup_v2_7_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_7_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|714593536", "714593536", "INTRO_040_Start", "box_GetPlayerGroup_v2_7.Out", "box_OutputOrder_v2_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_38();
    l0 = self.box_Delay_v5_34;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|876801968", "876801968", "INTRO_040_Start", "box_Delay_v5_34.TimeElapsed", "box_OutputOrder_v2_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_38_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_15();
    l0 = self.box_OverrideMenuAccessibility_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|2114632303", "2114632303", "INTRO_040_Start", "box_OutputOrder_v2_38.Out", "box_OverrideMenuAccessibility_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_38_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_UIListener_35();
    l0 = self.box_UIListener_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|265064717", "265064717", "INTRO_040_Start", "box_OutputOrder_v2_38.Out", "box_UIListener_35.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_27_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_30();
    l0 = self.box_IgnoreSignal_v2_27;
    l1 = self.box_IgnoreSignal_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|2063532031", "2063532031", "INTRO_040_Start", "box_IgnoreSignal_v2_27.Enabled", "box_IgnoreSignal_v2_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_46_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_48();
    l0 = self.box_IgnoreSignal_v2_46;
    l1 = self.box_IgnoreSignal_v2_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1559457387", "1559457387", "INTRO_040_Start", "box_IgnoreSignal_v2_46.Enabled", "box_IgnoreSignal_v2_48.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_37_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_18();
    l0 = self.box_IgnoreSignal_v2_37;
    l1 = self.box_NarrativeFade_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|609304014", "609304014", "INTRO_040_Start", "box_IgnoreSignal_v2_37.Enabled", "box_NarrativeFade_18.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_InputPriorityModifier_v4_19_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_29();
    l0 = self.box_InputPriorityModifier_v4_19;
    l1 = self.box_NoWeaponMode_v3_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|272355792", "272355792", "INTRO_040_Start", "box_InputPriorityModifier_v4_19.OnRelease", "box_NoWeaponMode_v3_29.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_UIMode_41_OnCinematicMode()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_50();
    l0 = self.box_UIMode_41;
    l1 = self.box_NarrativeSceneSetup_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1956844232", "1956844232", "INTRO_040_Start", "box_UIMode_41.OnCinematicMode", "box_NarrativeSceneSetup_50.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_39();
    l0 = self.box_NarrativeSceneSetup_10;
    l1 = self.box_Delay_v5_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|192505250", "192505250", "INTRO_040_Start", "box_NarrativeSceneSetup_10.Out", "box_Delay_v5_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_5_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_5;
    l1 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1202570108", "1202570108", "INTRO_040_Start", "box_MultipleOR_5.Out", "box_ActivityInitialized_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_IgnoreSignal_v2_30_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_37();
    l0 = self.box_IgnoreSignal_v2_30;
    l1 = self.box_IgnoreSignal_v2_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|421864147", "421864147", "INTRO_040_Start", "box_IgnoreSignal_v2_30.Enabled", "box_IgnoreSignal_v2_37.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_6_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_NarrativeFade_6;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|2115723981", "2115723981", "INTRO_040_Start", "box_NarrativeFade_6.FadedOut", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_23_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_40();
    l0 = self.box_Delay_v5_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1829827522", "1829827522", "INTRO_040_Start", "box_ActivityMiscInfoModifier_v2_23.Out", "box_Delay_v5_40.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_6();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_NarrativeFade_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1695049671", "1695049671", "INTRO_040_Start", "box_MultipleOR_36.Out", "box_NarrativeFade_6.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_InventoryWieldModifier_v2_26_AutoDrawDisabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_25();
    l0 = self.box_InventoryWieldModifier_v2_26;
    l1 = self.box_IgnoreSignal_v2_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|2145355948", "2145355948", "INTRO_040_Start", "box_InventoryWieldModifier_v2_26.AutoDrawDisabled", "box_IgnoreSignal_v2_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_22_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_10();
    l0 = self.box_NarrativeFade_22;
    l1 = self.box_NarrativeSceneSetup_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|285805181", "285805181", "INTRO_040_Start", "box_NarrativeFade_22.FadedIn", "box_NarrativeSceneSetup_10.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_OverrideMenuAccessibility_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_OverrideMenuAccessibility_12;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|774004211", "774004211", "INTRO_040_Start", "box_OverrideMenuAccessibility_12.Out", "box_Delay_v5_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OverrideMenuAccessibility_15_Out()
    local l0, l1;
    l0 = self.box_OverrideMenuAccessibility_15;
    l1 = self.box_StartWorldMapTutorial_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|234379432", "234379432", "INTRO_040_Start", "box_OverrideMenuAccessibility_15.Out", "box_StartWorldMapTutorial_20.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, {
    });
end;

function export:f_box_PlayerSpeedModifier_v3_44_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_47();
    l0 = self.box_PlayerSpeedModifier_v3_44;
    l1 = self.box_NoWeaponMode_v3_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|2065254310", "2065254310", "INTRO_040_Start", "box_PlayerSpeedModifier_v3_44.ApplySpeedFactorOut", "box_NoWeaponMode_v3_47.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_IgnoreSignal_v2_45_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_43();
    l0 = self.box_IgnoreSignal_v2_45;
    l1 = self.box_IgnoreSignal_v2_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|681626594", "681626594", "INTRO_040_Start", "box_IgnoreSignal_v2_45.Enabled", "box_IgnoreSignal_v2_43.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1776594383", "1776594383", "INTRO_040_Start", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1761290268", "1761290268", "INTRO_040_Start", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_5.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StartWorldMapTutorial_20_Started()
    local params, l0, l1;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_21();
    l0 = self.box_StartWorldMapTutorial_20;
    l1 = self.box_CHEAT_SetEnvironmentTimeScale_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|709624590", "709624590", "INTRO_040_Start", "box_StartWorldMapTutorial_20.Started", "box_CHEAT_SetEnvironmentTimeScale_21.SetTimeScale", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeScale
    l1:Exec(0, params);
end;

function export:f_box_PhoneCallExclusivityModifier_31_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_PhoneCallExclusivityModifier_31;
    l1 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|62985745", "62985745", "INTRO_040_Start", "box_PhoneCallExclusivityModifier_31.Enabled", "box_Delay_v5_9.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OverrideMenuAccessibility_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_23();
    l0 = self.box_OverrideMenuAccessibility_16;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1699816943", "1699816943", "INTRO_040_Start", "box_OverrideMenuAccessibility_16.Out", "box_ActivityMiscInfoModifier_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideMenuAccessibility_12();
    l0 = self.box_OverrideMenuAccessibility_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|490752692", "490752692", "INTRO_040_Start", "box_OutputOrder_v2_13.Out", "box_OverrideMenuAccessibility_12.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_11();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|366978989", "366978989", "INTRO_040_Start", "box_OutputOrder_v2_13.Out", "box_OverrideDisabledLogicId_11.Reputation", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reputation
    l0:Exec(36, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_7();
    l0 = self.box_ActivityInitialized_1;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1805555877", "1805555877", "INTRO_040_Start", "box_ActivityInitialized_1.Out", "box_GetPlayerGroup_v2_7.FriendlyPlayers", l0:GetLuaBox(), l1:GetLuaBox());
    -- FriendlyPlayers
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_43_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_46();
    l0 = self.box_IgnoreSignal_v2_43;
    l1 = self.box_IgnoreSignal_v2_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1428296462", "1428296462", "INTRO_040_Start", "box_IgnoreSignal_v2_43.Enabled", "box_IgnoreSignal_v2_46.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NarrativeFade_18_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_24();
    l0 = self.box_NarrativeFade_18;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|316697023", "316697023", "INTRO_040_Start", "box_NarrativeFade_18.FadedIn", "box_ActivityMiscInfoModifier_v2_24.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityMiscInfoModifier_v2_24_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1096581004", "1096581004", "INTRO_040_Start", "box_ActivityMiscInfoModifier_v2_24.Out", "box_PhoneCallExclusivityModifier_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_NoWeaponMode_v3_47_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryWieldModifier_v2_49();
    l0 = self.box_NoWeaponMode_v3_47;
    l1 = self.box_InventoryWieldModifier_v2_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1327688607", "1327688607", "INTRO_040_Start", "box_NoWeaponMode_v3_47.OnEnter", "box_InventoryWieldModifier_v2_49.DisableAutoDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableAutoDraw
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_Delay_v5_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1089468094", "1089468094", "INTRO_040_Start", "box_Delay_v5_9.TimeElapsed", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_39_Started()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_42();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_InputPriorityModifier_v4_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1835912870", "1835912870", "INTRO_040_Start", "box_Delay_v5_39.Started", "box_InputPriorityModifier_v4_42.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_39_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_28();
    l0 = self.box_Delay_v5_39;
    l1 = self.box_RequestPhoneCall_v2_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1506010144", "1506010144", "INTRO_040_Start", "box_Delay_v5_39.TimeElapsed", "box_RequestPhoneCall_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_RequestPhoneCall_v2_32();
    l0 = self.box_Delay_v5_17;
    l1 = self.box_RequestPhoneCall_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|523170214", "523170214", "INTRO_040_Start", "box_Delay_v5_17.TimeElapsed", "box_RequestPhoneCall_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_InventoryWieldModifier_v2_49_AutoDrawDisabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_45();
    l0 = self.box_InventoryWieldModifier_v2_49;
    l1 = self.box_IgnoreSignal_v2_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1223621525", "1223621525", "INTRO_040_Start", "box_InventoryWieldModifier_v2_49.AutoDrawDisabled", "box_IgnoreSignal_v2_45.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_RequestPhoneCall_v2_32_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_32;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|509156461", "509156461", "INTRO_040_Start", "box_RequestPhoneCall_v2_32.Completed", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_RequestPhoneCall_v2_32_Failed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_32;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|75986671", "75986671", "INTRO_040_Start", "box_RequestPhoneCall_v2_32.Failed", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlayerSpeedModifier_v3_33_ApplySpeedFactorOut()
    local params, l0, l1;
    params = self:OnEnter_box_InputPriorityModifier_v4_19();
    l0 = self.box_PlayerSpeedModifier_v3_33;
    l1 = self.box_InputPriorityModifier_v4_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1700846860", "1700846860", "INTRO_040_Start", "box_PlayerSpeedModifier_v3_33.ApplySpeedFactorOut", "box_InputPriorityModifier_v4_19.Release", l0:GetLuaBox(), l1:GetLuaBox());
    -- Release
    l1:Exec(0, params);
end;

function export:f_box_InputPriorityModifier_v4_42_OnRelease()
    local params, l0, l1;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_44();
    l0 = self.box_InputPriorityModifier_v4_42;
    l1 = self.box_PlayerSpeedModifier_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1754114971", "1754114971", "INTRO_040_Start", "box_InputPriorityModifier_v4_42.OnRelease", "box_PlayerSpeedModifier_v3_44.ApplySpeedFactor", l0:GetLuaBox(), l1:GetLuaBox());
    -- ApplySpeedFactor
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayerSpeedModifier_v3_33();
    l0 = self.box_PlayerSpeedModifier_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|480371568", "480371568", "INTRO_040_Start", "box_OutputOrder_v2_8.Out", "box_PlayerSpeedModifier_v3_33.ApplySpeedFactor", clone:GetLuaBox(), l0:GetLuaBox());
    -- ApplySpeedFactor
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideDisabledLogicId_2();
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|255908557", "255908557", "INTRO_040_Start", "box_OutputOrder_v2_8.Out", "box_OverrideDisabledLogicId_2.Interaction", clone:GetLuaBox(), l0:GetLuaBox());
    -- Interaction
    l0:Exec(29, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_IgnoreSignal_v2_25_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_IgnoreSignal_v2_27();
    l0 = self.box_IgnoreSignal_v2_25;
    l1 = self.box_IgnoreSignal_v2_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1924146715", "1924146715", "INTRO_040_Start", "box_IgnoreSignal_v2_25.Enabled", "box_IgnoreSignal_v2_27.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_NoWeaponMode_v3_29_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_InventoryWieldModifier_v2_26();
    l0 = self.box_NoWeaponMode_v3_29;
    l1 = self.box_InventoryWieldModifier_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|431042091", "431042091", "INTRO_040_Start", "box_NoWeaponMode_v3_29.OnEnter", "box_InventoryWieldModifier_v2_26.DisableAutoDraw", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableAutoDraw
    l1:Exec(0, params);
end;

function export:f_box_RequestPhoneCall_v2_28_Completed()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideMenuAccessibility_16();
    l0 = self.box_RequestPhoneCall_v2_28;
    l1 = self.box_OverrideMenuAccessibility_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|840956071", "840956071", "INTRO_040_Start", "box_RequestPhoneCall_v2_28.Completed", "box_OverrideMenuAccessibility_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_UIListener_35_ExitPauseMenu()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_22();
    l0 = self.box_UIListener_35;
    l1 = self.box_NarrativeFade_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1331000066", "1331000066", "INTRO_040_Start", "box_UIListener_35.ExitPauseMenu", "box_NarrativeFade_22.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_14();
    l0 = self.box_NarrativeSceneSetup_50;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1465048160", "1465048160", "INTRO_040_Start", "box_NarrativeSceneSetup_50.Out", "box_ActivityEnd_14.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Delay_v5_40()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|46542901");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.35,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|78643676");
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

function export:OnEnter_box_IgnoreSignal_v2_27()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "use",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_46()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "crouch",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_37()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "zipline",
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_19()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_10()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_30()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "crouch",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_6()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|469771872");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_23_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = true,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|524787033");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_InventoryWieldModifier_v2_26()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_22()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_12()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- LootMenuEnabled,
        [4] = true,
        -- OnlineMenuEnabled,
        [5] = false,
        -- PerksMenuEnabled,
        [6] = false,
        -- ResistanceMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_15()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = false,
        -- LootMenuEnabled,
        [4] = true,
        -- OnlineMenuEnabled,
        [5] = false,
        -- PerksMenuEnabled,
        [6] = false,
        -- ResistanceMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_44()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_45()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_OverrideMenuAccessibility_16()
    local params;
    params = {
        -- ActivityLogMenuEnabled,
        [0] = true,
        -- AvatarCreationMenuEnabled,
        [1] = false,
        -- AvatarCustomizationMenuEnabled,
        [2] = true,
        -- ChallengeMenuEnabled,
        [3] = true,
        -- LootMenuEnabled,
        [4] = true,
        -- OnlineMenuEnabled,
        [5] = true,
        -- PerksMenuEnabled,
        [6] = true,
        -- ResistanceMenuEnabled,
        [7] = true,
        -- SquadMenuEnabled,
        [8] = true,
        -- WorldmapMenuEnabled,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OverrideDisabledLogicId_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/OverrideDisabledLogicId.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideDisabledLogicId_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1058485202");
    l0:SetConnections({
    });
    params = {
        -- disableUI,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1144812589");
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
                [0] = self.f_box_OutputOrder_v2_13_Out_0,
                [1] = self.f_box_OutputOrder_v2_13_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_43()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "use",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_18()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_21()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1460573532");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_24_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_47()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_IgnoreSignal_v2_48()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "zipline",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_39()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.1,
    };
    return params;
end;

function export:OnEnter_box_InventoryWieldModifier_v2_49()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1674340849");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_32()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1660125871",
    };
    return params;
end;

function export:OnEnter_box_PlayerSpeedModifier_v3_33()
    local params;
    params = {
        -- blendTime,
        [0] = 0,
        -- factor,
        [1] = 0,
        -- Players,
        [2] = self.gPlayer,
    };
    return params;
end;

function export:OnEnter_box_InputPriorityModifier_v4_42()
    local params;
    params = {
        -- InputPriority,
        [0] = "cinema",
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|1857327287");
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

function export:OnEnter_box_IgnoreSignal_v2_25()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- signal,
        [1] = "jump",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_29()
    local params;
    params = {
        -- pawns,
        [0] = "#ED455357",
        -- useAnims,
        [1] = false,
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_28()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = true,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1704258244",
    };
    return params;
end;

function export:OnEnter_box_UIListener_35()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ActivityRetry_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_040\\INTRO_040_Start.domino|@INTRO_040_Start|2089666137");
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

function export:OnEnter_box_NarrativeSceneSetup_50()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_7_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
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
