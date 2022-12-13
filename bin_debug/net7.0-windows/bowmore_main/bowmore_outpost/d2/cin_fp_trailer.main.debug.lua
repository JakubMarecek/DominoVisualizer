LUACm� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_outpost/d2/cin_fp_trailer.domino
-- User graph: Main
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
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/ChangeSunOrientation_v4.lua");
        cboxRes:RegisterBox("Domino/System/ConsoleCommand_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Outpost/D2/CIN_FP_Trailer.Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/ConsoleCommand_v3.lua")] = {
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
                name = "Execute",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "Loop",
                type = "bool",
            },
            [1] = {
                name = "Name",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Parameter",
                type = "string",
            },
        },
        dataOutCount = 1,
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
    self._name = "Main";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main";
    self._0 = 0;
    self._1 = 0;
    self._2 = 0;
    self._3 = 0;
    self.player = nil;
    self.box_NarrativeSceneSetup_11 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|72560805");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_11_Out,
    });
    self.box_ChangeSunOrientation_v4_39 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_39");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|89556153");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_39_Out,
    });
    self.box_StopMetaSequence_v5_22 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|93187439");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_22_Stopped,
    });
    self.box_TeleportPawns_44 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_44");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|104052470");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_44_Out,
    });
    self.box_NarrativeSceneCleanUp_V2_25 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp_V2.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_V2_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_V2_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|140836151");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_V2_25_Out,
    });
    self.box_ChangeSunOrientation_v4_37 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_37");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|212888576");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_37_Out,
    });
    self.box_Delay_v5_49 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_49");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|234147411");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_49_TimeElapsed,
    });
    self.box_TeleportPawns_50 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_50");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|250366066");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_50_Out,
    });
    self.box_ChangeSunOrientation_v4_40 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_40");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|258785934");
    l0:SetConnections({
        -- Reseted,
        [1] = self.f_box_ChangeSunOrientation_v4_40_Reseted,
    });
    self.box_StopMetaSequence_v5_17 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|268662706");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_17_Stopped,
    });
    self.box_ActivityAcknowledgeGate_5 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|291829694");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_5_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_5_Reloaded,
    });
    self.box_ChangeSunOrientation_v4_36 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_36");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|499986049");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_36_Out,
    });
    self.box_Delay_v5_43 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_43");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|516976475");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_43_TimeElapsed,
    });
    self.box_PlaySequence_v8_18 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|521343074");
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
        [0] = self.f_box_PlaySequence_v8_18_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_18_Skipped,
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|535081277");
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
        [0] = self.f_box_MultipleOR_20_Out,
    });
    self.box_TeleportPawns_46 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_46");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|709832552");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_46_Out,
    });
    self.box_ConsoleCommand_v3_1 = cbox:CreateBox("Domino/System/ConsoleCommand_v3.lua");
    l0 = self.box_ConsoleCommand_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ConsoleCommand_v3_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|710004865");
    l0:SetConnections({
        -- Execute,
        [2] = self.f_box_ConsoleCommand_v3_1_Execute,
    });
    self.box_Delay_v5_45 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_45");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|806838973");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_45_TimeElapsed,
    });
    self.box_MultipleOR_15 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|832930650");
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
        [0] = self.f_box_MultipleOR_15_Out,
    });
    self.box_Delay_v5_56 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_56;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_56");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|899462003");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_56_TimeElapsed,
    });
    self.box_Delay_v5_57 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_57;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_57");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|927944273");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_57_TimeElapsed,
    });
    self.box_PlaySequence_v8_10 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|930158379");
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
        [0] = self.f_box_PlaySequence_v8_10_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_10_Skipped,
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1020062552");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1021426946");
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
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1038813372");
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
    self.box_StartMetaSequence_23 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_23");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1039328942");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_23_Out,
    });
    self.box_NarrativeFade_35 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_35");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1107303572");
    l0:SetConnections({
        -- FadedIn,
        [0] = self.f_box_NarrativeFade_35_FadedIn,
    });
    self.box_StartMetaSequence_12 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1123978462");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_12_Out,
    });
    self.box_StartMetaSequence_19 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_19");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1172043352");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_19_Out,
    });
    self.box_Delay_v5_34 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1210296718");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_34_TimeElapsed,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1236124541");
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
        [0] = self.f_box_MultipleOR_16_Out,
    });
    self.box_PlaySequence_v8_21 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1253284890");
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
        [0] = self.f_box_PlaySequence_v8_21_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_21_Skipped,
    });
    self.box_TeleportPawns_48 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_48");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1384362074");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_TeleportPawns_48_Out,
    });
    self.box_MultipleAND_v2_28 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_28");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1392516493");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 9,
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
        [0] = self.f_box_MultipleAND_v2_28_Out,
    });
    self.box_StartMetaSequence_8 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1527260193");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_8_Out,
    });
    self.box_Delay_v5_47 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_47");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1528218672");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_47_TimeElapsed,
    });
    self.box_PlaySequence_v8_13 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_13");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1535486394");
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
        [0] = self.f_box_PlaySequence_v8_13_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_13_Skipped,
    });
    self.box_VisibilityModifier_54 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_54;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_54");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1611242436");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_9 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1707609127");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_9_Stopped,
    });
    self.box_Delay_v5_58 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_58;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_58");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1811323640");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_58_TimeElapsed,
    });
    self.box_VisibilityModifier_42 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_42");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1859732172");
    l0:SetConnections({
    });
    self.box_StopMetaSequence_v5_14 = cbox:CreateBox("Domino/System/Narrative/StopMetaSequence_v5.lua");
    l0 = self.box_StopMetaSequence_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v5_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2054753277");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v5_14_Stopped,
    });
    self.box_ChangeSunOrientation_v4_38 = cbox:CreateBox("Domino/System/ChangeSunOrientation_v4.lua");
    l0 = self.box_ChangeSunOrientation_v4_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ChangeSunOrientation_v4_38");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2075862894");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ChangeSunOrientation_v4_38_Out,
    });
    self.box_Delay_v5_61 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_61;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_61");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2102704957");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_61_TimeElapsed,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_5;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2072040027", "2072040027", "Main", "In", "box_ActivityAcknowledgeGate_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_NarrativeSceneSetup_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ChangeSunOrientation_v4_36();
    l0 = self.box_NarrativeSceneSetup_11;
    l1 = self.box_ChangeSunOrientation_v4_36;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|483749471", "483749471", "Main", "box_NarrativeSceneSetup_11.Out", "box_ChangeSunOrientation_v4_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ChangeSunOrientation_v4_39_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_48();
    l0 = self.box_ChangeSunOrientation_v4_39;
    l1 = self.box_TeleportPawns_48;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|910029724", "910029724", "Main", "box_ChangeSunOrientation_v4_39.Out", "box_TeleportPawns_48.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StopMetaSequence_v5_22_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_V2_25();
    l0 = self.box_StopMetaSequence_v5_22;
    l1 = self.box_NarrativeSceneCleanUp_V2_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|229057941", "229057941", "Main", "box_StopMetaSequence_v5_22.Stopped", "box_NarrativeSceneCleanUp_V2_25.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_TeleportPawns_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_45();
    l0 = self.box_TeleportPawns_44;
    l1 = self.box_Delay_v5_45;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|794607015", "794607015", "Main", "box_TeleportPawns_44.Out", "box_Delay_v5_45.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_NarrativeSceneCleanUp_V2_25_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ChangeSunOrientation_v4_40();
    l0 = self.box_NarrativeSceneCleanUp_V2_25;
    l1 = self.box_ChangeSunOrientation_v4_40;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1264994225", "1264994225", "Main", "box_NarrativeSceneCleanUp_V2_25.Out", "box_ChangeSunOrientation_v4_40.Reset", l0:GetLuaBox(), l1:GetLuaBox());
    -- Reset
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_55_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_55();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|638262103", "638262103", "Main", "box_MissionBlockLayer_55.Deactivated", "box_MissionBlockLayer_55.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_55_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|252146775", "252146775", "Main", "box_MissionBlockLayer_55.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 8);
end;

function export:f_box_MissionBlockLayer_41_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_41();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|637675720", "637675720", "Main", "box_MissionBlockLayer_41.Deactivated", "box_MissionBlockLayer_41.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_41_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|122539918", "122539918", "Main", "box_MissionBlockLayer_41.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 5);
end;

function export:f_box_MissionBlockLayer_59_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_59();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1608877804", "1608877804", "Main", "box_MissionBlockLayer_59.Deactivated", "box_MissionBlockLayer_59.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_59_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_60();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1184367930", "1184367930", "Main", "box_MissionBlockLayer_59.Disabled", "box_MissionBlockLayer_60.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ChangeSunOrientation_v4_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_44();
    l0 = self.box_ChangeSunOrientation_v4_37;
    l1 = self.box_TeleportPawns_44;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|269977123", "269977123", "Main", "box_ChangeSunOrientation_v4_37.Out", "box_TeleportPawns_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_49_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_49;
    l1 = self.box_StartMetaSequence_23;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|237396671", "237396671", "Main", "box_Delay_v5_49.TimeElapsed", "box_StartMetaSequence_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_TeleportPawns_50_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_43();
    l0 = self.box_TeleportPawns_50;
    l1 = self.box_Delay_v5_43;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1213308288", "1213308288", "Main", "box_TeleportPawns_50.Out", "box_Delay_v5_43.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ChangeSunOrientation_v4_40_Reseted()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_ChangeSunOrientation_v4_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1902020792", "1902020792", "Main", "box_ChangeSunOrientation_v4_40.Reseted", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v5_17_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ChangeSunOrientation_v4_39();
    l0 = self.box_StopMetaSequence_v5_17;
    l1 = self.box_ChangeSunOrientation_v4_39;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1995908041", "1995908041", "Main", "box_StopMetaSequence_v5_17.Stopped", "box_ChangeSunOrientation_v4_39.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_5_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1361764672", "1361764672", "Main", "box_ActivityAcknowledgeGate_5.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_5_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_5;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1737321518", "1737321518", "Main", "box_ActivityAcknowledgeGate_5.Reloaded", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_30_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_30();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1488847703", "1488847703", "Main", "box_MissionBlockLayer_30.Deactivated", "box_MissionBlockLayer_30.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_30_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|636625195", "636625195", "Main", "box_MissionBlockLayer_30.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 3);
end;

function export:f_box_ChangeSunOrientation_v4_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_50();
    l0 = self.box_ChangeSunOrientation_v4_36;
    l1 = self.box_TeleportPawns_50;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1571602999", "1571602999", "Main", "box_ChangeSunOrientation_v4_36.Out", "box_TeleportPawns_50.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_43_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_43;
    l1 = self.box_StartMetaSequence_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|208100607", "208100607", "Main", "box_Delay_v5_43.TimeElapsed", "box_StartMetaSequence_8.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_18_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_18;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1305609205", "1305609205", "Main", "box_PlaySequence_v8_18.Finished", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_18_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_18;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|327873976", "327873976", "Main", "box_PlaySequence_v8_18.Skipped", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_17();
    l0 = self.box_MultipleOR_20;
    l1 = self.box_StopMetaSequence_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1962464854", "1962464854", "Main", "box_MultipleOR_20.Out", "box_StopMetaSequence_v5_17.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_41();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2028645192", "2028645192", "Main", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_41.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_26();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2034782440", "2034782440", "Main", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_26.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1927095490", "1927095490", "Main", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_32.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_33();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|916266830", "916266830", "Main", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_33.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_30();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1285159039", "1285159039", "Main", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_30.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_29();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2430782", "2430782", "Main", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_29.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_42();
    l0 = self.box_VisibilityModifier_42;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|747494556", "747494556", "Main", "box_OutputOrder_v2_31.Out", "box_VisibilityModifier_42.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_31_Out_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_52();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2093599717", "2093599717", "Main", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_52.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_53();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1878300457", "1878300457", "Main", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_53.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_55();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1610075538", "1610075538", "Main", "box_OutputOrder_v2_31.Out", "box_MissionBlockLayer_55.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_TeleportPawns_46_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_47();
    l0 = self.box_TeleportPawns_46;
    l1 = self.box_Delay_v5_47;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|471717394", "471717394", "Main", "box_TeleportPawns_46.Out", "box_Delay_v5_47.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ConsoleCommand_v3_1_Execute()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_27();
    l0 = self.box_ConsoleCommand_v3_1;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|990391272", "990391272", "Main", "box_ConsoleCommand_v3_1.Execute", "box_GetLocalPlayer_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_29_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_29();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|482616258", "482616258", "Main", "box_MissionBlockLayer_29.Deactivated", "box_MissionBlockLayer_29.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_29_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1543057641", "1543057641", "Main", "box_MissionBlockLayer_29.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 4);
end;

function export:f_box_Delay_v5_45_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_45;
    l1 = self.box_StartMetaSequence_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|309245716", "309245716", "Main", "box_Delay_v5_45.TimeElapsed", "box_StartMetaSequence_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_15_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_51();
    l0 = self.box_MultipleOR_15;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1182861359", "1182861359", "Main", "box_MultipleOR_15.Out", "box_OutputOrder_v2_51.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_56_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_13();
    l0 = self.box_Delay_v5_56;
    l1 = self.box_PlaySequence_v8_13;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2023764979", "2023764979", "Main", "box_Delay_v5_56.TimeElapsed", "box_PlaySequence_v8_13.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_60_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_60();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|294882857", "294882857", "Main", "box_MissionBlockLayer_60.Deactivated", "box_MissionBlockLayer_60.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_60_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_6();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|856503882", "856503882", "Main", "box_MissionBlockLayer_60.Disabled", "box_ActivityEnd_6.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_57_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_18();
    l0 = self.box_Delay_v5_57;
    l1 = self.box_PlaySequence_v8_18;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|654186844", "654186844", "Main", "box_Delay_v5_57.TimeElapsed", "box_PlaySequence_v8_18.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_10_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|884752650", "884752650", "Main", "box_PlaySequence_v8_10.Finished", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_10_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_10;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|264342689", "264342689", "Main", "box_PlaySequence_v8_10.Skipped", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ConsoleCommand_v3_1();
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_ConsoleCommand_v3_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1375138937", "1375138937", "Main", "box_ActivityInitialized_3.Out", "box_ConsoleCommand_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1900385503", "1900385503", "Main", "box_MultipleOR_4.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1799815003", "1799815003", "Main", "box_OutputOrder_v2_7.Out", "box_Print_v2_2.ToAll", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToAll
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_59();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|464312917", "464312917", "Main", "box_OutputOrder_v2_7.Out", "box_MissionBlockLayer_59.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_22();
    l0 = self.box_MultipleOR_24;
    l1 = self.box_StopMetaSequence_v5_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|107894929", "107894929", "Main", "box_MultipleOR_24.Out", "box_StopMetaSequence_v5_22.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_StartMetaSequence_23_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_23_Out();
    params = self:OnEnter_box_Delay_v5_58();
    l0 = self.box_StartMetaSequence_23;
    l1 = self.box_Delay_v5_58;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1336112591", "1336112591", "Main", "box_StartMetaSequence_23.Out", "box_Delay_v5_58.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MissionBlockLayer_33_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_33();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1490938442", "1490938442", "Main", "box_MissionBlockLayer_33.Deactivated", "box_MissionBlockLayer_33.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_33_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1114239401", "1114239401", "Main", "box_MissionBlockLayer_33.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 2);
end;

function export:f_box_NarrativeFade_35_FadedIn()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_11();
    l0 = self.box_NarrativeFade_35;
    l1 = self.box_NarrativeSceneSetup_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1949594022", "1949594022", "Main", "box_NarrativeFade_35.FadedIn", "box_NarrativeSceneSetup_11.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_StartMetaSequence_12_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_12_Out();
    params = self:OnEnter_box_Delay_v5_56();
    l0 = self.box_StartMetaSequence_12;
    l1 = self.box_Delay_v5_56;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1723928437", "1723928437", "Main", "box_StartMetaSequence_12.Out", "box_Delay_v5_56.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_19_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_19_Out();
    params = self:OnEnter_box_Delay_v5_57();
    l0 = self.box_StartMetaSequence_19;
    l1 = self.box_Delay_v5_57;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|248876447", "248876447", "Main", "box_StartMetaSequence_19.Out", "box_Delay_v5_57.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_34_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_35();
    l0 = self.box_Delay_v5_34;
    l1 = self.box_NarrativeFade_35;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1139832822", "1139832822", "Main", "box_Delay_v5_34.TimeElapsed", "box_NarrativeFade_35.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v5_9();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_StopMetaSequence_v5_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1241069118", "1241069118", "Main", "box_MultipleOR_16.Out", "box_StopMetaSequence_v5_9.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_21_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|687441481", "687441481", "Main", "box_PlaySequence_v8_21.Finished", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_21_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1891073813", "1891073813", "Main", "box_PlaySequence_v8_21.Skipped", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MissionBlockLayer_52_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_52();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1009389607", "1009389607", "Main", "box_MissionBlockLayer_52.Deactivated", "box_MissionBlockLayer_52.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_52_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|757788487", "757788487", "Main", "box_MissionBlockLayer_52.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 6);
end;

function export:f_box_TeleportPawns_48_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_49();
    l0 = self.box_TeleportPawns_48;
    l1 = self.box_Delay_v5_49;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|364463259", "364463259", "Main", "box_TeleportPawns_48.Out", "box_Delay_v5_49.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MultipleAND_v2_28_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_34();
    l0 = self.box_MultipleAND_v2_28;
    l1 = self.box_Delay_v5_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1826386712", "1826386712", "Main", "box_MultipleAND_v2_28.Out", "box_Delay_v5_34.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_StartMetaSequence_8_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_8_Out();
    params = self:OnEnter_box_Delay_v5_61();
    l0 = self.box_StartMetaSequence_8;
    l1 = self.box_Delay_v5_61;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1402700558", "1402700558", "Main", "box_StartMetaSequence_8.Out", "box_Delay_v5_61.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_47_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_47;
    l1 = self.box_StartMetaSequence_19;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1384584613", "1384584613", "Main", "box_Delay_v5_47.TimeElapsed", "box_StartMetaSequence_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_13_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|481558759", "481558759", "Main", "box_PlaySequence_v8_13.Finished", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_13_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_13;
    l1 = self.box_MultipleOR_15;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1637309646", "1637309646", "Main", "box_PlaySequence_v8_13.Skipped", "box_MultipleOR_15.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_StopMetaSequence_v5_9_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ChangeSunOrientation_v4_37();
    l0 = self.box_StopMetaSequence_v5_9;
    l1 = self.box_ChangeSunOrientation_v4_37;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1246424580", "1246424580", "Main", "box_StopMetaSequence_v5_9.Stopped", "box_ChangeSunOrientation_v4_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_58_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_21();
    l0 = self.box_Delay_v5_58;
    l1 = self.box_PlaySequence_v8_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|169936469", "169936469", "Main", "box_Delay_v5_58.TimeElapsed", "box_PlaySequence_v8_21.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_StopMetaSequence_v5_14();
    l0 = self.box_StopMetaSequence_v5_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1264576961", "1264576961", "Main", "box_OutputOrder_v2_51.Out", "box_StopMetaSequence_v5_14.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_51_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_54();
    l0 = self.box_VisibilityModifier_54;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1985054415", "1985054415", "Main", "box_OutputOrder_v2_51.Out", "box_VisibilityModifier_54.SetDisabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetDisabled
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_32_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_32();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|315268230", "315268230", "Main", "box_MissionBlockLayer_32.Deactivated", "box_MissionBlockLayer_32.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_32_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|910382624", "910382624", "Main", "box_MissionBlockLayer_32.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_MissionBlockLayer_26_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_26();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|516553737", "516553737", "Main", "box_MissionBlockLayer_26.Deactivated", "box_MissionBlockLayer_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_26_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1043883985", "1043883985", "Main", "box_MissionBlockLayer_26.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_StopMetaSequence_v5_14_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ChangeSunOrientation_v4_38();
    l0 = self.box_StopMetaSequence_v5_14;
    l1 = self.box_ChangeSunOrientation_v4_38;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1208982353", "1208982353", "Main", "box_StopMetaSequence_v5_14.Stopped", "box_ChangeSunOrientation_v4_38.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_ChangeSunOrientation_v4_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_TeleportPawns_46();
    l0 = self.box_ChangeSunOrientation_v4_38;
    l1 = self.box_TeleportPawns_46;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|186062718", "186062718", "Main", "box_ChangeSunOrientation_v4_38.Out", "box_TeleportPawns_46.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_GetLocalPlayer_v2_27_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_27_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1627417839", "1627417839", "Main", "box_GetLocalPlayer_v2_27.Out", "box_OutputOrder_v2_31.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_61_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_10();
    l0 = self.box_Delay_v5_61;
    l1 = self.box_PlaySequence_v8_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|4640153", "4640153", "Main", "box_Delay_v5_61.TimeElapsed", "box_PlaySequence_v8_10.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_53_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_53();
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1325643059", "1325643059", "Main", "box_MissionBlockLayer_53.Deactivated", "box_MissionBlockLayer_53.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_53_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_28();
    l0 = self.box_MultipleAND_v2_28;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|624287126", "624287126", "Main", "box_MissionBlockLayer_53.Disabled", "box_MultipleAND_v2_28.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 7);
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|68419399");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "white",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Playing CIN FP Trailer",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_11()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_39()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 34,
        -- ElevationDegree,
        [1] = 161,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_22()
    local params;
    params = {
        -- ID,
        [0] = self._3,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_44()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107448822023067163",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_V2_25()
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

function export:OnEnter_box_MissionBlockLayer_55()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_55");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|145101739");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_55_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_55_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "45174691972081152",
        -- missionLayerId,
        [1] = "54181891226822144",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_41");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|168387486");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_41_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_41_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160293462583513",
        -- missionLayerId,
        [1] = "36167492717324506",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_59()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_59");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|208466027");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_59_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_59_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160294398083566",
        -- missionLayerId,
        [1] = "45174692907565556",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_37()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 130.82,
        -- ElevationDegree,
        [1] = 26.1,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_49()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_50()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107448822023067163",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_40()
    local params;
    params = {
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_17()
    local params;
    params = {
        -- ID,
        [0] = self._2,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|418643516");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_30_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_30_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "36167492582320708",
        -- missionLayerId,
        [1] = "45174691837061703",
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_36()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 193,
        -- ElevationDegree,
        [1] = 151,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_43()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_18()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self._2,
        -- SceneEntity,
        [3] = "2107076220635079042",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_fp_trailer/cin_fp_trailer_050.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|565479040");
    l0:SetDynAnchorCount({
        controlIn = {
        },
        controlOut = {
            [0] = 11,
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
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
                [3] = self.f_box_OutputOrder_v2_31_Out_3,
                [4] = self.f_box_OutputOrder_v2_31_Out_4,
                [5] = self.f_box_OutputOrder_v2_31_Out_5,
                [6] = self.f_box_OutputOrder_v2_31_Out_6,
                [8] = self.f_box_OutputOrder_v2_31_Out_8,
                [9] = self.f_box_OutputOrder_v2_31_Out_9,
                [10] = self.f_box_OutputOrder_v2_31_Out_10,
            },
            count = 11,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_46()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107448822023067163",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_ConsoleCommand_v3_1()
    local params;
    params = {
        -- Loop,
        [0] = true,
        -- Name,
        [1] = "cin_fp_trailer",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_29");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|760826451");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_29_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_29_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160292524189070",
        -- missionLayerId,
        [1] = "36167491778930062",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_45()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|866393916");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_56()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_60()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_60");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|921185899");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_60_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_60_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160294398083566",
        -- missionLayerId,
        [1] = "27160297247659203",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_57()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_10()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self._0,
        -- SceneEntity,
        [3] = "2107076220635079042",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_fp_trailer/cin_fp_trailer_030.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1029287075");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_33()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_33");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1043852286");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_33_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_33_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "99217886562529657",
        -- missionLayerId,
        [1] = "117232285072011642",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_35()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_34()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 5,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_21()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self._3,
        -- SceneEntity,
        [3] = "2107339238704959756",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_fp_trailer/cin_fp_trailer_080.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_52()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_52");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1313492352");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_52_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_52_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "126239484326801344",
        -- missionLayerId,
        [1] = "135246683581542336",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_48()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2107448822023067163",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_28()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_47()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 2,
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
        [2] = self._1,
        -- SceneEntity,
        [3] = "2107076220635079042",
        -- SequenceFile,
        [4] = "sequences/bowmore_main/cin_fp_trailer/cin_fp_trailer_040.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_54()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2107450659358920721",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_9()
    local params;
    params = {
        -- ID,
        [0] = self._0,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_58()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_51()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_51");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1822190146");
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

function export:OnEnter_box_VisibilityModifier_42()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2107093256385879918",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1954534085");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_32_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_32_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "72196288798261320",
        -- missionLayerId,
        [1] = "90210687307743306",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|1970462265");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_26_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_26_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "45174691033930350",
        -- missionLayerId,
        [1] = "63189089543412337",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v5_14()
    local params;
    params = {
        -- ID,
        [0] = self._1,
    };
    return params;
end;

function export:OnEnter_box_ChangeSunOrientation_v4_38()
    local params;
    params = {
        -- AzimuthDegree,
        [0] = 310,
        -- ElevationDegree,
        [1] = 26,
        -- ResetAfterBeat,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_27");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2088615135");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_61()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_53()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_53");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Outpost\\D2\\CIN_FP_Trailer.domino|@Main|2143485750");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_53_Deactivated,
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_53_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "144253882836333384",
        -- missionLayerId,
        [1] = "153261082091074376",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_23_Out()
    local l0;
    l0 = self.box_StartMetaSequence_23;
    self._3 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_12_Out()
    local l0;
    l0 = self.box_StartMetaSequence_12;
    self._1 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_19_Out()
    local l0;
    l0 = self.box_StartMetaSequence_19;
    self._2 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_StartMetaSequence_8_Out()
    local l0;
    l0 = self.box_StartMetaSequence_8;
    self._0 = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_27_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.player = l0:GetDataOutValue(0);
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
