LUACI�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_ingamebenchmark/fc5_ingamebenchmark_heliride.domino
-- User graph: InGameBenchmark_HeliRide
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/CompareIntegers.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PawnCameraModifier.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/TimeOfDayListener.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_InGameBenchmark/FC5_InGameBenchmark_HeliRide.InGameBenchmark_HeliRide.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua")] = {
        stateless = false,
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
            [3] = {
                name = "Enable",
            },
        },
        controlInCount = 4,
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
            [3] = {
                name = "Enabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "missionBlockId",
                type = "missionblock",
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
    metadataTable[GetPathID("Domino/System/Player/PawnCameraModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableCloseUp",
            },
            [1] = {
                name = "DisableExtremeZoom",
            },
            [2] = {
                name = "EnableCloseUp",
            },
            [3] = {
                name = "EnableExtremeZoom",
            },
        },
        controlInCount = 4,
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
                name = "ExtremeZoomDisabled",
                delayed = false,
            },
            [3] = {
                name = "ExtremeZoomEnabled",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Pawns",
                type = "group",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/TimeOfDayListener.lua")] = {
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
                name = "HourChanged",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "HourOfTheDay",
                type = "int",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "InGameBenchmark_HeliRide";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide";
    self.MetaSequenceID = 0;
    self.player = nil;
    self.box_BaseMissionBlock_v2_1 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|15965640");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_1_Activated,
        -- Enabled,
        [3] = self.f_box_BaseMissionBlock_v2_1_Enabled,
    });
    self.box_NarrativeFade_11 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|184273210");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_11_FadedOut,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|770516546");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|880911280");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|918794920");
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
    self.box_CHEAT_SetEnvironmentTimeScale_7 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|992675416");
    l0:SetConnections({
    });
    self.box_NarrativeFade_8 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1094737093");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_27 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1130456522");
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
        [0] = self.f_box_PlaySequence_v8_27_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_27_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Stop_Postfx",
                    value = self.f_box_PlaySequence_v8_27_SPOut__Stop_Postfx_,
                },
                [1] = {
                    string = "Start_timelapse",
                },
                [2] = {
                    string = "Remove_Statue",
                },
                [3] = {
                    string = "Start_Postfx",
                    value = self.f_box_PlaySequence_v8_27_SPOut__Start_Postfx_,
                },
            },
            count = 4,
        },
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1193318765");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_PawnCameraModifier_23 = cbox:CreateBox("Domino/System/Player/PawnCameraModifier.lua");
    l0 = self.box_PawnCameraModifier_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnCameraModifier_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1200277438");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PawnCameraModifier_23_Enabled,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1207330663");
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
        [0] = self.f_box_MultipleOR_12_Out,
    });
    self.box_StartMetaSequence_21 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1442199405");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_21_Out,
    });
    self.box_PawnCameraModifier_14 = cbox:CreateBox("Domino/System/Player/PawnCameraModifier.lua");
    l0 = self.box_PawnCameraModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnCameraModifier_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1582930598");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PawnCameraModifier_14_Disabled,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1717722755");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_NarrativeSceneSetup_24 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1806721429");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_24_Out,
    });
    self.box_TimeOfDayListener_25 = cbox:CreateBox("Domino/System/TimeOfDayListener.lua");
    l0 = self.box_TimeOfDayListener_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TimeOfDayListener_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1926829336");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_TimeOfDayListener_25_Disabled,
        -- Enabled,
        [1] = self.f_box_TimeOfDayListener_25_Enabled,
        -- HourChanged,
        [2] = self.f_box_TimeOfDayListener_25_HourChanged,
    });
    self.box_NarrativeSceneCleanUp_9 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|2054721350");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_9_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1841376751", "1841376751", "InGameBenchmark_HeliRide", "In", "box_OutputOrder_v2_13.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_1_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = self.box_BaseMissionBlock_v2_1;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1755443038", "1755443038", "InGameBenchmark_HeliRide", "box_BaseMissionBlock_v2_1.Activated", "box_MissionBlockLayer_17.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_1_Enabled()
    local params, l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_1();
    l0 = self.box_BaseMissionBlock_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1052647328", "1052647328", "InGameBenchmark_HeliRide", "box_BaseMissionBlock_v2_1.Enabled", "box_BaseMissionBlock_v2_1.Activate", l0:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_NarrativeFade_11_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_NarrativeFade_11;
    l1 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1568595977", "1568595977", "InGameBenchmark_HeliRide", "box_NarrativeFade_11.FadedOut", "box_Delay_v5_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Compare_Integers_22_A_ge_B()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_7();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|124186468", "124186468", "InGameBenchmark_HeliRide", "box_Compare_Integers_22.A_ge_B", "box_CHEAT_SetEnvironmentTimeScale_7.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_StopMetaSequence_v4_2_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnCameraModifier_14();
    l0 = self.box_PawnCameraModifier_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1621149337", "1621149337", "InGameBenchmark_HeliRide", "box_StopMetaSequence_v4_2.Stopped", "box_PawnCameraModifier_14.DisableCloseUp", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableCloseUp
    l0:Exec(0, params);
end;

function export:f_box_SetTimeOfDay_5_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|329285345", "329285345", "InGameBenchmark_HeliRide", "box_SetTimeOfDay_5.Out", "box_OutputOrder_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_24();
    l0 = self.box_MultipleOR_19;
    l1 = self.box_NarrativeSceneSetup_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|914030920", "914030920", "InGameBenchmark_HeliRide", "box_MultipleOR_19.Out", "box_NarrativeSceneSetup_24.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_26;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|465211515", "465211515", "InGameBenchmark_HeliRide", "box_Delay_v5_26.TimeElapsed", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleOR_16_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_9();
    l0 = self.box_MultipleOR_16;
    l1 = self.box_NarrativeSceneCleanUp_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|820151183", "820151183", "InGameBenchmark_HeliRide", "box_MultipleOR_16.Out", "box_NarrativeSceneCleanUp_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_27_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_27;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1974959414", "1974959414", "InGameBenchmark_HeliRide", "box_PlaySequence_v8_27.Finished", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PlaySequence_v8_27_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_27;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1780827713", "1780827713", "InGameBenchmark_HeliRide", "box_PlaySequence_v8_27.Skipped", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_27_SPOut__Start_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_8();
    l0 = self.box_PlaySequence_v8_27;
    l1 = self.box_NarrativeFade_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1440464402", "1440464402", "InGameBenchmark_HeliRide", "box_PlaySequence_v8_27.SPOut", "box_NarrativeFade_8.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_27_SPOut__Stop_Postfx_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_8();
    l0 = self.box_PlaySequence_v8_27;
    l1 = self.box_NarrativeFade_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1817674071", "1817674071", "InGameBenchmark_HeliRide", "box_PlaySequence_v8_27.SPOut", "box_NarrativeFade_8.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_ActivityInitialized_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_4();
    l0 = self.box_ActivityInitialized_3;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|922018699", "922018699", "InGameBenchmark_HeliRide", "box_ActivityInitialized_3.Out", "box_GetLocalPlayer_v2_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PawnCameraModifier_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_27();
    l0 = self.box_PawnCameraModifier_23;
    l1 = self.box_PlaySequence_v8_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|404260343", "404260343", "InGameBenchmark_HeliRide", "box_PawnCameraModifier_23.Enabled", "box_PlaySequence_v8_27.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_12_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_2();
    l0 = self.box_MultipleOR_12;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|40616755", "40616755", "InGameBenchmark_HeliRide", "box_MultipleOR_12.Out", "box_StopMetaSequence_v4_2.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_20();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|224337588", "224337588", "InGameBenchmark_HeliRide", "box_OutputOrder_v2_13.Out", "box_Print_v2_20.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|431560427", "431560427", "InGameBenchmark_HeliRide", "box_OutputOrder_v2_13.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_StartMetaSequence_21_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_21_Out();
    params = self:OnEnter_box_SetTimeOfDay_5();
    l0 = self.box_StartMetaSequence_21;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|904916360", "904916360", "InGameBenchmark_HeliRide", "box_StartMetaSequence_21.Out", "box_SetTimeOfDay_5.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|715106054", "715106054", "InGameBenchmark_HeliRide", "box_OutputOrder_v2_15.Out", "box_OutputOrder_v2_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TimeOfDayListener_25();
    l0 = self.box_TimeOfDayListener_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1008903975", "1008903975", "InGameBenchmark_HeliRide", "box_OutputOrder_v2_15.Out", "box_TimeOfDayListener_25.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_PawnCameraModifier_14_Disabled()
    local l0, l1;
    l0 = self.box_PawnCameraModifier_14;
    l1 = self.box_MultipleOR_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1488518954", "1488518954", "InGameBenchmark_HeliRide", "box_PawnCameraModifier_14.Disabled", "box_MultipleOR_16.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1967984115", "1967984115", "InGameBenchmark_HeliRide", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|162672209", "162672209", "InGameBenchmark_HeliRide", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_NarrativeSceneSetup_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_11();
    l0 = self.box_NarrativeSceneSetup_24;
    l1 = self.box_NarrativeFade_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|436835899", "436835899", "InGameBenchmark_HeliRide", "box_NarrativeSceneSetup_24.Out", "box_NarrativeFade_11.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnCameraModifier_23();
    l0 = self.box_PawnCameraModifier_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|457192333", "457192333", "InGameBenchmark_HeliRide", "box_OutputOrder_v2_18.Out", "box_PawnCameraModifier_23.EnableCloseUp", clone:GetLuaBox(), l0:GetLuaBox());
    -- EnableCloseUp
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_1();
    l0 = self.box_BaseMissionBlock_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1009260666", "1009260666", "InGameBenchmark_HeliRide", "box_OutputOrder_v2_18.Out", "box_BaseMissionBlock_v2_1.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
end;

function export:f_box_GetLocalPlayer_v2_4_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_4_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1063533497", "1063533497", "InGameBenchmark_HeliRide", "box_GetLocalPlayer_v2_4.Out", "box_StartMetaSequence_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_TimeOfDayListener_25_HourChanged()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Integers_22();
    l0 = self.box_TimeOfDayListener_25;
    l1 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1863195278", "1863195278", "InGameBenchmark_HeliRide", "box_TimeOfDayListener_25.HourChanged", "box_Compare_Integers_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneCleanUp_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_10();
    l0 = self.box_NarrativeSceneCleanUp_9;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1988737456", "1988737456", "InGameBenchmark_HeliRide", "box_NarrativeSceneCleanUp_9.Out", "box_ActivityEnd_10.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_BaseMissionBlock_v2_1()
    local params;
    params = {
        -- missionBlockId,
        [0] = "36167385877830901",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_11()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Compare_Integers_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareIntegers.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Integers_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|348427443");
    l0:SetConnections({
        -- A_ge_B,
        [1] = self.f_box_Compare_Integers_22_A_ge_B,
    });
    l0 = self.box_TimeOfDayListener_25;
    params = {
        -- A,
        [0] = l0:GetDataOutValue(0),
        -- B,
        [1] = 9,
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|695746321");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_2_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|709671723");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_5_Out,
    });
    params = {
        -- Hour,
        [0] = 8,
        -- Minute,
        [1] = 45,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|797569402");
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
        [8] = "FC5_InGameBenchmarkScript_Started",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_26()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_7()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_8()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_27()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2100015237978664675",
        -- SequenceFile,
        [4] = "sequences/zeta_main/cin_playgo_010_heli_ride/cin_playgo_010_heli_ride.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PawnCameraModifier_23()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1331820151");
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

function export:OnEnter_box_ActivityEnd_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1372436906");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1462522488");
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
                [0] = self.f_box_OutputOrder_v2_15_Out_0,
                [1] = self.f_box_OutputOrder_v2_15_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1547444307");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "36167385877830901",
        -- missionLayerId,
        [1] = "54181784387312890",
    };
    return params;
end;

function export:OnEnter_box_PawnCameraModifier_14()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_24()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1810412122");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
            },
            count = 4,
        },
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_HeliRide.domino|@InGameBenchmark_HeliRide|1888199961");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_4_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_TimeOfDayListener_25()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_9()
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

function export:OnExit_box_StartMetaSequence_21_Out()
    local l0;
    l0 = self.box_StartMetaSequence_21;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_4_Out()
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
