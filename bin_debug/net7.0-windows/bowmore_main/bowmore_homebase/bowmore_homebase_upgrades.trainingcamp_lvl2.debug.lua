LUAC�0 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_homebase/bowmore_homebase_upgrades.domino
-- User graph: TrainingCamp_Lvl2
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanup_Homebase.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EndStandaloneScript.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/DisplayCinematicOverlay.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayersVisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[184354181.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3799000385.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Homebase/Bowmore_Homebase_Upgrades.TrainingCamp_Lvl2.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanup_Homebase.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/EndStandaloneScript.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "End",
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
    metadataTable[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "BottomDescriptionId",
                type = "oasis",
            },
            [1] = {
                name = "DisplayGameTimeAsButtonDescription",
                type = "bool",
            },
            [2] = {
                name = "IsInfrastructureUpgrade",
                type = "bool",
            },
            [3] = {
                name = "TitleId",
                type = "oasis",
            },
            [4] = {
                name = "TopDescriptionId",
                type = "oasis",
            },
        },
        dataInCount = 5,
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
    metadataTable[GetPathID("Domino/System/Narrative/StopMetaSequence_v5.lua")] = {
        stateless = false,
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
                delayed = true,
            },
            [1] = {
                name = "Stopped",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ID",
                type = "int",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/Player/PlayersVisibilityModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetAllInvisible",
            },
            [1] = {
                name = "SetAllVisible",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetAllInvisible",
                delayed = false,
            },
            [1] = {
                name = "OnSetAllVisible",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "ExcludeLocalPlayer",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    self._name = "TrainingCamp_Lvl2";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2";
    self.Out = DummyFunction;
    self.MetaSequenceID = 0;
    self.box_NarrativeFade_79 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_79;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|41927014");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_79_FadedIn,
    });
    self.box_PlaySequence_v8_14 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|72981775");
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
    });
    self.box_Delay_v5_3 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|97446131");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_VisibilityModifier_64 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|105513813");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_35 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|115459907");
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
    });
    self.box_Gate_v3_72 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|185280814");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_72_Out,
    });
    self.box_PlayersVisibilityModifier_18 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|196252737");
    l0:SetConnections({
        -- OnSetAllVisible,
        [1] = self.f_box_PlayersVisibilityModifier_18_OnSetAllVisible,
    });
    self.box_PlaySequence_v8_26 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|219895301");
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
    });
    self.box_Gate_v3_62 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|299039571");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_62_Out,
    });
    self.box_Gate_v3_33 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|334847715");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_33_Out,
    });
    self.box_PlaySequence_v8_28 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|487422916");
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
    });
    self.box_VisibilityModifier_52 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_52;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|561739785");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_12 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|724766794");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_12_Stopped,
    });
    self.box_NarrativeSceneCleanup_Homebase_83 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanup_Homebase.debug.lua");
    l0 = self.box_NarrativeSceneCleanup_Homebase_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanup_Homebase_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|733992404");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanup_Homebase_83_Out,
    });
    self.box_VisibilityModifier_45 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|840107871");
    l0:SetConnections({
    });
    self.box_Gate_v3_74 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_74;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|915543483");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_74_Out,
    });
    self.box_PlayersVisibilityModifier_17 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|935716395");
    l0:SetConnections({
        -- OnSetAllInvisible,
        [0] = self.f_box_PlayersVisibilityModifier_17_OnSetAllInvisible,
    });
    self.box_TeleportPawns_16 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|994668436");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_16_Out,
    });
    self.box_StartMetaSequence_2 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1011388930");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_2_Out,
    });
    self.box_VisibilityModifier_47 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1013695961");
    l0:SetConnections({
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1061717583");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1132493137");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
    self.box_PlaySequence_v8_70 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1189197654");
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
    });
    self.box_VisibilityModifier_53 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1198428762");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_71 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1227872351");
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
    });
    self.box_PostFx_v3_84 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1274793641");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_29 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1289480442");
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
    });
    self.box_Music_Quest_v2_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1332420433");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_68 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_68");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1345336569");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_46 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1375824749");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_Homebase_85 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua");
    l0 = self.box_NarrativeSceneSetup_Homebase_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_Homebase_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1407767131");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_Homebase_85_Out,
    });
    self.box_VisibilityModifier_48 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1433793995");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_67 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1433960217");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_65 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1464949901");
    l0:SetConnections({
    });
    self.box_Gate_v3_32 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1490051482");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_32_Out,
    });
    self.box_NarrativeFade_7 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1538673126");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_7_FadedIn,
    });
    self.box_PlaySequence_v8_22 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1567358115");
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
    });
    self.box_PlaySequence_v8_13 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1628315315");
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
        [0] = self.f_box_PlaySequence_v8_13_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_13_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIN",
                    value = self.f_box_PlaySequence_v8_13_SPOut__FadeIN_,
                },
                [1] = {
                    string = "Start_UI",
                    value = self.f_box_PlaySequence_v8_13_SPOut__Start_UI_,
                },
                [2] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_13_SPOut__FadeOut_,
                },
            },
            count = 3,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_13_Started,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1647869987");
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
    self.box_VisibilityModifier_69 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1685164172");
    l0:SetConnections({
    });
    self.box_Gate_v3_76 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_76;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1733046084");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_76_Out,
    });
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1795975970");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_VisibilityModifier_44 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1901313798");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_66 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1961319984");
    l0:SetConnections({
    });
    self.box_Gate_v3_20 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2031988800");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_20_Out,
    });
    self.box_VisibilityModifier_40 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2049187137");
    l0:SetConnections({
    });
    self.box_PostFx_v3_81 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_81;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2091678983");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1581066049", "1581066049", "TrainingCamp_Lvl2", "In", "box_EntityStatusListener_5.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_82_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_74();
    l0 = self.box_Gate_v3_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|718863228", "718863228", "TrainingCamp_Lvl2", "box_Simple_Node_82.Out", "box_Gate_v3_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_76();
    l0 = self.box_Gate_v3_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1533552743", "1533552743", "TrainingCamp_Lvl2", "box_Simple_Node_82.Out", "box_Gate_v3_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_32();
    l0 = self.box_Gate_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1190062110", "1190062110", "TrainingCamp_Lvl2", "box_Simple_Node_82.Out", "box_Gate_v3_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1515196336", "1515196336", "TrainingCamp_Lvl2", "box_Simple_Node_82.Out", "box_Gate_v3_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_72();
    l0 = self.box_Gate_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1760270987", "1760270987", "TrainingCamp_Lvl2", "box_Simple_Node_82.Out", "box_Gate_v3_72.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_62();
    l0 = self.box_Gate_v3_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|617459953", "617459953", "TrainingCamp_Lvl2", "box_Simple_Node_82.Out", "box_Gate_v3_62.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_PlaySequence_v8_26();
    l0 = self.box_PlaySequence_v8_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1466930215", "1466930215", "TrainingCamp_Lvl2", "box_Simple_Node_82.Out", "box_PlaySequence_v8_26.Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Skip
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2144321310", "2144321310", "TrainingCamp_Lvl2", "box_Simple_Node_82.Out", "box_Gate_v3_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_79_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_NarrativeFade_79;
    l1 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|809119845", "809119845", "TrainingCamp_Lvl2", "box_NarrativeFade_79.FadedIn", "box_Delay_v5_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_78();
    l0 = self.box_Delay_v5_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1540970848", "1540970848", "TrainingCamp_Lvl2", "box_Delay_v5_3.TimeElapsed", "box_OutputOrder_v2_78.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_7();
    l0 = self.box_NarrativeFade_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1674272975", "1674272975", "TrainingCamp_Lvl2", "box_OutputOrder_v2_51.Out", "box_NarrativeFade_7.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCinematicOverlay_49();
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1293729039", "1293729039", "TrainingCamp_Lvl2", "box_OutputOrder_v2_51.Out", "box_DisplayCinematicOverlay_49.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_72_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_28();
    l0 = self.box_Gate_v3_72;
    l1 = self.box_PlaySequence_v8_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|981999521", "981999521", "TrainingCamp_Lvl2", "box_Gate_v3_72.Out", "box_PlaySequence_v8_28.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_60_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_28();
    l0 = self.box_PlaySequence_v8_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|416766006", "416766006", "TrainingCamp_Lvl2", "box_OutputOrder_v2_60.Out", "box_PlaySequence_v8_28.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_60_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_72();
    l0 = self.box_Gate_v3_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|957866294", "957866294", "TrainingCamp_Lvl2", "box_OutputOrder_v2_60.Out", "box_Gate_v3_72.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_PlayersVisibilityModifier_18_OnSetAllVisible()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_PlayersVisibilityModifier_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1164945033", "1164945033", "TrainingCamp_Lvl2", "box_PlayersVisibilityModifier_18.OnSetAllVisible", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayersVisibilityModifier_18();
    l0 = self.box_PlayersVisibilityModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1830569707", "1830569707", "TrainingCamp_Lvl2", "box_OutputOrder_v2_43.Out", "box_PlayersVisibilityModifier_18.SetAllVisible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAllVisible
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1123705046", "1123705046", "TrainingCamp_Lvl2", "box_OutputOrder_v2_43.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_48();
    l0 = self.box_VisibilityModifier_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1600187418", "1600187418", "TrainingCamp_Lvl2", "box_OutputOrder_v2_43.Out", "box_VisibilityModifier_48.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_62_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_71();
    l0 = self.box_Gate_v3_62;
    l1 = self.box_PlaySequence_v8_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1555802031", "1555802031", "TrainingCamp_Lvl2", "box_Gate_v3_62.Out", "box_PlaySequence_v8_71.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_33_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_70();
    l0 = self.box_Gate_v3_33;
    l1 = self.box_PlaySequence_v8_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|705238492", "705238492", "TrainingCamp_Lvl2", "box_Gate_v3_33.Out", "box_PlaySequence_v8_70.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1317287341", "1317287341", "TrainingCamp_Lvl2", "box_OutputOrder_v2_55.Out", "box_Delay_v5_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_54();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1097669613", "1097669613", "TrainingCamp_Lvl2", "box_OutputOrder_v2_55.Out", "box_SoundMixing_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_22();
    l0 = self.box_PlaySequence_v8_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|622424550", "622424550", "TrainingCamp_Lvl2", "box_OutputOrder_v2_27.Out", "box_PlaySequence_v8_22.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_20();
    l0 = self.box_Gate_v3_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1976434253", "1976434253", "TrainingCamp_Lvl2", "box_OutputOrder_v2_27.Out", "box_Gate_v3_20.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_70();
    l0 = self.box_PlaySequence_v8_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2046024322", "2046024322", "TrainingCamp_Lvl2", "box_OutputOrder_v2_25.Out", "box_PlaySequence_v8_70.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_33();
    l0 = self.box_Gate_v3_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1725790624", "1725790624", "TrainingCamp_Lvl2", "box_OutputOrder_v2_25.Out", "box_Gate_v3_33.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_61_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_71();
    l0 = self.box_PlaySequence_v8_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1648671622", "1648671622", "TrainingCamp_Lvl2", "box_OutputOrder_v2_61.Out", "box_PlaySequence_v8_71.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_61_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_62();
    l0 = self.box_Gate_v3_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1042606227", "1042606227", "TrainingCamp_Lvl2", "box_OutputOrder_v2_61.Out", "box_Gate_v3_62.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_StopMetaSequence_v5_12_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_16();
    l0 = self.box_StopMetaSequence_v5_12;
    l1 = self.box_TeleportPawns_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|184496938", "184496938", "TrainingCamp_Lvl2", "box_StopMetaSequence_v5_12.Stopped", "box_TeleportPawns_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_78_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_79();
    l0 = self.box_NarrativeFade_79;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|338267565", "338267565", "TrainingCamp_Lvl2", "box_OutputOrder_v2_78.Out", "box_NarrativeFade_79.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_78_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_81();
    l0 = self.box_PostFx_v3_81;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1165265903", "1165265903", "TrainingCamp_Lvl2", "box_OutputOrder_v2_78.Out", "box_PostFx_v3_81.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayersVisibilityModifier_17();
    l0 = self.box_PlayersVisibilityModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1152879182", "1152879182", "TrainingCamp_Lvl2", "box_OutputOrder_v2_36.Out", "box_PlayersVisibilityModifier_17.SetAllInvisible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAllInvisible
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_38();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1834781973", "1834781973", "TrainingCamp_Lvl2", "box_OutputOrder_v2_36.Out", "box_AgentGroupModifier_38.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_47();
    l0 = self.box_VisibilityModifier_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1101013762", "1101013762", "TrainingCamp_Lvl2", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_47.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_52();
    l0 = self.box_VisibilityModifier_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|879642451", "879642451", "TrainingCamp_Lvl2", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_52.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_65();
    l0 = self.box_VisibilityModifier_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1037689146", "1037689146", "TrainingCamp_Lvl2", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_65.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_64();
    l0 = self.box_VisibilityModifier_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|665548795", "665548795", "TrainingCamp_Lvl2", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_64.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_66();
    l0 = self.box_VisibilityModifier_66;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|180843656", "180843656", "TrainingCamp_Lvl2", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_66.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_NarrativeSceneCleanup_Homebase_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndStandaloneScript_6();
    l0 = self.box_NarrativeSceneCleanup_Homebase_83;
    l1 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1701136809", "1701136809", "TrainingCamp_Lvl2", "box_NarrativeSceneCleanup_Homebase_83.Out", "box_EndStandaloneScript_6.End", l0:GetLuaBox(), l1:GetLuaBox());
    -- End
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_34_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|989606993", "989606993", "TrainingCamp_Lvl2", "box_GetActivityState_v2_34.Completed", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_58_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_60();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1604213898", "1604213898", "TrainingCamp_Lvl2", "box_GetActivityState_v2_58.Completed", "box_OutputOrder_v2_60.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_74_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_14();
    l0 = self.box_Gate_v3_74;
    l1 = self.box_PlaySequence_v8_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|983711286", "983711286", "TrainingCamp_Lvl2", "box_Gate_v3_74.Out", "box_PlaySequence_v8_14.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_8();
    l0 = self.box_Music_Quest_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|757494795", "757494795", "TrainingCamp_Lvl2", "box_OutputOrder_v2_10.Out", "box_Music_Quest_v2_8.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_12();
    l0 = self.box_StopMetaSequence_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2136577524", "2136577524", "TrainingCamp_Lvl2", "box_OutputOrder_v2_10.Out", "box_StopMetaSequence_v5_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_35();
    l0 = self.box_PlaySequence_v8_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1630682938", "1630682938", "TrainingCamp_Lvl2", "box_OutputOrder_v2_23.Out", "box_PlaySequence_v8_35.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_32();
    l0 = self.box_Gate_v3_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1950540221", "1950540221", "TrainingCamp_Lvl2", "box_OutputOrder_v2_23.Out", "box_Gate_v3_32.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_PlayersVisibilityModifier_17_OnSetAllInvisible()
    local l0, l1;
    l0 = self.box_PlayersVisibilityModifier_17;
    l1 = self.box_StartMetaSequence_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1522236966", "1522236966", "TrainingCamp_Lvl2", "box_PlayersVisibilityModifier_17.OnSetAllInvisible", "box_StartMetaSequence_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_TeleportPawns_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_TeleportPawns_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1157854591", "1157854591", "TrainingCamp_Lvl2", "box_TeleportPawns_16.Out", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_2_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_2_Out();
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_StartMetaSequence_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1781965122", "1781965122", "TrainingCamp_Lvl2", "box_StartMetaSequence_2.Out", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_Delay_v5_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|987659819", "987659819", "TrainingCamp_Lvl2", "box_Delay_v5_15.TimeElapsed", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_73_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_26();
    l0 = self.box_PlaySequence_v8_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|436563722", "436563722", "TrainingCamp_Lvl2", "box_Simple_Node_73.Out", "box_PlaySequence_v8_26.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanup_Homebase_83();
    l0 = self.box_Delay_v5_11;
    l1 = self.box_NarrativeSceneCleanup_Homebase_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1230445423", "1230445423", "TrainingCamp_Lvl2", "box_Delay_v5_11.TimeElapsed", "box_NarrativeSceneCleanup_Homebase_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_8();
    l0 = self.box_Music_Quest_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1232430665", "1232430665", "TrainingCamp_Lvl2", "box_OutputOrder_v2_50.Out", "box_Music_Quest_v2_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_21_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_59();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|840597846", "840597846", "TrainingCamp_Lvl2", "box_GetActivityState_v2_21.Completed", "box_OutputOrder_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|310523580", "310523580", "TrainingCamp_Lvl2", "box_OutputOrder_v2_57.Out", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_56();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|498517718", "498517718", "TrainingCamp_Lvl2", "box_OutputOrder_v2_57.Out", "box_SoundMixing_56.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|364615780", "364615780", "TrainingCamp_Lvl2", "box_AgentGroupModifier_38.Out", "box_OutputOrder_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_59_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_14();
    l0 = self.box_PlaySequence_v8_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1784795999", "1784795999", "TrainingCamp_Lvl2", "box_OutputOrder_v2_59.Out", "box_PlaySequence_v8_14.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_59_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_74();
    l0 = self.box_Gate_v3_74;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|368591384", "368591384", "TrainingCamp_Lvl2", "box_OutputOrder_v2_59.Out", "box_Gate_v3_74.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_NarrativeSceneSetup_Homebase_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_NarrativeSceneSetup_Homebase_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1584843348", "1584843348", "TrainingCamp_Lvl2", "box_NarrativeSceneSetup_Homebase_85.Out", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_13();
    l0 = self.box_PlaySequence_v8_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1076256042", "1076256042", "TrainingCamp_Lvl2", "box_OutputOrder_v2_19.Out", "box_PlaySequence_v8_13.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_73();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|269866196", "269866196", "TrainingCamp_Lvl2", "box_OutputOrder_v2_19.Out", "box_Simple_Node_73.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_21();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2000596963", "2000596963", "TrainingCamp_Lvl2", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_30();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1890771558", "1890771558", "TrainingCamp_Lvl2", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_24();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|8006014", "8006014", "TrainingCamp_Lvl2", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_58();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1155816833", "1155816833", "TrainingCamp_Lvl2", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_58.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_63();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1261290688", "1261290688", "TrainingCamp_Lvl2", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_75();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1137283417", "1137283417", "TrainingCamp_Lvl2", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_75.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_34();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2081069346", "2081069346", "TrainingCamp_Lvl2", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_63_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1592839573", "1592839573", "TrainingCamp_Lvl2", "box_GetActivityState_v2_63.Completed", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_32_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_35();
    l0 = self.box_Gate_v3_32;
    l1 = self.box_PlaySequence_v8_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|747988251", "747988251", "TrainingCamp_Lvl2", "box_Gate_v3_32.Out", "box_PlaySequence_v8_35.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_29();
    l0 = self.box_PlaySequence_v8_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|524516799", "524516799", "TrainingCamp_Lvl2", "box_OutputOrder_v2_31.Out", "box_PlaySequence_v8_29.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_76();
    l0 = self.box_Gate_v3_76;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1619320118", "1619320118", "TrainingCamp_Lvl2", "box_OutputOrder_v2_31.Out", "box_Gate_v3_76.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_NarrativeFade_7_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_84();
    l0 = self.box_NarrativeFade_7;
    l1 = self.box_PostFx_v3_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|607887373", "607887373", "TrainingCamp_Lvl2", "box_NarrativeFade_7.FadedIn", "box_PostFx_v3_84.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_30_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1932719921", "1932719921", "TrainingCamp_Lvl2", "box_GetActivityState_v2_30.Completed", "box_OutputOrder_v2_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_37();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|146691744", "146691744", "TrainingCamp_Lvl2", "box_OutputOrder_v2_39.Out", "box_SetContextualStrategy_37.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_39_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_40();
    l0 = self.box_VisibilityModifier_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1443012860", "1443012860", "TrainingCamp_Lvl2", "box_OutputOrder_v2_39.Out", "box_VisibilityModifier_40.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_39_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_45();
    l0 = self.box_VisibilityModifier_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1176487635", "1176487635", "TrainingCamp_Lvl2", "box_OutputOrder_v2_39.Out", "box_VisibilityModifier_45.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_13_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|654448062", "654448062", "TrainingCamp_Lvl2", "box_PlaySequence_v8_13.Finished", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_13_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_77();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1152101336", "1152101336", "TrainingCamp_Lvl2", "box_PlaySequence_v8_13.Skipped", "box_OutputOrder_v2_77.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_13_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_7();
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_NarrativeFade_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|738506091", "738506091", "TrainingCamp_Lvl2", "box_PlaySequence_v8_13.SPOut", "box_NarrativeFade_7.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_13_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1595453293", "1595453293", "TrainingCamp_Lvl2", "box_PlaySequence_v8_13.SPOut", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_13_SPOut__Start_UI_()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicOverlay_49();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1159137173", "1159137173", "TrainingCamp_Lvl2", "box_PlaySequence_v8_13.SPOut", "box_DisplayCinematicOverlay_49.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1182527735", "1182527735", "TrainingCamp_Lvl2", "box_PlaySequence_v8_13.Started", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_75_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1969362812", "1969362812", "TrainingCamp_Lvl2", "box_GetActivityState_v2_75.Completed", "box_OutputOrder_v2_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2082296880", "2082296880", "TrainingCamp_Lvl2", "box_MultipleOR_9.Out", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_24_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_61();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1782705323", "1782705323", "TrainingCamp_Lvl2", "box_GetActivityState_v2_24.Completed", "box_OutputOrder_v2_61.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_76_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_29();
    l0 = self.box_Gate_v3_76;
    l1 = self.box_PlaySequence_v8_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1301207090", "1301207090", "TrainingCamp_Lvl2", "box_Gate_v3_76.Out", "box_PlaySequence_v8_29.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_Homebase_85();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_NarrativeSceneSetup_Homebase_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|36864672", "36864672", "TrainingCamp_Lvl2", "box_EntityStatusListener_5.Loaded", "box_NarrativeSceneSetup_Homebase_85.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_77_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|193952252", "193952252", "TrainingCamp_Lvl2", "box_OutputOrder_v2_77.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_77_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|892756457", "892756457", "TrainingCamp_Lvl2", "box_OutputOrder_v2_77.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_22();
    l0 = self.box_Gate_v3_20;
    l1 = self.box_PlaySequence_v8_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1652792695", "1652792695", "TrainingCamp_Lvl2", "box_Gate_v3_20.Out", "box_PlaySequence_v8_22.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_41();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1240887034", "1240887034", "TrainingCamp_Lvl2", "box_OutputOrder_v2_42.Out", "box_SetContextualStrategy_41.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_44();
    l0 = self.box_VisibilityModifier_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1812974390", "1812974390", "TrainingCamp_Lvl2", "box_OutputOrder_v2_42.Out", "box_VisibilityModifier_44.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_46();
    l0 = self.box_VisibilityModifier_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|809153598", "809153598", "TrainingCamp_Lvl2", "box_OutputOrder_v2_42.Out", "box_VisibilityModifier_46.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_53();
    l0 = self.box_VisibilityModifier_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|629392865", "629392865", "TrainingCamp_Lvl2", "box_OutputOrder_v2_42.Out", "box_VisibilityModifier_53.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_68();
    l0 = self.box_VisibilityModifier_68;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|300786028", "300786028", "TrainingCamp_Lvl2", "box_OutputOrder_v2_42.Out", "box_VisibilityModifier_68.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_67();
    l0 = self.box_VisibilityModifier_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2075961211", "2075961211", "TrainingCamp_Lvl2", "box_OutputOrder_v2_42.Out", "box_VisibilityModifier_67.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_69();
    l0 = self.box_VisibilityModifier_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1830231288", "1830231288", "TrainingCamp_Lvl2", "box_OutputOrder_v2_42.Out", "box_VisibilityModifier_69.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:OnEnter_box_Simple_Node_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|@In Gate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_79()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_14()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511107065429626",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_jeromeposition_jerome.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_3()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_64()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109578702483378410",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_35()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511107065429626",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_dogposition_dog.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|133217119");
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

function export:OnEnter_box_Gate_v3_72()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|193888851");
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
                [0] = self.f_box_OutputOrder_v2_60_Out_0,
                [1] = self.f_box_OutputOrder_v2_60_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlayersVisibilityModifier_18()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_26()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511107065429626",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_carminaposition_carmina.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|289513851");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
                [2] = self.f_box_OutputOrder_v2_43_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_62()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_33()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|478975267");
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
                [0] = self.f_box_OutputOrder_v2_55_Out_0,
                [1] = self.f_box_OutputOrder_v2_55_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_28()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511107065429626",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_ginaposition_gina.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|526844607");
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

function export:OnEnter_box_VisibilityModifier_52()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109674344243281527",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|614534797");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|636809060");
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
                [0] = self.f_box_OutputOrder_v2_61_Out_0,
                [1] = self.f_box_OutputOrder_v2_61_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_12()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_78()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|725855664");
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
                [0] = self.f_box_OutputOrder_v2_78_Out_0,
                [1] = self.f_box_OutputOrder_v2_78_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|733723145");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
                [2] = self.f_box_OutputOrder_v2_36_Out_2,
                [3] = self.f_box_OutputOrder_v2_36_Out_3,
                [4] = self.f_box_OutputOrder_v2_36_Out_4,
                [5] = self.f_box_OutputOrder_v2_36_Out_5,
                [6] = self.f_box_OutputOrder_v2_36_Out_6,
            },
            count = 7,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanup_Homebase_83()
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

function export:OnEnter_box_VisibilityModifier_45()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#0C573993",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|860124371");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_34_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015344581734039",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_58()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|901413360");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_58_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015344318900107",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_74()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|916011879");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|928122163");
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

function export:OnEnter_box_PlayersVisibilityModifier_17()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_16()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "2108515875677016782",
        -- Destination,
        [1] = "2108515873382732492",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_47()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108126121861064164",
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

function export:OnEnter_box_Simple_Node_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1117299912");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_73_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1125659307");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_11()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1164646519");
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
                [0] = self.f_box_OutputOrder_v2_50_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1169205790");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_21_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015329407485821",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_70()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511107065429626",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_hunterposition_hunter.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_53()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109674344243281527",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_71()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511107065429626",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_hurkposition_hurk.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1268323262");
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
                [0] = self.f_box_OutputOrder_v2_57_Out_0,
                [1] = self.f_box_OutputOrder_v2_57_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_84()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_29()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511107065429626",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_boarposition_boar.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1293235187");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_38_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#0C573993",
        -- PawnGroup,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1319551341");
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
                [0] = self.f_box_OutputOrder_v2_59_Out_0,
                [1] = self.f_box_OutputOrder_v2_59_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_8()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 2,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "184354181",
        -- StopEvent,
        [7] = "3799000385",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_68()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109578703125106925",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_46()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#0C573993",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_Homebase_85()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicOverlay_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicOverlay_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1414640018");
    l0:SetConnections({
    });
    params = {
        -- DisplayGameTimeAsButtonDescription,
        [1] = false,
        -- IsInfrastructureUpgrade,
        [2] = true,
        -- TitleId,
        [3] = {
            section = "",
            item = "",
            id = "",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1427627933");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 9,
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
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
                [4] = self.f_box_OutputOrder_v2_19_Out_4,
                [5] = self.f_box_OutputOrder_v2_19_Out_5,
                [6] = self.f_box_OutputOrder_v2_19_Out_6,
                [7] = self.f_box_OutputOrder_v2_19_Out_7,
                [8] = self.f_box_OutputOrder_v2_19_Out_8,
            },
            count = 9,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_48()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108126121861064164",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_67()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109578702483378410",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1436292639");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_63_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015336408582893",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_65()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109578703125106925",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_32()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1512348820");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_7()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_22()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511107065429626",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_nanaposition_nana.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1594440376");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_30_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015338680831950",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1601408628");
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
                [0] = self.f_box_OutputOrder_v2_39_Out_0,
                [1] = self.f_box_OutputOrder_v2_39_Out_1,
                [2] = self.f_box_OutputOrder_v2_39_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_13()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2108319693455513023",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_lvl2.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_75()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1640433568");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_75_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015336671426522",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_69()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109554755595406579",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1690995286");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_24_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015342704912835",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_76()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1785304766");
    l0:SetConnections({
    });
    params = {
        -- ContextualStrategy,
        [0] = "2106594335790222242",
        -- Group,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2108319693455513023",
    };
    return params;
end;

function export:OnEnter_box_EndStandaloneScript_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndStandaloneScript_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1864463185");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1889256629");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_44()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|1922279862");
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
                [0] = self.f_box_OutputOrder_v2_77_Out_0,
                [1] = self.f_box_OutputOrder_v2_77_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_66()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109554755595406579",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2003812428");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_20()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl2|2042462145");
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

function export:OnEnter_box_VisibilityModifier_40()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_81()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_2_Out()
    local l0;
    l0 = self.box_StartMetaSequence_2;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:Out()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="In" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="Out" AnchorDynType="0" IsDelayed="0" />
	</ControlsOut>
	<DatasIn />
	<DatasOut />
</DominoMetadata>
