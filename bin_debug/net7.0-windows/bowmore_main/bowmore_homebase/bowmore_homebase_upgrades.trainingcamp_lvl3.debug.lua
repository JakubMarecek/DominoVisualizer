LUACf0 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_homebase/bowmore_homebase_upgrades.domino
-- User graph: TrainingCamp_Lvl3
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Homebase/Bowmore_Homebase_Upgrades.TrainingCamp_Lvl3.debug.lua")] = {
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
    self._name = "TrainingCamp_Lvl3";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3";
    self.Out = DummyFunction;
    self.MetaSequenceID = 0;
    self.box_StopMetaSequence_v5_12 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|84778622");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_12_Stopped,
    });
    self.box_VisibilityModifier_40 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|218867984");
    l0:SetConnections({
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|220286688");
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
    self.box_VisibilityModifier_60 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|261316039");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_73 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_73;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_73");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|271465938");
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|276549431");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_3_TimeElapsed,
    });
    self.box_NarrativeFade_67 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_67;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_67");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|337693617");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_67_FadedIn,
    });
    self.box_Music_Quest_v2_8 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|377046848");
    l0:SetConnections({
    });
    self.box_NarrativeSceneCleanup_Homebase_83 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanup_Homebase.debug.lua");
    l0 = self.box_NarrativeSceneCleanup_Homebase_83;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanup_Homebase_83");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|458081672");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanup_Homebase_83_Out,
    });
    self.box_VisibilityModifier_46 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|488410290");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_62 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_62;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_62");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|544017383");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_65 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_65;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_65");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|558366570");
    l0:SetConnections({
    });
    self.box_Delay_v5_15 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|559656798");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_15_TimeElapsed,
    });
    self.box_Gate_v3_24 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|656531418");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_24_Out,
    });
    self.box_PlayersVisibilityModifier_18 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|682369523");
    l0:SetConnections({
        -- OnSetAllVisible,
        [1] = self.f_box_PlayersVisibilityModifier_18_OnSetAllVisible,
    });
    self.box_PlayersVisibilityModifier_17 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|721218312");
    l0:SetConnections({
        -- OnSetAllInvisible,
        [0] = self.f_box_PlayersVisibilityModifier_17_OnSetAllInvisible,
    });
    self.box_VisibilityModifier_48 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|762663323");
    l0:SetConnections({
    });
    self.box_Gate_v3_26 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|773095956");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_26_Out,
    });
    self.box_PlaySequence_v8_58 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|777594822");
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|779132743");
    l0:SetConnections({
    });
    self.box_Gate_v3_30 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|787416810");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_30_Out,
    });
    self.box_Gate_v3_23 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|840923900");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_23_Out,
    });
    self.box_PlaySequence_v8_75 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_75");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|863449177");
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
    self.box_EntityStatusListener_5 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|863815741");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_5_Loaded,
    });
    self.box_NarrativeSceneSetup_Homebase_85 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua");
    l0 = self.box_NarrativeSceneSetup_Homebase_85;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_Homebase_85");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|898819088");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_Homebase_85_Out,
    });
    self.box_VisibilityModifier_53 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|906725760");
    l0:SetConnections({
    });
    self.box_TeleportPawns_16 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|942844273");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_16_Out,
    });
    self.box_PostFx_v3_84 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_84;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_84");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1124275672");
    l0:SetConnections({
    });
    self.box_Gate_v3_34 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1187088882");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_34_Out,
    });
    self.box_VisibilityModifier_47 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1246008374");
    l0:SetConnections({
    });
    self.box_Gate_v3_21 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1261790270");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_21_Out,
    });
    self.box_PlaySequence_v8_14 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1306113244");
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
    self.box_PlaySequence_v8_78 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_78;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_78");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1352568280");
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
    self.box_PostFx_v3_69 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_69");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1387205562");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_45 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1401735749");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_44 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1413610888");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_13 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1446913506");
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
    self.box_VisibilityModifier_61 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1481036354");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_70 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_70");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1482032329");
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
    self.box_VisibilityModifier_63 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_63;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_63");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1540511713");
    l0:SetConnections({
    });
    self.box_Gate_v3_27 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1588185565");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_27_Out,
    });
    self.box_PlaySequence_v8_71 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_71");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1687059334");
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
    self.box_StartMetaSequence_2 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1706242035");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_2_Out,
    });
    self.box_PlaySequence_v8_72 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_72;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_72");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1778705320");
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
    self.box_VisibilityModifier_64 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_64");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1836263559");
    l0:SetConnections({
    });
    self.box_NarrativeFade_7 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1928222092");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_7_FadedIn,
    });
    self.box_Delay_v5_11 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1963280784");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_11_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_5();
    l0 = self.box_EntityStatusListener_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1020446966", "1020446966", "TrainingCamp_Lvl3", "In", "box_EntityStatusListener_5.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Simple_Node_82_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|759706001", "759706001", "TrainingCamp_Lvl3", "box_Simple_Node_82.Out", "box_Gate_v3_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_30();
    l0 = self.box_Gate_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|23444225", "23444225", "TrainingCamp_Lvl3", "box_Simple_Node_82.Out", "box_Gate_v3_30.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_21();
    l0 = self.box_Gate_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|505308829", "505308829", "TrainingCamp_Lvl3", "box_Simple_Node_82.Out", "box_Gate_v3_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_23();
    l0 = self.box_Gate_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1561588525", "1561588525", "TrainingCamp_Lvl3", "box_Simple_Node_82.Out", "box_Gate_v3_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|176940750", "176940750", "TrainingCamp_Lvl3", "box_Simple_Node_82.Out", "box_Gate_v3_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_Gate_v3_26();
    l0 = self.box_Gate_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|826927472", "826927472", "TrainingCamp_Lvl3", "box_Simple_Node_82.Out", "box_Gate_v3_26.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
    params = self:OnEnter_box_PlaySequence_v8_73();
    l0 = self.box_PlaySequence_v8_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|141058527", "141058527", "TrainingCamp_Lvl3", "box_Simple_Node_82.Out", "box_PlaySequence_v8_73.Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- Skip
    l0:Exec(3, params);
    params = self:OnEnter_box_Gate_v3_34();
    l0 = self.box_Gate_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|26736909", "26736909", "TrainingCamp_Lvl3", "box_Simple_Node_82.Out", "box_Gate_v3_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_29_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1734686082", "1734686082", "TrainingCamp_Lvl3", "box_GetActivityState_v2_29.Completed", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_12_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_16();
    l0 = self.box_StopMetaSequence_v5_12;
    l1 = self.box_TeleportPawns_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|656720729", "656720729", "TrainingCamp_Lvl3", "box_StopMetaSequence_v5_12.Stopped", "box_TeleportPawns_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_81_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1658548839", "1658548839", "TrainingCamp_Lvl3", "box_OutputOrder_v2_81.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_81_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_82();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|2064955926", "2064955926", "TrainingCamp_Lvl3", "box_OutputOrder_v2_81.Out", "box_Simple_Node_82.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_66_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_67();
    l0 = self.box_NarrativeFade_67;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|405950450", "405950450", "TrainingCamp_Lvl3", "box_OutputOrder_v2_66.Out", "box_NarrativeFade_67.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_66_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_69();
    l0 = self.box_PostFx_v3_69;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|158870821", "158870821", "TrainingCamp_Lvl3", "box_OutputOrder_v2_66.Out", "box_PostFx_v3_69.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1485617394", "1485617394", "TrainingCamp_Lvl3", "box_MultipleOR_9.Out", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_22_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1554457419", "1554457419", "TrainingCamp_Lvl3", "box_GetActivityState_v2_22.Completed", "box_OutputOrder_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_80_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_70();
    l0 = self.box_PlaySequence_v8_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1308853544", "1308853544", "TrainingCamp_Lvl3", "box_OutputOrder_v2_80.Out", "box_PlaySequence_v8_70.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_80_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_27();
    l0 = self.box_Gate_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|220704762", "220704762", "TrainingCamp_Lvl3", "box_OutputOrder_v2_80.Out", "box_Gate_v3_27.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_57_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_3();
    l0 = self.box_Delay_v5_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1798095694", "1798095694", "TrainingCamp_Lvl3", "box_OutputOrder_v2_57.Out", "box_Delay_v5_3.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_57_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_56();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|586026403", "586026403", "TrainingCamp_Lvl3", "box_OutputOrder_v2_57.Out", "box_SoundMixing_56.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_3_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_66();
    l0 = self.box_Delay_v5_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1335620442", "1335620442", "TrainingCamp_Lvl3", "box_Delay_v5_3.TimeElapsed", "box_OutputOrder_v2_66.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_78();
    l0 = self.box_PlaySequence_v8_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1211684652", "1211684652", "TrainingCamp_Lvl3", "box_OutputOrder_v2_76.Out", "box_PlaySequence_v8_78.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_30();
    l0 = self.box_Gate_v3_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|598351023", "598351023", "TrainingCamp_Lvl3", "box_OutputOrder_v2_76.Out", "box_Gate_v3_30.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_NarrativeFade_67_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_11();
    l0 = self.box_NarrativeFade_67;
    l1 = self.box_Delay_v5_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|131993112", "131993112", "TrainingCamp_Lvl3", "box_NarrativeFade_67.FadedIn", "box_Delay_v5_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_13();
    l0 = self.box_PlaySequence_v8_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1670302648", "1670302648", "TrainingCamp_Lvl3", "box_OutputOrder_v2_19.Out", "box_PlaySequence_v8_13.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|181093692", "181093692", "TrainingCamp_Lvl3", "box_OutputOrder_v2_19.Out", "box_Simple_Node_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1441133073", "1441133073", "TrainingCamp_Lvl3", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_20();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1659003603", "1659003603", "TrainingCamp_Lvl3", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1057382126", "1057382126", "TrainingCamp_Lvl3", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_77();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1701499626", "1701499626", "TrainingCamp_Lvl3", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_77.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_74();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|907918619", "907918619", "TrainingCamp_Lvl3", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_74.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_31();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|594236437", "594236437", "TrainingCamp_Lvl3", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_59();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|627238370", "627238370", "TrainingCamp_Lvl3", "box_OutputOrder_v2_19.Out", "box_GetActivityState_v2_59.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanup_Homebase_83_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndStandaloneScript_6();
    l0 = self.box_NarrativeSceneCleanup_Homebase_83;
    l1 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1474356290", "1474356290", "TrainingCamp_Lvl3", "box_NarrativeSceneCleanup_Homebase_83.Out", "box_EndStandaloneScript_6.End", l0:GetLuaBox(), l1:GetLuaBox());
    -- End
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_50_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_8();
    l0 = self.box_Music_Quest_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1721694243", "1721694243", "TrainingCamp_Lvl3", "box_OutputOrder_v2_50.Out", "box_Music_Quest_v2_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_15_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_Delay_v5_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1913468986", "1913468986", "TrainingCamp_Lvl3", "box_Delay_v5_15.TimeElapsed", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Gate_v3_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_14();
    l0 = self.box_Gate_v3_24;
    l1 = self.box_PlaySequence_v8_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1430582127", "1430582127", "TrainingCamp_Lvl3", "box_Gate_v3_24.Out", "box_PlaySequence_v8_14.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_71();
    l0 = self.box_PlaySequence_v8_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1510473106", "1510473106", "TrainingCamp_Lvl3", "box_OutputOrder_v2_35.Out", "box_PlaySequence_v8_71.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_34();
    l0 = self.box_Gate_v3_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1220061156", "1220061156", "TrainingCamp_Lvl3", "box_OutputOrder_v2_35.Out", "box_Gate_v3_34.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_PlayersVisibilityModifier_18_OnSetAllVisible()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_57();
    l0 = self.box_PlayersVisibilityModifier_18;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1936012676", "1936012676", "TrainingCamp_Lvl3", "box_PlayersVisibilityModifier_18.OnSetAllVisible", "box_OutputOrder_v2_57.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_73();
    l0 = self.box_PlaySequence_v8_73;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1921994172", "1921994172", "TrainingCamp_Lvl3", "box_Simple_Node_28.Out", "box_PlaySequence_v8_73.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_PlayersVisibilityModifier_17_OnSetAllInvisible()
    local l0, l1;
    l0 = self.box_PlayersVisibilityModifier_17;
    l1 = self.box_StartMetaSequence_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|558423992", "558423992", "TrainingCamp_Lvl3", "box_PlayersVisibilityModifier_17.OnSetAllInvisible", "box_StartMetaSequence_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Gate_v3_26_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_58();
    l0 = self.box_Gate_v3_26;
    l1 = self.box_PlaySequence_v8_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1817981898", "1817981898", "TrainingCamp_Lvl3", "box_Gate_v3_26.Out", "box_PlaySequence_v8_58.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_78();
    l0 = self.box_Gate_v3_30;
    l1 = self.box_PlaySequence_v8_78;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1249459048", "1249459048", "TrainingCamp_Lvl3", "box_Gate_v3_30.Out", "box_PlaySequence_v8_78.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_72();
    l0 = self.box_Gate_v3_23;
    l1 = self.box_PlaySequence_v8_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|142198801", "142198801", "TrainingCamp_Lvl3", "box_Gate_v3_23.Out", "box_PlaySequence_v8_72.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_GetActivityState_v2_31_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_79();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1534367677", "1534367677", "TrainingCamp_Lvl3", "box_GetActivityState_v2_31.Completed", "box_OutputOrder_v2_79.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_5_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_Homebase_85();
    l0 = self.box_EntityStatusListener_5;
    l1 = self.box_NarrativeSceneSetup_Homebase_85;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|796366105", "796366105", "TrainingCamp_Lvl3", "box_EntityStatusListener_5.Loaded", "box_NarrativeSceneSetup_Homebase_85.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneSetup_Homebase_85_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_55();
    l0 = self.box_NarrativeSceneSetup_Homebase_85;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|77373526", "77373526", "TrainingCamp_Lvl3", "box_NarrativeSceneSetup_Homebase_85.Out", "box_OutputOrder_v2_55.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_TeleportPawns_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1468599445", "1468599445", "TrainingCamp_Lvl3", "box_TeleportPawns_16.Out", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_55_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_15();
    l0 = self.box_Delay_v5_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1481674129", "1481674129", "TrainingCamp_Lvl3", "box_OutputOrder_v2_55.Out", "box_Delay_v5_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_55_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_54();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|242835083", "242835083", "TrainingCamp_Lvl3", "box_OutputOrder_v2_55.Out", "box_SoundMixing_54.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_79_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_14();
    l0 = self.box_PlaySequence_v8_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1426049966", "1426049966", "TrainingCamp_Lvl3", "box_OutputOrder_v2_79.Out", "box_PlaySequence_v8_14.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_79_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_24();
    l0 = self.box_Gate_v3_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1580593820", "1580593820", "TrainingCamp_Lvl3", "box_OutputOrder_v2_79.Out", "box_Gate_v3_24.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Gate_v3_34_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_71();
    l0 = self.box_Gate_v3_34;
    l1 = self.box_PlaySequence_v8_71;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|953341347", "953341347", "TrainingCamp_Lvl3", "box_Gate_v3_34.Out", "box_PlaySequence_v8_71.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_Gate_v3_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_75();
    l0 = self.box_Gate_v3_21;
    l1 = self.box_PlaySequence_v8_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|394123438", "394123438", "TrainingCamp_Lvl3", "box_Gate_v3_21.Out", "box_PlaySequence_v8_75.Skip", l0:GetLuaBox(), l1:GetLuaBox());
    -- Skip
    l1:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_75();
    l0 = self.box_PlaySequence_v8_75;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|311176168", "311176168", "TrainingCamp_Lvl3", "box_OutputOrder_v2_25.Out", "box_PlaySequence_v8_75.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_21();
    l0 = self.box_Gate_v3_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|847979869", "847979869", "TrainingCamp_Lvl3", "box_OutputOrder_v2_25.Out", "box_Gate_v3_21.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_13_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1921265244", "1921265244", "TrainingCamp_Lvl3", "box_PlaySequence_v8_13.Finished", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_13_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_81();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1943501896", "1943501896", "TrainingCamp_Lvl3", "box_PlaySequence_v8_13.Skipped", "box_OutputOrder_v2_81.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_13_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_7();
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_NarrativeFade_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|611846328", "611846328", "TrainingCamp_Lvl3", "box_PlaySequence_v8_13.SPOut", "box_NarrativeFade_7.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_13_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1881730819", "1881730819", "TrainingCamp_Lvl3", "box_PlaySequence_v8_13.SPOut", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_13_SPOut__Start_UI_()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicOverlay_49();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|2014489034", "2014489034", "TrainingCamp_Lvl3", "box_PlaySequence_v8_13.SPOut", "box_DisplayCinematicOverlay_49.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_13_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_50();
    l0 = self.box_PlaySequence_v8_13;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|49941115", "49941115", "TrainingCamp_Lvl3", "box_PlaySequence_v8_13.Started", "box_OutputOrder_v2_50.In", l0:GetLuaBox(), l1:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1900925123", "1900925123", "TrainingCamp_Lvl3", "box_OutputOrder_v2_43.Out", "box_PlayersVisibilityModifier_18.SetAllVisible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAllVisible
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|418639424", "418639424", "TrainingCamp_Lvl3", "box_OutputOrder_v2_43.Out", "box_OutputOrder_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1362003192", "1362003192", "TrainingCamp_Lvl3", "box_OutputOrder_v2_43.Out", "box_VisibilityModifier_48.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_53();
    l0 = self.box_VisibilityModifier_53;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1859456347", "1859456347", "TrainingCamp_Lvl3", "box_OutputOrder_v2_43.Out", "box_VisibilityModifier_53.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_64();
    l0 = self.box_VisibilityModifier_64;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|301863669", "301863669", "TrainingCamp_Lvl3", "box_OutputOrder_v2_43.Out", "box_VisibilityModifier_64.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_63();
    l0 = self.box_VisibilityModifier_63;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1313601857", "1313601857", "TrainingCamp_Lvl3", "box_OutputOrder_v2_43.Out", "box_VisibilityModifier_63.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_43_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_65();
    l0 = self.box_VisibilityModifier_65;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|2051582616", "2051582616", "TrainingCamp_Lvl3", "box_OutputOrder_v2_43.Out", "box_VisibilityModifier_65.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_41();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|437225156", "437225156", "TrainingCamp_Lvl3", "box_OutputOrder_v2_42.Out", "box_SetContextualStrategy_41.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1983952530", "1983952530", "TrainingCamp_Lvl3", "box_OutputOrder_v2_42.Out", "box_VisibilityModifier_44.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_46();
    l0 = self.box_VisibilityModifier_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1081417398", "1081417398", "TrainingCamp_Lvl3", "box_OutputOrder_v2_42.Out", "box_VisibilityModifier_46.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_70();
    l0 = self.box_Gate_v3_27;
    l1 = self.box_PlaySequence_v8_70;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|96784093", "96784093", "TrainingCamp_Lvl3", "box_Gate_v3_27.Out", "box_PlaySequence_v8_70.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_8();
    l0 = self.box_Music_Quest_v2_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|312603989", "312603989", "TrainingCamp_Lvl3", "box_OutputOrder_v2_10.Out", "box_Music_Quest_v2_8.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_12();
    l0 = self.box_StopMetaSequence_v5_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|325784050", "325784050", "TrainingCamp_Lvl3", "box_OutputOrder_v2_10.Out", "box_StopMetaSequence_v5_12.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_StartMetaSequence_2_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_2_Out();
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_StartMetaSequence_2;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|46478145", "46478145", "TrainingCamp_Lvl3", "box_StartMetaSequence_2.Out", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_77_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1514466983", "1514466983", "TrainingCamp_Lvl3", "box_GetActivityState_v2_77.Completed", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_38_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_39();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1419981733", "1419981733", "TrainingCamp_Lvl3", "box_AgentGroupModifier_38.Out", "box_OutputOrder_v2_39.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_33_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_58();
    l0 = self.box_PlaySequence_v8_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|2066655023", "2066655023", "TrainingCamp_Lvl3", "box_OutputOrder_v2_33.Out", "box_PlaySequence_v8_58.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_33_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_26();
    l0 = self.box_Gate_v3_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1946923609", "1946923609", "TrainingCamp_Lvl3", "box_OutputOrder_v2_33.Out", "box_Gate_v3_26.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_GetActivityState_v2_20_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1493583695", "1493583695", "TrainingCamp_Lvl3", "box_GetActivityState_v2_20.Completed", "box_OutputOrder_v2_76.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_7();
    l0 = self.box_NarrativeFade_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1265065792", "1265065792", "TrainingCamp_Lvl3", "box_OutputOrder_v2_51.Out", "box_NarrativeFade_7.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCinematicOverlay_49();
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1400413879", "1400413879", "TrainingCamp_Lvl3", "box_OutputOrder_v2_51.Out", "box_DisplayCinematicOverlay_49.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_7_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_84();
    l0 = self.box_NarrativeFade_7;
    l1 = self.box_PostFx_v3_84;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|130857268", "130857268", "TrainingCamp_Lvl3", "box_NarrativeFade_7.FadedIn", "box_PostFx_v3_84.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_72();
    l0 = self.box_PlaySequence_v8_72;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1392978151", "1392978151", "TrainingCamp_Lvl3", "box_OutputOrder_v2_32.Out", "box_PlaySequence_v8_72.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_23();
    l0 = self.box_Gate_v3_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|105814379", "105814379", "TrainingCamp_Lvl3", "box_OutputOrder_v2_32.Out", "box_Gate_v3_23.Open", clone:GetLuaBox(), l0:GetLuaBox());
    -- Open
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_11_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanup_Homebase_83();
    l0 = self.box_Delay_v5_11;
    l1 = self.box_NarrativeSceneCleanup_Homebase_83;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1879498574", "1879498574", "TrainingCamp_Lvl3", "box_Delay_v5_11.TimeElapsed", "box_NarrativeSceneCleanup_Homebase_83.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_59_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_80();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|325622592", "325622592", "TrainingCamp_Lvl3", "box_GetActivityState_v2_59.Completed", "box_OutputOrder_v2_80.In", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1253432901", "1253432901", "TrainingCamp_Lvl3", "box_OutputOrder_v2_39.Out", "box_SetContextualStrategy_37.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|68912885", "68912885", "TrainingCamp_Lvl3", "box_OutputOrder_v2_39.Out", "box_VisibilityModifier_40.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_39_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_45();
    l0 = self.box_VisibilityModifier_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1373708243", "1373708243", "TrainingCamp_Lvl3", "box_OutputOrder_v2_39.Out", "box_VisibilityModifier_45.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_74_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_33();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1674205218", "1674205218", "TrainingCamp_Lvl3", "box_GetActivityState_v2_74.Completed", "box_OutputOrder_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayersVisibilityModifier_17();
    l0 = self.box_PlayersVisibilityModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1455286994", "1455286994", "TrainingCamp_Lvl3", "box_OutputOrder_v2_36.Out", "box_PlayersVisibilityModifier_17.SetAllInvisible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAllInvisible
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_38();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|823411378", "823411378", "TrainingCamp_Lvl3", "box_OutputOrder_v2_36.Out", "box_AgentGroupModifier_38.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
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
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1097116976", "1097116976", "TrainingCamp_Lvl3", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_47.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_52();
    l0 = self.box_VisibilityModifier_52;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|610859449", "610859449", "TrainingCamp_Lvl3", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_52.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_61();
    l0 = self.box_VisibilityModifier_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|982879888", "982879888", "TrainingCamp_Lvl3", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_61.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_60();
    l0 = self.box_VisibilityModifier_60;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1957096480", "1957096480", "TrainingCamp_Lvl3", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_60.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_62();
    l0 = self.box_VisibilityModifier_62;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|865963550", "865963550", "TrainingCamp_Lvl3", "box_OutputOrder_v2_36.Out", "box_VisibilityModifier_62.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:OnEnter_box_Simple_Node_82()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_82");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|@In Gate");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_82_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|32002375");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_29_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015342704912835",
    };
    return params;
end;

function export:OnEnter_box_EndStandaloneScript_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndStandaloneScript_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|36056282");
    l0:SetConnections({
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

function export:OnEnter_box_OutputOrder_v2_81()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_81");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|117492983");
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
                [0] = self.f_box_OutputOrder_v2_81_Out_0,
                [1] = self.f_box_OutputOrder_v2_81_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_66");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|164474590");
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

function export:OnEnter_box_SetContextualStrategy_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|232748872");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|232854619");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_22_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015329407485821",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_80()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_80");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|255502012");
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
                [0] = self.f_box_OutputOrder_v2_80_Out_0,
                [1] = self.f_box_OutputOrder_v2_80_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_57()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|257039838");
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

function export:OnEnter_box_VisibilityModifier_60()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109578702483378410",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_73()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511108845911678",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_carminaposition_carmina.seq",
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

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|286868440");
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
                [0] = self.f_box_OutputOrder_v2_76_Out_0,
                [1] = self.f_box_OutputOrder_v2_76_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_67()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|347299148");
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

function export:OnEnter_box_SoundMixing_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|396061902");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|396836771");
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

function export:OnEnter_box_OutputOrder_v2_50()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|532010278");
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

function export:OnEnter_box_VisibilityModifier_62()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109554755595406579",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_65()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109554755595406579",
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

function export:OnEnter_box_Gate_v3_24()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicOverlay_49()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicOverlay_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|657073757");
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

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|659083234");
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

function export:OnEnter_box_PlayersVisibilityModifier_18()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|692997274");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_28_Out,
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

function export:OnEnter_box_Gate_v3_26()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_58()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511108845911678",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_hunterposition_hunter.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
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

function export:OnEnter_box_Gate_v3_30()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_23()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|862275894");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_31_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015336671426522",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_75()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511108845911678",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_hurkposition_hurk.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
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
        [2] = "2108319694105630145",
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

function export:OnEnter_box_OutputOrder_v2_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1062518092");
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

function export:OnEnter_box_OutputOrder_v2_79()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_79");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1123721095");
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
                [0] = self.f_box_OutputOrder_v2_79_Out_0,
                [1] = self.f_box_OutputOrder_v2_79_Out_1,
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

function export:OnEnter_box_Gate_v3_34()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
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

function export:OnEnter_box_Gate_v3_21()
    local params;
    params = {
        -- initStateOpen,
        [0] = false,
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
        [3] = "2109511108845911678",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_dogposition_dog.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_78()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511108845911678",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_nanaposition_nana.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1369533926");
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

function export:OnEnter_box_PostFx_v3_69()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
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
        [3] = "2108319694105630145",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_lvl3.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_61()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109578703125106925",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1481769086");
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
                [0] = self.f_box_OutputOrder_v2_43_Out_0,
                [1] = self.f_box_OutputOrder_v2_43_Out_1,
                [2] = self.f_box_OutputOrder_v2_43_Out_2,
                [3] = self.f_box_OutputOrder_v2_43_Out_3,
                [4] = self.f_box_OutputOrder_v2_43_Out_4,
                [5] = self.f_box_OutputOrder_v2_43_Out_5,
                [6] = self.f_box_OutputOrder_v2_43_Out_6,
            },
            count = 7,
        },
    });
    params = {
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
        [3] = "2109511108845911678",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_boarposition_boar.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1520264636");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
                [2] = self.f_box_OutputOrder_v2_42_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_63()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109578702483378410",
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_27()
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1650633272");
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
        [3] = "2109511108845911678",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_ginaposition_gina.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_54()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1689482226");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_77()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_77");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1739470426");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_77_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015344318900107",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_72()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2109511108845911678",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_trainingcamp/d1_hero_hb_cin_trainingcamp_jeromeposition_jerome.seq",
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
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1786212748");
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

function export:OnEnter_box_OutputOrder_v2_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1808905627");
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
                [0] = self.f_box_OutputOrder_v2_33_Out_0,
                [1] = self.f_box_OutputOrder_v2_33_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1823133740");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_20_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015338680831950",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_64()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109578703125106925",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1871493583");
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

function export:OnEnter_box_NarrativeFade_7()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1944694529");
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

function export:OnEnter_box_GetActivityState_v2_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1976745613");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_59_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015344581734039",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|1981258642");
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

function export:OnEnter_box_GetActivityState_v2_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_74");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|2022737136");
    l0:SetConnections({
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_74_Completed,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015336408582893",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@TrainingCamp_Lvl3|2061714785");
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
