LUAC�8 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_homebase/bowmore_homebase_upgrades.domino
-- User graph: Infirmary_Lvl1
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
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EndStandaloneScript.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/DisplayCinematicOverlay.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayersVisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Homebase/Bowmore_Homebase_Upgrades.Infirmary_Lvl1.debug.lua")] = {
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
    self._name = "Infirmary_Lvl1";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1";
    self.Out = DummyFunction;
    self.MetaSequenceID = 0;
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1163126");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_8_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_VisibilityModifier_23 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|16899283");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_32 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|121111240");
    l0:SetConnections({
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|141906257");
    l0:SetConnections({
        -- Started,
        [3] = self.f_box_Delay_v5_14_Started,
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_TeleportPawns_16 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|301839092");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_16_Out,
    });
    self.box_StartMetaSequence_1 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|434345925");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_1_Out,
    });
    self.box_VisibilityModifier_31 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|467754082");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_2 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|549145757");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_2_Stopped,
    });
    self.box_PlayersVisibilityModifier_18 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|559227635");
    l0:SetConnections({
        -- OnSetAllVisible,
        [1] = self.f_box_PlayersVisibilityModifier_18_OnSetAllVisible,
    });
    self.box_PlaySequence_v8_3 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|701635298");
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
        [0] = self.f_box_PlaySequence_v8_3_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_3_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIN",
                    value = self.f_box_PlaySequence_v8_3_SPOut__FadeIN_,
                },
                [1] = {
                    string = "Start_UI",
                    value = self.f_box_PlaySequence_v8_3_SPOut__Start_UI_,
                },
                [2] = {
                    string = "FadeOUT",
                    value = self.f_box_PlaySequence_v8_3_SPOut__FadeOUT_,
                },
            },
            count = 3,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_3_Started,
    });
    self.box_VisibilityModifier_28 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|737397575");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_27 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|858754326");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_34 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|861361674");
    l0:SetConnections({
    });
    self.box_NarrativeFade_9 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|961148828");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_9_FadedIn,
    });
    self.box_VisibilityModifier_33 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1011086092");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_29 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1078514711");
    l0:SetConnections({
    });
    self.box_PostFx_v3_42 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1147054363");
    l0:SetConnections({
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1152338415");
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
    self.box_VisibilityModifier_35 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1241072588");
    l0:SetConnections({
    });
    self.box_Delay_v5_41 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1333416589");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_41_TimeElapsed,
    });
    self.box_NarrativeFade_12 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1342963540");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_12_FadedIn,
    });
    self.box_NarrativeSceneSetup_Homebase_45 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua");
    l0 = self.box_NarrativeSceneSetup_Homebase_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_Homebase_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1421151063");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_Homebase_45_Out,
    });
    self.box_VisibilityModifier_30 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1447020074");
    l0:SetConnections({
    });
    self.box_EntityStatusListener_10 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1591170052");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_10_Loaded,
    });
    self.box_Music_Quest_v2_13 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1653674344");
    l0:SetConnections({
    });
    self.box_NarrativeSceneCleanup_Homebase_46 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanup_Homebase.debug.lua");
    l0 = self.box_NarrativeSceneCleanup_Homebase_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanup_Homebase_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1705857435");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanup_Homebase_46_Out,
    });
    self.box_PostFx_v3_44 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1872399505");
    l0:SetConnections({
    });
    self.box_PlayersVisibilityModifier_17 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1929882693");
    l0:SetConnections({
        -- OnSetAllInvisible,
        [0] = self.f_box_PlayersVisibilityModifier_17_OnSetAllInvisible,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_10();
    l0 = self.box_EntityStatusListener_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1077398542", "1077398542", "Infirmary_Lvl1", "In", "box_EntityStatusListener_10.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_8_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_40();
    l0 = self.box_Delay_v5_8;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|518290152", "518290152", "Infirmary_Lvl1", "box_Delay_v5_8.Started", "box_SoundMixing_40.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_43();
    l0 = self.box_Delay_v5_8;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1257793850", "1257793850", "Infirmary_Lvl1", "box_Delay_v5_8.TimeElapsed", "box_OutputOrder_v2_43.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_39();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|246026352", "246026352", "Infirmary_Lvl1", "box_Delay_v5_14.Started", "box_SoundMixing_39.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_Delay_v5_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|235606104", "235606104", "Infirmary_Lvl1", "box_Delay_v5_14.TimeElapsed", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_TeleportPawns_16;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1459122054", "1459122054", "Infirmary_Lvl1", "box_TeleportPawns_16.Out", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_21_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|460603682", "460603682", "Infirmary_Lvl1", "box_AgentGroupModifier_21.Out", "box_OutputOrder_v2_22.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayersVisibilityModifier_17();
    l0 = self.box_PlayersVisibilityModifier_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|843016234", "843016234", "Infirmary_Lvl1", "box_OutputOrder_v2_19.Out", "box_PlayersVisibilityModifier_17.SetAllInvisible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAllInvisible
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_21();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1417992524", "1417992524", "Infirmary_Lvl1", "box_OutputOrder_v2_19.Out", "box_AgentGroupModifier_21.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_28();
    l0 = self.box_VisibilityModifier_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1840595865", "1840595865", "Infirmary_Lvl1", "box_OutputOrder_v2_19.Out", "box_VisibilityModifier_28.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_29();
    l0 = self.box_VisibilityModifier_29;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|588556945", "588556945", "Infirmary_Lvl1", "box_OutputOrder_v2_19.Out", "box_VisibilityModifier_29.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_34();
    l0 = self.box_VisibilityModifier_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|2112529842", "2112529842", "Infirmary_Lvl1", "box_OutputOrder_v2_19.Out", "box_VisibilityModifier_34.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_StartMetaSequence_1_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_1_Out();
    params = self:OnEnter_box_PlaySequence_v8_3();
    l0 = self.box_StartMetaSequence_1;
    l1 = self.box_PlaySequence_v8_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1138740650", "1138740650", "Infirmary_Lvl1", "box_StartMetaSequence_1.Out", "box_PlaySequence_v8_3.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_13();
    l0 = self.box_Music_Quest_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1203112168", "1203112168", "Infirmary_Lvl1", "box_OutputOrder_v2_15.Out", "box_Music_Quest_v2_13.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_2();
    l0 = self.box_StopMetaSequence_v5_2;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|615030270", "615030270", "Infirmary_Lvl1", "box_OutputOrder_v2_15.Out", "box_StopMetaSequence_v5_2.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_StopMetaSequence_v5_2_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_16();
    l0 = self.box_StopMetaSequence_v5_2;
    l1 = self.box_TeleportPawns_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1735532839", "1735532839", "Infirmary_Lvl1", "box_StopMetaSequence_v5_2.Stopped", "box_TeleportPawns_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlayersVisibilityModifier_18_OnSetAllVisible()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_PlayersVisibilityModifier_18;
    l1 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|76411875", "76411875", "Infirmary_Lvl1", "box_PlayersVisibilityModifier_18.OnSetAllVisible", "box_Delay_v5_8.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_3_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_3;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|729558340", "729558340", "Infirmary_Lvl1", "box_PlaySequence_v8_3.Finished", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_3_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_3;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1785740944", "1785740944", "Infirmary_Lvl1", "box_PlaySequence_v8_3.Skipped", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_3_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_12();
    l0 = self.box_PlaySequence_v8_3;
    l1 = self.box_NarrativeFade_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1441514575", "1441514575", "Infirmary_Lvl1", "box_PlaySequence_v8_3.SPOut", "box_NarrativeFade_12.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_3_SPOut__FadeOUT_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_PlaySequence_v8_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|957013908", "957013908", "Infirmary_Lvl1", "box_PlaySequence_v8_3.SPOut", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_3_SPOut__Start_UI_()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCinematicOverlay_38();
    l0 = self.box_PlaySequence_v8_3;
    l1 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|732073697", "732073697", "Infirmary_Lvl1", "box_PlaySequence_v8_3.SPOut", "box_DisplayCinematicOverlay_38.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_3_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_PlaySequence_v8_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1917243332", "1917243332", "Infirmary_Lvl1", "box_PlaySequence_v8_3.Started", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_43_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_9();
    l0 = self.box_NarrativeFade_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1606758030", "1606758030", "Infirmary_Lvl1", "box_OutputOrder_v2_43.Out", "box_NarrativeFade_9.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_43_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_42();
    l0 = self.box_PostFx_v3_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|716474927", "716474927", "Infirmary_Lvl1", "box_OutputOrder_v2_43.Out", "box_PostFx_v3_42.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_13();
    l0 = self.box_Music_Quest_v2_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1352226571", "1352226571", "Infirmary_Lvl1", "box_OutputOrder_v2_36.Out", "box_Music_Quest_v2_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_9_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_41();
    l0 = self.box_NarrativeFade_9;
    l1 = self.box_Delay_v5_41;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|204762063", "204762063", "Infirmary_Lvl1", "box_NarrativeFade_9.FadedIn", "box_Delay_v5_41.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_20();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1192430208", "1192430208", "Infirmary_Lvl1", "box_OutputOrder_v2_22.Out", "box_SetContextualStrategy_20.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_23();
    l0 = self.box_VisibilityModifier_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|989264112", "989264112", "Infirmary_Lvl1", "box_OutputOrder_v2_22.Out", "box_VisibilityModifier_23.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_32();
    l0 = self.box_VisibilityModifier_32;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|250379589", "250379589", "Infirmary_Lvl1", "box_OutputOrder_v2_22.Out", "box_VisibilityModifier_32.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_12();
    l0 = self.box_NarrativeFade_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|725489313", "725489313", "Infirmary_Lvl1", "box_OutputOrder_v2_37.Out", "box_NarrativeFade_12.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCinematicOverlay_38();
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|25760695", "25760695", "Infirmary_Lvl1", "box_OutputOrder_v2_37.Out", "box_DisplayCinematicOverlay_38.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = self.box_MultipleOR_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1228097337", "1228097337", "Infirmary_Lvl1", "box_MultipleOR_4.Out", "box_OutputOrder_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_41_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanup_Homebase_46();
    l0 = self.box_Delay_v5_41;
    l1 = self.box_NarrativeSceneCleanup_Homebase_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|2007642370", "2007642370", "Infirmary_Lvl1", "box_Delay_v5_41.TimeElapsed", "box_NarrativeSceneCleanup_Homebase_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_NarrativeFade_12_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_44();
    l0 = self.box_NarrativeFade_12;
    l1 = self.box_PostFx_v3_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|530225999", "530225999", "Infirmary_Lvl1", "box_NarrativeFade_12.FadedIn", "box_PostFx_v3_44.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_24();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|758061273", "758061273", "Infirmary_Lvl1", "box_OutputOrder_v2_25.Out", "box_SetContextualStrategy_24.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_27();
    l0 = self.box_VisibilityModifier_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|2087726646", "2087726646", "Infirmary_Lvl1", "box_OutputOrder_v2_25.Out", "box_VisibilityModifier_27.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_33();
    l0 = self.box_VisibilityModifier_33;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1297690980", "1297690980", "Infirmary_Lvl1", "box_OutputOrder_v2_25.Out", "box_VisibilityModifier_33.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_Homebase_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_NarrativeSceneSetup_Homebase_45;
    l1 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1863360179", "1863360179", "Infirmary_Lvl1", "box_NarrativeSceneSetup_Homebase_45.Out", "box_Delay_v5_14.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayersVisibilityModifier_18();
    l0 = self.box_PlayersVisibilityModifier_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|206599535", "206599535", "Infirmary_Lvl1", "box_OutputOrder_v2_26.Out", "box_PlayersVisibilityModifier_18.SetAllVisible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAllVisible
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1707704138", "1707704138", "Infirmary_Lvl1", "box_OutputOrder_v2_26.Out", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_31();
    l0 = self.box_VisibilityModifier_31;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1206634108", "1206634108", "Infirmary_Lvl1", "box_OutputOrder_v2_26.Out", "box_VisibilityModifier_31.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_30();
    l0 = self.box_VisibilityModifier_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1843660675", "1843660675", "Infirmary_Lvl1", "box_OutputOrder_v2_26.Out", "box_VisibilityModifier_30.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_26_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_35();
    l0 = self.box_VisibilityModifier_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|553108683", "553108683", "Infirmary_Lvl1", "box_OutputOrder_v2_26.Out", "box_VisibilityModifier_35.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_10_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_Homebase_45();
    l0 = self.box_EntityStatusListener_10;
    l1 = self.box_NarrativeSceneSetup_Homebase_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|884455811", "884455811", "Infirmary_Lvl1", "box_EntityStatusListener_10.Loaded", "box_NarrativeSceneSetup_Homebase_45.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_NarrativeSceneCleanup_Homebase_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EndStandaloneScript_11();
    l0 = self.box_NarrativeSceneCleanup_Homebase_46;
    l1 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|2110713068", "2110713068", "Infirmary_Lvl1", "box_NarrativeSceneCleanup_Homebase_46.Out", "box_EndStandaloneScript_11.End", l0:GetLuaBox(), l1:GetLuaBox());
    -- End
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlayersVisibilityModifier_17_OnSetAllInvisible()
    local l0, l1;
    l0 = self.box_PlayersVisibilityModifier_17;
    l1 = self.box_StartMetaSequence_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1382557414", "1382557414", "Infirmary_Lvl1", "box_PlayersVisibilityModifier_17.OnSetAllInvisible", "box_StartMetaSequence_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_23()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_32()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#0C573993",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_14()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_39()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|247571766");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_16()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "2108515443825203873",
        -- Destination,
        [1] = "2107383216619926362",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|394420866");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_21_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#0C573993",
        -- PawnGroup,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|423860197");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
                [2] = self.f_box_OutputOrder_v2_19_Out_2,
                [3] = self.f_box_OutputOrder_v2_19_Out_3,
                [4] = self.f_box_OutputOrder_v2_19_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EndStandaloneScript_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndStandaloneScript_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|452167813");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_31()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108696533196089735",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|479140641");
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
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|542075223");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_2()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequenceID,
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

function export:OnEnter_box_PlaySequence_v8_3()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2107173449267964257",
        -- SequenceFile,
        [4] = "Sequences/bowmore_main/homebase/D1_Hero_HB_Infirmary/d1_hero_hb_cin_infirmary_lvl1.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_28()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2108696533196089735",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|836230102");
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

function export:OnEnter_box_VisibilityModifier_27()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_34()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109013518318594733",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|933070534");
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
                [0] = self.f_box_OutputOrder_v2_36_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_9()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_33()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#0C573993",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1058192157");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
                [2] = self.f_box_OutputOrder_v2_22_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1076861204");
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

function export:OnEnter_box_VisibilityModifier_29()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2107077161876718887",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_42()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_35()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109013518318594733",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_41()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
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

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1413115296");
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

function export:OnEnter_box_NarrativeSceneSetup_Homebase_45()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_30()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2107077161876718887",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1532827119");
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

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1583555254");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
                [2] = self.f_box_OutputOrder_v2_26_Out_2,
                [3] = self.f_box_OutputOrder_v2_26_Out_3,
                [4] = self.f_box_OutputOrder_v2_26_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_10()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2107173449267964257",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_13()
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

function export:OnEnter_box_NarrativeSceneCleanup_Homebase_46()
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

function export:OnEnter_box_PostFx_v3_44()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicOverlay_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicOverlay_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|1902259405");
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

function export:OnEnter_box_PlayersVisibilityModifier_17()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Upgrades.domino|@Infirmary_Lvl1|2108953093");
    l0:SetConnections({
    });
    params = {
        -- Group,
        [1] = "#B9FA7D88",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_1_Out()
    local l0;
    l0 = self.box_StartMetaSequence_1;
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
