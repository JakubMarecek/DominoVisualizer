LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_025/lt03_025_b10.domino
-- User graph: LT03_025_B10_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/AlternateInventoryModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1795852615.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\preload\lt03_025_lessonbink_dooropen.bik]], "CBinkResource");
        cboxRes:LoadResource([[2568794350.bnk]], "CSoundResource");
        cboxRes:LoadResource([[ui\singleplayer\video\preload\lt03_025_lessonbink_doorclosed.bik]], "CBinkResource");
        cboxRes:LoadResource([[2957050381.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_025/LT03_025_B10.LT03_025_B10_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/BinkPlayer_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Preload",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Played",
                delayed = false,
            },
            [1] = {
                name = "Preloaded",
                delayed = false,
            },
            [2] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "BinkAudio",
                type = "Sound",
            },
            [1] = {
                name = "BinkAudioType",
                type = "SoundType",
            },
            [2] = {
                name = "BinkPathID",
                type = "Video",
            },
            [3] = {
                name = "BinkSound",
                type = "Sound",
            },
            [4] = {
                name = "BinkSoundEnd",
                type = "Sound",
            },
            [5] = {
                name = "BinkSoundEndType",
                type = "SoundType",
            },
            [6] = {
                name = "BinkSoundFade",
                type = "float",
            },
            [7] = {
                name = "BinkSoundType",
                type = "SoundType",
            },
            [8] = {
                name = "BinkVolumePercent",
                type = "float",
            },
            [9] = {
                name = "Loop",
                type = "bool",
            },
            [10] = {
                name = "MaterialName",
                type = "string",
            },
            [11] = {
                name = "ScreenEntity",
                type = "entity",
            },
            [12] = {
                name = "TCR_Music",
                type = "bool",
            },
            [13] = {
                name = "WaitAvailableBinding",
                type = "bool",
            },
        },
        dataInCount = 14,
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
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/AlternateInventoryModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Main",
            },
            [1] = {
                name = "Mission",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "Switched",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "clearAfterSwitch",
                type = "bool",
            },
            [1] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 2,
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT03_025_B10_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main";
    self.Hour = 14;
    self.Minute = 0;
    self.MetaSequenceID = 0;
    self.box_ActivityInitialized_10 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|31937979");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_10_Out,
    });
    self.box_LockTimeOfDay_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.LockTimeOfDay.debug.lua");
    l0 = self.box_LockTimeOfDay_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LockTimeOfDay_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|46336070");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LockTimeOfDay_11_Out,
    });
    self.box_AlternateInventoryModifier_v2_8 = cbox:CreateBox("Domino/System/Player/AlternateInventoryModifier_v2.lua");
    l0 = self.box_AlternateInventoryModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlternateInventoryModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|149243386");
    l0:SetConnections({
        -- Switched,
        [1] = self.f_box_AlternateInventoryModifier_v2_8_Switched,
    });
    self.box_SoundModifier_v2_4 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|213548842");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_19 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|307489524");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_19_Holstered,
    });
    self.box_ActivityAcknowledgeGate_2 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|327432620");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_2_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_2_Reloaded,
    });
    self.box_BinkPlayer_v6_25 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|543007462");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_33 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|694240846");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_33_Disabled,
    });
    self.box_VisibilityModifier_30 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|729266908");
    l0:SetConnections({
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|925680337");
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
        [0] = self.f_box_MultipleOR_6_Out,
    });
    self.box_BinkPlayer_v6_26 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1045032408");
    l0:SetConnections({
        -- Stopped,
        [2] = self.f_box_BinkPlayer_v6_26_Stopped,
    });
    self.box_Delay_v5_1 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1278186498");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_1_TimeElapsed,
    });
    self.box_Delay_v5_24 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1278384548");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_24_TimeElapsed,
    });
    self.box_NarrativeFade_14 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1281093132");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_17 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1367213300");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 4,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_17_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_17_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIN",
                    value = self.f_box_PlaySequence_v8_17_SPOut__FadeIN_,
                },
                [1] = {
                    string = "ShowBlood",
                },
                [2] = {
                    string = "PlayBink",
                    value = self.f_box_PlaySequence_v8_17_SPOut__PlayBink_,
                },
                [3] = {
                    string = "FadeOUT",
                    value = self.f_box_PlaySequence_v8_17_SPOut__FadeOUT_,
                },
            },
            count = 4,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_17_Started,
    });
    self.box_Music_Quest_v2_20 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1591156984");
    l0:SetConnections({
    });
    self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1603002958");
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
        [0] = self.f_box_MultipleOR_22_Out,
    });
    self.box_StartMetaSequence_16 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1723609193");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_16_Out,
    });
    self.box_NarrativeFade_23 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1787118014");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_21 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|2106030657");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_21_Disabled,
    });
    self.box_GunsForHireSystemModifier_28 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|2128783812");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_28_Disabled,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_28();
    l0 = self.box_GunsForHireSystemModifier_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|83499622", "83499622", "LT03_025_B10_Main", "In", "box_GunsForHireSystemModifier_28.DisableGFHSystem", self, l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_20();
    l0 = self.box_Music_Quest_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|327104258", "327104258", "LT03_025_B10_Main", "box_OutputOrder_v2_13.Out", "box_Music_Quest_v2_20.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|920914571", "920914571", "LT03_025_B10_Main", "box_OutputOrder_v2_13.Out", "box_MultipleOR_22.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_LockTimeOfDay_11();
    l0 = self.box_ActivityInitialized_10;
    l1 = self.box_LockTimeOfDay_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|737157523", "737157523", "LT03_025_B10_Main", "box_ActivityInitialized_10.Out", "box_LockTimeOfDay_11.Lock", l0:GetLuaBox(), l1:GetLuaBox());
    -- Lock
    l1:Exec(0, params);
end;

function export:f_box_LockTimeOfDay_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_3();
    l0 = self.box_LockTimeOfDay_11;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1319165770", "1319165770", "LT03_025_B10_Main", "box_LockTimeOfDay_11.Out", "box_MissionBlockLayer_3.Deactivate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Deactivate
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AlternateInventoryModifier_v2_8_Switched()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_19();
    l0 = self.box_AlternateInventoryModifier_v2_8;
    l1 = self.box_NarrativeSceneSetup_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|844870488", "844870488", "LT03_025_B10_Main", "box_AlternateInventoryModifier_v2_8.Switched", "box_NarrativeSceneSetup_19.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_19_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_33();
    l0 = self.box_NarrativeSceneSetup_19;
    l1 = self.box_VisibilityModifier_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1692676652", "1692676652", "LT03_025_B10_Main", "box_NarrativeSceneSetup_19.Holstered", "box_VisibilityModifier_33.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_2_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1743219800", "1743219800", "LT03_025_B10_Main", "box_ActivityAcknowledgeGate_2.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_2_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_2;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1852458943", "1852458943", "LT03_025_B10_Main", "box_ActivityAcknowledgeGate_2.Reloaded", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1119769562", "1119769562", "LT03_025_B10_Main", "box_OutputOrder_v2_27.Out", "box_StartMetaSequence_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayer_v6_26();
    l0 = self.box_BinkPlayer_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|838520168", "838520168", "LT03_025_B10_Main", "box_OutputOrder_v2_27.Out", "box_BinkPlayer_v6_26.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_20();
    l0 = self.box_Music_Quest_v2_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1153463286", "1153463286", "LT03_025_B10_Main", "box_OutputOrder_v2_7.Out", "box_Music_Quest_v2_20.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_12();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1239483245", "1239483245", "LT03_025_B10_Main", "box_OutputOrder_v2_7.Out", "box_SoundMixing_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_33_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_1();
    l0 = self.box_VisibilityModifier_33;
    l1 = self.box_Delay_v5_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1723176480", "1723176480", "LT03_025_B10_Main", "box_VisibilityModifier_33.Disabled", "box_Delay_v5_1.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_3_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_AlternateInventoryModifier_v2_8();
    l0 = self.box_AlternateInventoryModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1731398987", "1731398987", "LT03_025_B10_Main", "box_MissionBlockLayer_3.Deactivated", "box_AlternateInventoryModifier_v2_8.Main", clone:GetLuaBox(), l0:GetLuaBox());
    -- Main
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_30();
    l0 = self.box_VisibilityModifier_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1941585001", "1941585001", "LT03_025_B10_Main", "box_OutputOrder_v2_32.Out", "box_VisibilityModifier_30.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_21();
    l0 = self.box_VisibilityModifier_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|141467214", "141467214", "LT03_025_B10_Main", "box_OutputOrder_v2_32.Out", "box_VisibilityModifier_21.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1402957175", "1402957175", "LT03_025_B10_Main", "box_MultipleOR_6.Out", "box_ActivityInitialized_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_BinkPlayer_v6_26_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_25();
    l0 = self.box_BinkPlayer_v6_26;
    l1 = self.box_BinkPlayer_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|954400604", "954400604", "LT03_025_B10_Main", "box_BinkPlayer_v6_26.Stopped", "box_BinkPlayer_v6_25.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_1_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_Delay_v5_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1967261646", "1967261646", "LT03_025_B10_Main", "box_Delay_v5_1.TimeElapsed", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_24_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_9();
    l0 = self.box_Delay_v5_24;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|53413321", "53413321", "LT03_025_B10_Main", "box_Delay_v5_24.TimeElapsed", "box_ActivityEnd_9.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_14();
    l0 = self.box_NarrativeFade_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|2078274510", "2078274510", "LT03_025_B10_Main", "box_OutputOrder_v2_5.Out", "box_NarrativeFade_14.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|2103110270", "2103110270", "LT03_025_B10_Main", "box_OutputOrder_v2_5.Out", "box_SoundModifier_v2_4.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_17_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_17;
    l1 = self.box_MultipleOR_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|295887517", "295887517", "LT03_025_B10_Main", "box_PlaySequence_v8_17.Finished", "box_MultipleOR_22.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_17_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_PlaySequence_v8_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1641327338", "1641327338", "LT03_025_B10_Main", "box_PlaySequence_v8_17.Skipped", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_17_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_23();
    l0 = self.box_PlaySequence_v8_17;
    l1 = self.box_NarrativeFade_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|554072770", "554072770", "LT03_025_B10_Main", "box_PlaySequence_v8_17.SPOut", "box_NarrativeFade_23.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_17_SPOut__FadeOUT_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = self.box_PlaySequence_v8_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|929233117", "929233117", "LT03_025_B10_Main", "box_PlaySequence_v8_17.SPOut", "box_OutputOrder_v2_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_17_SPOut__PlayBink_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_PlaySequence_v8_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|510717", "510717", "LT03_025_B10_Main", "box_PlaySequence_v8_17.SPOut", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_17_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_PlaySequence_v8_17;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1527327004", "1527327004", "LT03_025_B10_Main", "box_PlaySequence_v8_17.Started", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_22_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_18();
    l0 = self.box_MultipleOR_22;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|117976930", "117976930", "LT03_025_B10_Main", "box_MultipleOR_22.Out", "box_StopMetaSequence_v4_18.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_16_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_16_Out();
    params = self:OnEnter_box_PlaySequence_v8_17();
    l0 = self.box_StartMetaSequence_16;
    l1 = self.box_PlaySequence_v8_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1400540660", "1400540660", "LT03_025_B10_Main", "box_StartMetaSequence_16.Out", "box_PlaySequence_v8_17.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v4_18_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_24();
    l0 = self.box_Delay_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|407020256", "407020256", "LT03_025_B10_Main", "box_StopMetaSequence_v4_18.Stopped", "box_Delay_v5_24.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VisibilityModifier_21_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_26();
    l0 = self.box_VisibilityModifier_21;
    l1 = self.box_BinkPlayer_v6_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|589105521", "589105521", "LT03_025_B10_Main", "box_VisibilityModifier_21.Disabled", "box_BinkPlayer_v6_26.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(2, params);
end;

function export:f_box_GunsForHireSystemModifier_28_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_28;
    l1 = self.box_ActivityAcknowledgeGate_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|5611493", "5611493", "LT03_025_B10_Main", "box_GunsForHireSystemModifier_28.Disabled", "box_ActivityAcknowledgeGate_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|2584878");
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

function export:OnEnter_box_LockTimeOfDay_11()
    local params;
    params = {
        -- Hour,
        [0] = 14,
        -- Minute,
        [1] = 0,
    };
    return params;
end;

function export:OnEnter_box_AlternateInventoryModifier_v2_8()
    local params;
    params = {
        -- clearAfterSwitch,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_4()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "2568794350",
        -- SoundType,
        [2] = 12,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_19()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|349241634");
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

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|382935358");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_25()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\preload\lt03_025_lessonbink_dooropen.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = false,
        -- MaterialName,
        [10] = "BinkInvisible_EV20",
        -- ScreenEntity,
        [11] = "2104742587863671803",
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_33()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104742587863671803",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|702621012");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_3_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "9145750820368608",
        -- missionLayerId,
        [1] = "27160226633759882",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_30()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104742587863671803",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|815694842");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|819688145");
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
                [0] = self.f_box_OutputOrder_v2_32_Out_0,
                [1] = self.f_box_OutputOrder_v2_32_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_26()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\preload\lt03_025_lessonbink_doorclosed.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 1,
        -- Loop,
        [9] = true,
        -- MaterialName,
        [10] = "BinkInvisible_EV20",
        -- ScreenEntity,
        [11] = "2104577175345697215",
        -- TCR_Music,
        [12] = false,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_1()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_24()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_14()
    local params;
    params = {
        -- PostFX,
        [1] = "whitetoblack",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1307746582");
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

function export:OnEnter_box_PlaySequence_v8_17()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101435012676075191",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_LT03_025_Lesson/cin_lt03_025_lesson.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "whitetoblack",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|1563545090");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_A_Transitions",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_20()
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
        [6] = "1795852615",
        -- StopEvent,
        [7] = "2957050381",
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

function export:OnEnter_box_NarrativeFade_23()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_025\\LT03_025_B10.domino|@LT03_025_B10_Main|2043492168");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_18_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_21()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104577175345697215",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_28()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_16_Out()
    local l0;
    l0 = self.box_StartMetaSequence_16;
    self.MetaSequenceID = l0:GetDataOutValue(0);
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
