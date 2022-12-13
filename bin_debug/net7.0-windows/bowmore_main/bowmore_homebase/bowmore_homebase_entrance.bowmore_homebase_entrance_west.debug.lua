LUACe -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_homebase/bowmore_homebase_entrance.domino
-- User graph: Bowmore_Homebase_Entrance_West
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EndStandaloneScript.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/DisplayCinematicOverlay.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PlayersModelTypeModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3787283076.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1451788569.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Homebase/Bowmore_Homebase_Entrance.Bowmore_Homebase_Entrance_West.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Player/PlayersModelTypeModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetFirstPerson",
            },
            [1] = {
                name = "SetThirdPerson",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnSetFirstPerson",
                delayed = false,
            },
            [1] = {
                name = "OnSetThirdPerson",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "players",
                type = "group",
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
    self._name = "Bowmore_Homebase_Entrance_West";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West";
    self.Out = DummyFunction;
    self.MetaSequenceID = 0;
    self.MetaSequence0 = 0;
    self.box_NarrativeFade_1 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|19631383");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_1_FadedIn,
    });
    self.box_NarrativeSceneSetup_Homebase_8 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup_Homebase.debug.lua");
    l0 = self.box_NarrativeSceneSetup_Homebase_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_Homebase_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|72314931");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_Homebase_8_Holstered,
    });
    self.box_StartMetaSequence_19 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|353215215");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_19_Out,
    });
    self.box_EntityStatusListener_12 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|473396716");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_12_Loaded,
    });
    self.box_NarrativeSceneCleanUp_V2_7 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|636630585");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_7_Out,
    });
    self.box_Delay_v5_5 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|679893097");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_5_TimeElapsed,
    });
    self.box_VisibilityModifier_20 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|785165830");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_20_Disabled,
    });
    self.box_PlaySequence_v8_15 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|882538771");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 2,
        },
        dataIn = {
        },
        dataOut = {
        },
    });
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_PlaySequence_v8_15_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_15_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIN",
                    value = self.f_box_PlaySequence_v8_15_SPOut__FadeIN_,
                },
                [1] = {
                    string = "FadeOUT",
                    value = self.f_box_PlaySequence_v8_15_SPOut__FadeOUT_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_15_Started,
    });
    self.box_VisibilityModifier_22 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|988464397");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_22_Enabled,
    });
    self.box_TeleportPawns_18 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1081904444");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_18_Out,
    });
    self.box_NarrativeFade_4 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1099134695");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_4_FadedOut,
    });
    self.box_PostFx_v3_27 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1125897356");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_24 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1315943859");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_24_Stopped,
    });
    self.box_Music_Quest_v2_10 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1476467374");
    l0:SetConnections({
    });
    self.box_NarrativeFade_13 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1515046455");
    l0:SetConnections({
    });
    self.box_PlayersModelTypeModifier_25 = cbox:CreateBox("Domino/System/Player/PlayersModelTypeModifier.lua");
    l0 = self.box_PlayersModelTypeModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersModelTypeModifier_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1538233428");
    l0:SetConnections({
        -- OnSetThirdPerson,
        [1] = self.f_box_PlayersModelTypeModifier_25_OnSetThirdPerson,
    });
    self.box_Delay_v5_14 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1748323414");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_14_TimeElapsed,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1776906035");
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
    self.box_PlayersModelTypeModifier_26 = cbox:CreateBox("Domino/System/Player/PlayersModelTypeModifier.lua");
    l0 = self.box_PlayersModelTypeModifier_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersModelTypeModifier_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|2107762500");
    l0:SetConnections({
        -- OnSetFirstPerson,
        [0] = self.f_box_PlayersModelTypeModifier_26_OnSetFirstPerson,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_12();
    l0 = self.box_EntityStatusListener_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|23356907", "23356907", "Bowmore_Homebase_Entrance_West", "In", "box_EntityStatusListener_12.Enable", self, l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_NarrativeFade_1_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_EndStandaloneScript_9();
    l0 = self.box_NarrativeFade_1;
    l1 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1568722308", "1568722308", "Bowmore_Homebase_Entrance_West", "box_NarrativeFade_1.FadedIn", "box_EndStandaloneScript_9.End", l0:GetLuaBox(), l1:GetLuaBox());
    -- End
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_Homebase_8_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_4();
    l0 = self.box_NarrativeSceneSetup_Homebase_8;
    l1 = self.box_NarrativeFade_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1182604154", "1182604154", "Bowmore_Homebase_Entrance_West", "box_NarrativeSceneSetup_Homebase_8.Holstered", "box_NarrativeFade_4.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_1();
    l0 = self.box_NarrativeFade_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1909883959", "1909883959", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_28.Out", "box_NarrativeFade_1.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_27();
    l0 = self.box_PostFx_v3_27;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1220150949", "1220150949", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_28.Out", "box_PostFx_v3_27.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_28_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_33();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1465282986", "1465282986", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_28.Out", "box_SoundMixing_33.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_30_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_13();
    l0 = self.box_NarrativeFade_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|662111909", "662111909", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_30.Out", "box_NarrativeFade_13.FadeOut", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeOut
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_30_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCinematicOverlay_29();
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1895181091", "1895181091", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_30.Out", "box_DisplayCinematicOverlay_29.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StartMetaSequence_19_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_19_Out();
    params = self:OnEnter_box_PlaySequence_v8_15();
    l0 = self.box_StartMetaSequence_19;
    l1 = self.box_PlaySequence_v8_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|2052439714", "2052439714", "Bowmore_Homebase_Entrance_West", "box_StartMetaSequence_19.Out", "box_PlaySequence_v8_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_12_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_17();
    l0 = self.box_EntityStatusListener_12;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1248375791", "1248375791", "Bowmore_Homebase_Entrance_West", "box_EntityStatusListener_12.Loaded", "box_HealthModifier_v2_17.RemoveCritical", l0:GetLuaBox(), l1:GetLuaBox());
    -- RemoveCritical
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_10();
    l0 = self.box_Music_Quest_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1361449480", "1361449480", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_21.Out", "box_Music_Quest_v2_10.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = self.box_NarrativeSceneCleanUp_V2_7;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|822095650", "822095650", "Bowmore_Homebase_Entrance_West", "box_NarrativeSceneCleanUp_V2_7.Out", "box_OutputOrder_v2_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_5_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_18();
    l0 = self.box_Delay_v5_5;
    l1 = self.box_TeleportPawns_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1673136645", "1673136645", "Bowmore_Homebase_Entrance_West", "box_Delay_v5_5.TimeElapsed", "box_TeleportPawns_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_20_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayersModelTypeModifier_25();
    l0 = self.box_VisibilityModifier_20;
    l1 = self.box_PlayersModelTypeModifier_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|18916614", "18916614", "Bowmore_Homebase_Entrance_West", "box_VisibilityModifier_20.Disabled", "box_PlayersModelTypeModifier_25.SetThirdPerson", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetThirdPerson
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_15_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1714144388", "1714144388", "Bowmore_Homebase_Entrance_West", "box_PlaySequence_v8_15.Finished", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_15_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_15;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|856873327", "856873327", "Bowmore_Homebase_Entrance_West", "box_PlaySequence_v8_15.Skipped", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_15_SPOut__FadeIN_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_PlaySequence_v8_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|261392218", "261392218", "Bowmore_Homebase_Entrance_West", "box_PlaySequence_v8_15.SPOut", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_15_SPOut__FadeOUT_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_30();
    l0 = self.box_PlaySequence_v8_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|973397530", "973397530", "Bowmore_Homebase_Entrance_West", "box_PlaySequence_v8_15.SPOut", "box_OutputOrder_v2_30.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = self.box_PlaySequence_v8_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1887204316", "1887204316", "Bowmore_Homebase_Entrance_West", "box_PlaySequence_v8_15.Started", "box_OutputOrder_v2_21.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_22_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlayersModelTypeModifier_26();
    l0 = self.box_VisibilityModifier_22;
    l1 = self.box_PlayersModelTypeModifier_26;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|794731705", "794731705", "Bowmore_Homebase_Entrance_West", "box_VisibilityModifier_22.Enabled", "box_PlayersModelTypeModifier_26.SetFirstPerson", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetFirstPerson
    l1:Exec(0, params);
end;

function export:f_box_TeleportPawns_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_7();
    l0 = self.box_TeleportPawns_18;
    l1 = self.box_NarrativeSceneCleanUp_V2_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|2135393459", "2135393459", "Bowmore_Homebase_Entrance_West", "box_TeleportPawns_18.Out", "box_NarrativeSceneCleanUp_V2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_NarrativeFade_4_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = self.box_NarrativeFade_4;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1358112663", "1358112663", "Bowmore_Homebase_Entrance_West", "box_NarrativeFade_4.FadedOut", "box_OutputOrder_v2_32.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_24_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_22();
    l0 = self.box_StopMetaSequence_v5_24;
    l1 = self.box_VisibilityModifier_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1918373028", "1918373028", "Bowmore_Homebase_Entrance_West", "box_StopMetaSequence_v5_24.Stopped", "box_VisibilityModifier_22.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_10();
    l0 = self.box_Music_Quest_v2_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1427379755", "1427379755", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_2.Out", "box_Music_Quest_v2_10.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_24();
    l0 = self.box_StopMetaSequence_v5_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|2006517792", "2006517792", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_2.Out", "box_StopMetaSequence_v5_24.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_PlayersModelTypeModifier_25_OnSetThirdPerson()
    local l0, l1;
    l0 = self.box_PlayersModelTypeModifier_25;
    l1 = self.box_StartMetaSequence_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|2024295751", "2024295751", "Bowmore_Homebase_Entrance_West", "box_PlayersModelTypeModifier_25.OnSetThirdPerson", "box_StartMetaSequence_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeFade_13();
    l0 = self.box_NarrativeFade_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1236294640", "1236294640", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_23.Out", "box_NarrativeFade_13.FadeIn", clone:GetLuaBox(), l0:GetLuaBox());
    -- FadeIn
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCinematicOverlay_29();
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1887677904", "1887677904", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_23.Out", "box_DisplayCinematicOverlay_29.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_14_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_20();
    l0 = self.box_Delay_v5_14;
    l1 = self.box_VisibilityModifier_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1033024771", "1033024771", "Bowmore_Homebase_Entrance_West", "box_Delay_v5_14.TimeElapsed", "box_VisibilityModifier_20.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = self.box_MultipleOR_6;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1484200591", "1484200591", "Bowmore_Homebase_Entrance_West", "box_MultipleOR_6.Out", "box_OutputOrder_v2_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_HealthModifier_v2_17_OnRemoveCritical()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_NarrativeSceneSetup_Homebase_8();
    l0 = self.box_NarrativeSceneSetup_Homebase_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|777461870", "777461870", "Bowmore_Homebase_Entrance_West", "box_HealthModifier_v2_17.OnRemoveCritical", "box_NarrativeSceneSetup_Homebase_8.HolsterWeapon", clone:GetLuaBox(), l0:GetLuaBox());
    -- HolsterWeapon
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_14();
    l0 = self.box_Delay_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|2141779542", "2141779542", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_32.Out", "box_Delay_v5_14.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_31();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1732677431", "1732677431", "Bowmore_Homebase_Entrance_West", "box_OutputOrder_v2_32.Out", "box_SoundMixing_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PlayersModelTypeModifier_26_OnSetFirstPerson()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_5();
    l0 = self.box_PlayersModelTypeModifier_26;
    l1 = self.box_Delay_v5_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1519721855", "1519721855", "Bowmore_Homebase_Entrance_West", "box_PlayersModelTypeModifier_26.OnSetFirstPerson", "box_Delay_v5_5.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:OnEnter_box_NarrativeFade_1()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_Homebase_8()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|113772203");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
                [2] = self.f_box_OutputOrder_v2_28_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|310740018");
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
                [0] = self.f_box_OutputOrder_v2_30_Out_0,
                [1] = self.f_box_OutputOrder_v2_30_Out_1,
            },
            count = 2,
        },
    });
    params = {
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
        [2] = "2108057385500170840",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|590921552");
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
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_7()
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
        [4] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_5()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_EndStandaloneScript_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/EndStandaloneScript.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EndStandaloneScript_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|739331843");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_20()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109399357460581594",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_15()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequence0,
        -- SceneEntity,
        [3] = "2108057385500170840",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/homebase/d1_hero_hb_entrance/cin_d1_hero_hb_entrance_west.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_22()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2109399357460581594",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_18()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "2106608025188961977",
        -- Destination,
        [1] = "2106608025186864821",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_4()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_27()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_24()
    local params;
    params = {
        -- ID,
        [0] = self.MetaSequence0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1347675776");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_10()
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
        [6] = "3787283076",
        -- StopEvent,
        [7] = "1451788569",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_13()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlayersModelTypeModifier_25()
    local params;
    params = {
        -- players,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1587666531");
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

function export:OnEnter_box_SoundMixing_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1682013878");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
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

function export:OnEnter_box_HealthModifier_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|1848405839");
    l0:SetConnections({
        -- OnRemoveCritical,
        [2] = self.f_box_HealthModifier_v2_17_OnRemoveCritical,
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

function export:OnEnter_box_SoundMixing_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|2017748517");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Celebration_Global",
    };
    return params;
end;

function export:OnEnter_box_DisplayCinematicOverlay_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/DisplayCinematicOverlay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCinematicOverlay_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|2067108417");
    l0:SetConnections({
    });
    params = {
        -- BottomDescriptionId,
        [0] = {
            section = "Door Cinematic",
            item = "CINEMATIC_HOMEBASE_DATE",
            id = "1023200",
        },
        -- DisplayGameTimeAsButtonDescription,
        [1] = false,
        -- IsInfrastructureUpgrade,
        [2] = false,
        -- TitleId,
        [3] = {
            section = "HOMEBASE",
            item = "Homebase_Name",
            id = "955756",
        },
        -- TopDescriptionId,
        [4] = {
            section = "Door Cinematic",
            item = "CINEMATIC_HOMEBASE_CONTEXT",
            id = "1023199",
        },
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Homebase\\Bowmore_Homebase_Entrance.domino|@Bowmore_Homebase_Entrance_West|2073995396");
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

function export:OnEnter_box_PlayersModelTypeModifier_26()
    local params;
    params = {
        -- players,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_19_Out()
    local l0;
    l0 = self.box_StartMetaSequence_19;
    self.MetaSequence0 = l0:GetDataOutValue(0);
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
