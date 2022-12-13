LUAC
y -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_ingamebenchmark/fc5_ingamebenchmark_enduser.domino
-- User graph: InGameBenchmark_EndUser
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
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/AI/SpawnAI.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
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
        cboxRes:RegisterBox("Domino/System/Player/PlayersVisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_InGameBenchmark/FC5_InGameBenchmark_EndUser.InGameBenchmark_EndUser.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "InGameBenchmark_EndUser";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser";
    self.MetaSequenceID = 0;
    self.player = nil;
    self.box_PawnCameraModifier_17 = cbox:CreateBox("Domino/System/Player/PawnCameraModifier.lua");
    l0 = self.box_PawnCameraModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnCameraModifier_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|14680230");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PawnCameraModifier_17_Disabled,
    });
    self.box_StartMetaSequence_20 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|93475503");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_20_Out,
    });
    self.box_SpawnAI_46 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|106852699");
    l0:SetConnections({
    });
    self.box_RemoveEntity_v2_35 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|179887708");
    l0:SetConnections({
    });
    self.box_PlaySequence_v8_21 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|303464404");
    l0:SetDynAnchorCount({
        controlIn = {
            [4] = 0,
        },
        controlOut = {
            [3] = 9,
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
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "StartPoint",
                },
                [1] = {
                    string = "Spawn Boat",
                    value = self.f_box_PlaySequence_v8_21_SPOut__Spawn_Boat_,
                },
                [2] = {
                    string = "Spawn Cultists",
                    value = self.f_box_PlaySequence_v8_21_SPOut__Spawn_Cultists_,
                },
                [3] = {
                    string = "Spawn Deers",
                    value = self.f_box_PlaySequence_v8_21_SPOut__Spawn_Deers_,
                },
                [4] = {
                    string = "Deers out of sight",
                    value = self.f_box_PlaySequence_v8_21_SPOut__Deers_out_of_sight_,
                },
                [5] = {
                    string = "Spawn Plane",
                    value = self.f_box_PlaySequence_v8_21_SPOut__Spawn_Plane_,
                },
                [6] = {
                    string = "Cultists out of sight",
                    value = self.f_box_PlaySequence_v8_21_SPOut__Cultists_out_of_sight_,
                },
                [7] = {
                    string = "Boat attack local targets",
                    value = self.f_box_PlaySequence_v8_21_SPOut__Boat_attack_local_targets_,
                },
                [8] = {
                    string = "EndPoint",
                    value = self.f_box_PlaySequence_v8_21_SPOut__EndPoint_,
                },
            },
            count = 9,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_21_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_21_Stopped,
    });
    self.box_SpawnAI_28 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|356520680");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_28_Spawned,
    });
    self.box_SpawnAI_26 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|492055283");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_26_Spawned,
    });
    self.box_BaseMissionBlock_v2_3 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|515448263");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_BaseMissionBlock_v2_3_Activated,
        -- Enabled,
        [3] = self.f_box_BaseMissionBlock_v2_3_Enabled,
    });
    self.box_PawnCameraModifier_16 = cbox:CreateBox("Domino/System/Player/PawnCameraModifier.lua");
    l0 = self.box_PawnCameraModifier_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PawnCameraModifier_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|534351292");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PawnCameraModifier_16_Enabled,
    });
    self.box_ActivityAcknowledgeGate_4 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|623016559");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_4_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_4_Reloaded,
    });
    self.box_RemoveEntity_v2_42 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|811973533");
    l0:SetConnections({
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|944452373");
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
        [0] = self.f_box_MultipleOR_38_Out,
    });
    self.box_NarrativeFade_11 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1135949371");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_11_FadedOut,
    });
    self.box_SpawnAI_49 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_49;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_49");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1171227012");
    l0:SetConnections({
    });
    self.box_CHEAT_SetEnvironmentTimeScale_41 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1227866528");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_41_Out,
    });
    self.box_SpawnAI_47 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1288402586");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_6 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1296143162");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_6_Out,
    });
    self.box_NarrativeFade_14 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeFade.debug.lua");
    l0 = self.box_NarrativeFade_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeFade_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1330720679");
    l0:SetConnections({
        -- FadedOut,
        [1] = self.f_box_NarrativeFade_14_FadedOut,
    });
    self.box_Delay_v5_27 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1348270420");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_27_TimeElapsed,
    });
    self.box_NarrativeSceneCleanUp_1 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1352809527");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_1_Out,
    });
    self.box_RemoveEntity_v2_36 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1386806183");
    l0:SetConnections({
    });
    self.box_SpawnAI_29 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1401088120");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_29_Spawned,
    });
    self.box_PlayersVisibilityModifier_39 = cbox:CreateBox("Domino/System/Player/PlayersVisibilityModifier.lua");
    l0 = self.box_PlayersVisibilityModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlayersVisibilityModifier_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1408809925");
    l0:SetConnections({
        -- OnSetAllInvisible,
        [0] = self.f_box_PlayersVisibilityModifier_39_OnSetAllInvisible,
    });
    self.box_SpawnAI_24 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1464199857");
    l0:SetConnections({
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1666433107");
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
        [0] = self.f_box_MultipleOR_19_Out,
    });
    self.box_SpawnAI_50 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_50;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_50");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1708973978");
    l0:SetConnections({
    });
    self.box_NarrativeSceneSetup_8 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1751016795");
    l0:SetConnections({
        -- Out,
        [1] = self.f_box_NarrativeSceneSetup_8_Out,
    });
    self.box_RemoveEntity_v2_53 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_53;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_53");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1754725430");
    l0:SetConnections({
    });
    self.box_Delay_v5_12 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1757438331");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_12_TimeElapsed,
    });
    self.box_SpawnAI_43 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1815429402");
    l0:SetConnections({
    });
    self.box_SpawnAI_30 = cbox:CreateBox("Domino/System/AI/SpawnAI.lua");
    l0 = self.box_SpawnAI_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SpawnAI_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1818396805");
    l0:SetConnections({
        -- Spawned,
        [2] = self.f_box_SpawnAI_30_Spawned,
    });
    self.box_RemoveEntity_v2_33 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1835711535");
    l0:SetConnections({
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1870926028");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_RemoveEntity_v2_32 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1931422167");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_15();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|7692408", "7692408", "InGameBenchmark_EndUser", "In", "box_OutputOrder_v2_15.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PawnCameraModifier_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_1();
    l0 = self.box_PawnCameraModifier_17;
    l1 = self.box_NarrativeSceneCleanUp_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|577100750", "577100750", "InGameBenchmark_EndUser", "box_PawnCameraModifier_17.Disabled", "box_NarrativeSceneCleanUp_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_StopMetaSequence_v4_10_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_PawnCameraModifier_17();
    l0 = self.box_PawnCameraModifier_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|101369496", "101369496", "InGameBenchmark_EndUser", "box_StopMetaSequence_v4_10.Stopped", "box_PawnCameraModifier_17.DisableCloseUp", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableCloseUp
    l0:Exec(0, params);
end;

function export:f_box_StartMetaSequence_20_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_20_Out();
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_StartMetaSequence_20;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1504519587", "1504519587", "InGameBenchmark_EndUser", "box_StartMetaSequence_20.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_45_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_48();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|794339060", "794339060", "InGameBenchmark_EndUser", "box_MissionBlockLayer_45.Activated", "box_MissionBlockLayer_48.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_9_Out()
    local l0;
    self:OnExit_box_GetLocalPlayer_v2_9_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    l0 = self.box_StartMetaSequence_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1226561594", "1226561594", "InGameBenchmark_EndUser", "box_GetLocalPlayer_v2_9.Out", "box_StartMetaSequence_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_56_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_35();
    l0 = self.box_RemoveEntity_v2_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1043807310", "1043807310", "InGameBenchmark_EndUser", "box_OutputOrder_v2_56.Out", "box_RemoveEntity_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_42();
    l0 = self.box_RemoveEntity_v2_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1959616239", "1959616239", "InGameBenchmark_EndUser", "box_OutputOrder_v2_56.Out", "box_RemoveEntity_v2_42.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_56_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_53();
    l0 = self.box_RemoveEntity_v2_53;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1831712182", "1831712182", "InGameBenchmark_EndUser", "box_OutputOrder_v2_56.Out", "box_RemoveEntity_v2_53.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_21_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1005098386", "1005098386", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.Finished", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_21_Skipped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1134080084", "1134080084", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.Skipped", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlaySequence_v8_21_SPOut__Boat_attack_local_targets_()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_63();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1903424628", "1903424628", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_SetContextualStrategy_63.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__Cultists_out_of_sight_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_56();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|567315484", "567315484", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_OutputOrder_v2_56.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__Deers_out_of_sight_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|946469216", "946469216", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_OutputOrder_v2_34.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__EndPoint_()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_14();
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_NarrativeFade_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|388248201", "388248201", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_NarrativeFade_14.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_21_SPOut__Spawn_Boat_()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_24();
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_SpawnAI_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|782680002", "782680002", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_SpawnAI_24.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_21_SPOut__Spawn_Cultists_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_44();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|923000149", "923000149", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_OutputOrder_v2_44.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__Spawn_Deers_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_31();
    l0 = self.box_PlaySequence_v8_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1107336430", "1107336430", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_OutputOrder_v2_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_21_SPOut__Spawn_Plane_()
    local params, l0, l1;
    params = self:OnEnter_box_SpawnAI_30();
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_SpawnAI_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1678449692", "1678449692", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.SPOut", "box_SpawnAI_30.Spawn", l0:GetLuaBox(), l1:GetLuaBox());
    -- Spawn
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_21_Started()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_ActivityInitialized_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|798059890", "798059890", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.Started", "box_ActivityInitialized_6.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_PlaySequence_v8_21_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_21;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1328274658", "1328274658", "InGameBenchmark_EndUser", "box_PlaySequence_v8_21.Stopped", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SpawnAI_28_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_28;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1353513277", "1353513277", "InGameBenchmark_EndUser", "box_SpawnAI_28.Spawned", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_31_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_26();
    l0 = self.box_SpawnAI_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|30643801", "30643801", "InGameBenchmark_EndUser", "box_OutputOrder_v2_31.Out", "box_SpawnAI_26.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_23();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|762568009", "762568009", "InGameBenchmark_EndUser", "box_OutputOrder_v2_31.Out", "box_Print_v2_23.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_31_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_28();
    l0 = self.box_SpawnAI_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1365726374", "1365726374", "InGameBenchmark_EndUser", "box_OutputOrder_v2_31.Out", "box_SpawnAI_28.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_31_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_29();
    l0 = self.box_SpawnAI_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1920955042", "1920955042", "InGameBenchmark_EndUser", "box_OutputOrder_v2_31.Out", "box_SpawnAI_29.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_36();
    l0 = self.box_RemoveEntity_v2_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|966028723", "966028723", "InGameBenchmark_EndUser", "box_OutputOrder_v2_34.Out", "box_RemoveEntity_v2_36.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_33();
    l0 = self.box_RemoveEntity_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|834782879", "834782879", "InGameBenchmark_EndUser", "box_OutputOrder_v2_34.Out", "box_RemoveEntity_v2_33.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_32();
    l0 = self.box_RemoveEntity_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1141667367", "1141667367", "InGameBenchmark_EndUser", "box_OutputOrder_v2_34.Out", "box_RemoveEntity_v2_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_SpawnAI_26_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_26;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1714980301", "1714980301", "InGameBenchmark_EndUser", "box_SpawnAI_26.Spawned", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BaseMissionBlock_v2_3_Activated()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_13();
    l0 = self.box_BaseMissionBlock_v2_3;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1143597037", "1143597037", "InGameBenchmark_EndUser", "box_BaseMissionBlock_v2_3.Activated", "box_MissionBlockLayer_13.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_BaseMissionBlock_v2_3_Enabled()
    local params, l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_3();
    l0 = self.box_BaseMissionBlock_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1586286121", "1586286121", "InGameBenchmark_EndUser", "box_BaseMissionBlock_v2_3.Enabled", "box_BaseMissionBlock_v2_3.Activate", l0:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
end;

function export:f_box_PawnCameraModifier_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_21();
    l0 = self.box_PawnCameraModifier_16;
    l1 = self.box_PlaySequence_v8_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1125226313", "1125226313", "InGameBenchmark_EndUser", "box_PawnCameraModifier_16.Enabled", "box_PlaySequence_v8_21.PlayFromStart", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayFromStart
    l1:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_44_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_43();
    l0 = self.box_SpawnAI_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1312679594", "1312679594", "InGameBenchmark_EndUser", "box_OutputOrder_v2_44.Out", "box_SpawnAI_43.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_46();
    l0 = self.box_SpawnAI_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1793383221", "1793383221", "InGameBenchmark_EndUser", "box_OutputOrder_v2_44.Out", "box_SpawnAI_46.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_47();
    l0 = self.box_SpawnAI_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1516368258", "1516368258", "InGameBenchmark_EndUser", "box_OutputOrder_v2_44.Out", "box_SpawnAI_47.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_50();
    l0 = self.box_SpawnAI_50;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|350192136", "350192136", "InGameBenchmark_EndUser", "box_OutputOrder_v2_44.Out", "box_SpawnAI_50.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_44_Out_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SpawnAI_49();
    l0 = self.box_SpawnAI_49;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2132458252", "2132458252", "InGameBenchmark_EndUser", "box_OutputOrder_v2_44.Out", "box_SpawnAI_49.Spawn", clone:GetLuaBox(), l0:GetLuaBox());
    -- Spawn
    l0:Exec(1, params);
end;

function export:f_box_ActivityAcknowledgeGate_4_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1769796795", "1769796795", "InGameBenchmark_EndUser", "box_ActivityAcknowledgeGate_4.Acknowledged", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_4_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_4;
    l1 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1575038510", "1575038510", "InGameBenchmark_EndUser", "box_ActivityAcknowledgeGate_4.Reloaded", "box_MultipleOR_18.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_15_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|747879778", "747879778", "InGameBenchmark_EndUser", "box_OutputOrder_v2_15.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_45();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2117524386", "2117524386", "InGameBenchmark_EndUser", "box_OutputOrder_v2_15.Out", "box_MissionBlockLayer_45.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_15_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1166192760", "1166192760", "InGameBenchmark_EndUser", "box_OutputOrder_v2_15.Out", "box_ActivityAcknowledgeGate_4.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_25();
    l0 = self.box_MultipleOR_38;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|881539059", "881539059", "InGameBenchmark_EndUser", "box_MultipleOR_38.Out", "box_Print_v2_25.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_62_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_22();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1152840677", "1152840677", "InGameBenchmark_EndUser", "box_SetContextualStrategy_62.Out", "box_Print_v2_22.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeFade_11_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_12();
    l0 = self.box_NarrativeFade_11;
    l1 = self.box_Delay_v5_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1687551838", "1687551838", "InGameBenchmark_EndUser", "box_NarrativeFade_11.FadedOut", "box_Delay_v5_12.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_41_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_11();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_41;
    l1 = self.box_NarrativeFade_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|552278182", "552278182", "InGameBenchmark_EndUser", "box_CHEAT_SetEnvironmentTimeScale_41.Out", "box_NarrativeFade_11.FadeOut", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeOut
    l1:Exec(1, params);
end;

function export:f_box_ActivityInitialized_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeFade_14();
    l0 = self.box_ActivityInitialized_6;
    l1 = self.box_NarrativeFade_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1593679262", "1593679262", "InGameBenchmark_EndUser", "box_ActivityInitialized_6.Out", "box_NarrativeFade_14.FadeIn", l0:GetLuaBox(), l1:GetLuaBox());
    -- FadeIn
    l1:Exec(0, params);
end;

function export:f_box_NarrativeFade_14_FadedOut()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_27();
    l0 = self.box_NarrativeFade_14;
    l1 = self.box_Delay_v5_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|917503787", "917503787", "InGameBenchmark_EndUser", "box_NarrativeFade_14.FadedOut", "box_Delay_v5_27.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_Delay_v5_27_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_PlaySequence_v8_21();
    l0 = self.box_Delay_v5_27;
    l1 = self.box_PlaySequence_v8_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|920075057", "920075057", "InGameBenchmark_EndUser", "box_Delay_v5_27.TimeElapsed", "box_PlaySequence_v8_21.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(5, params);
end;

function export:f_box_NarrativeSceneCleanUp_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_2();
    l0 = self.box_NarrativeSceneCleanUp_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1594076335", "1594076335", "InGameBenchmark_EndUser", "box_NarrativeSceneCleanUp_1.Out", "box_ActivityEnd_2.EndNoSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndNoSave
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SpawnAI_29_Spawned()
    local l0, l1;
    l0 = self.box_SpawnAI_29;
    l1 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|258461727", "258461727", "InGameBenchmark_EndUser", "box_SpawnAI_29.Spawned", "box_MultipleOR_38.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PlayersVisibilityModifier_39_OnSetAllInvisible()
    local params, l0, l1;
    params = self:OnEnter_box_PawnCameraModifier_16();
    l0 = self.box_PlayersVisibilityModifier_39;
    l1 = self.box_PawnCameraModifier_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|427541176", "427541176", "InGameBenchmark_EndUser", "box_PlayersVisibilityModifier_39.OnSetAllInvisible", "box_PawnCameraModifier_16.EnableCloseUp", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableCloseUp
    l1:Exec(2, params);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_10();
    l0 = self.box_MultipleOR_19;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1146661788", "1146661788", "InGameBenchmark_EndUser", "box_MultipleOR_19.Out", "box_StopMetaSequence_v4_10.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_8_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SetTimeOfDay_40();
    l0 = self.box_NarrativeSceneSetup_8;
    l1 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1971275160", "1971275160", "InGameBenchmark_EndUser", "box_NarrativeSceneSetup_8.Out", "box_SetTimeOfDay_40.SetTimeOfDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetTimeOfDay
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_12_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_GetLocalPlayer_v2_9();
    l0 = self.box_Delay_v5_12;
    l1 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1641129285", "1641129285", "InGameBenchmark_EndUser", "box_Delay_v5_12.TimeElapsed", "box_GetLocalPlayer_v2_9.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlayersVisibilityModifier_39();
    l0 = self.box_PlayersVisibilityModifier_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|448645862", "448645862", "InGameBenchmark_EndUser", "box_OutputOrder_v2_7.Out", "box_PlayersVisibilityModifier_39.SetAllInvisible", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetAllInvisible
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_3();
    l0 = self.box_BaseMissionBlock_v2_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1001437636", "1001437636", "InGameBenchmark_EndUser", "box_OutputOrder_v2_7.Out", "box_BaseMissionBlock_v2_3.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
end;

function export:f_box_SpawnAI_30_Spawned()
    local params, l0, l1;
    params = self:OnEnter_box_SetContextualStrategy_62();
    l0 = self.box_SpawnAI_30;
    l1 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|482773401", "482773401", "InGameBenchmark_EndUser", "box_SpawnAI_30.Spawned", "box_SetContextualStrategy_62.SetContextualStrategy", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetContextualStrategy
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_63_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_37();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|164479428", "164479428", "InGameBenchmark_EndUser", "box_SetContextualStrategy_63.Out", "box_Print_v2_37.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_8();
    l0 = self.box_MultipleOR_18;
    l1 = self.box_NarrativeSceneSetup_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|65967395", "65967395", "InGameBenchmark_EndUser", "box_MultipleOR_18.Out", "box_NarrativeSceneSetup_8.BasicSetup", l0:GetLuaBox(), l1:GetLuaBox());
    -- BasicSetup
    l1:Exec(0, params);
end;

function export:f_box_SetTimeOfDay_40_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_41();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|45030395", "45030395", "InGameBenchmark_EndUser", "box_SetTimeOfDay_40.Out", "box_CHEAT_SetEnvironmentTimeScale_41.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:OnEnter_box_PawnCameraModifier_17()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|51805725");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_10_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_46()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104825748303931298",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_45()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|175845909");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_45_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160255089496726",
        -- missionLayerId,
        [1] = "45174653599123826",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_35()
    local params;
    params = {
        -- Group,
        [0] = "2104825735010084647",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_48()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|192262819");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160255089496726",
        -- missionLayerId,
        [1] = "36167454344237718",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|224791024");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|263597541");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_9_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_56()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_56");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|273279382");
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
                [0] = self.f_box_OutputOrder_v2_56_Out_0,
                [1] = self.f_box_OutputOrder_v2_56_Out_1,
                [2] = self.f_box_OutputOrder_v2_56_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|275527068");
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
        [8] = "Boat attack local targets",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_21()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = false,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2103940532978861319",
        -- SequenceFile,
        [4] = "sequences/zeta_main/cin_pc_benchmark/cin_pc_benchmark.seq",
        -- ShouldRemovePostFx,
        [5] = true,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_28()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104826102890372126",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|382015692");
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
                [0] = self.f_box_OutputOrder_v2_31_Out_0,
                [1] = self.f_box_OutputOrder_v2_31_Out_1,
                [2] = self.f_box_OutputOrder_v2_31_Out_2,
                [3] = self.f_box_OutputOrder_v2_31_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|423307589");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [2] = self.f_box_OutputOrder_v2_34_Out_2,
                [3] = self.f_box_OutputOrder_v2_34_Out_3,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|475065517");
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
        [8] = "Plane spawned",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_26()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104826082839501660",
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_3()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160246376456397",
    };
    return params;
end;

function export:OnEnter_box_PawnCameraModifier_16()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_44()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|542151666");
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
                [0] = self.f_box_OutputOrder_v2_44_Out_0,
                [1] = self.f_box_OutputOrder_v2_44_Out_1,
                [2] = self.f_box_OutputOrder_v2_44_Out_2,
                [3] = self.f_box_OutputOrder_v2_44_Out_3,
                [4] = self.f_box_OutputOrder_v2_44_Out_4,
            },
            count = 5,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|692418657");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "27160246376456397",
        -- missionLayerId,
        [1] = "45174644885938394",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_42()
    local params;
    params = {
        -- Group,
        [0] = "2104825716513203707",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|815540380");
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
        [8] = "Start deer spawn",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|841971912");
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
                [2] = self.f_box_OutputOrder_v2_15_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|954544333");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_62_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105032689227669576",
        -- Group,
        [1] = "#D9D1ABDC",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1066756101");
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
        [8] = "Start deer spawn",
        -- useTimeTag,
        [9] = true,
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

function export:OnEnter_box_SpawnAI_49()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104825716513203707",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_41()
    local params;
    params = {
        -- timeScale,
        [0] = 0,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_47()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104825748742236092",
    };
    return params;
end;

function export:OnEnter_box_NarrativeFade_14()
    local params;
    params = {
        -- PostFX,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_27()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.3,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_1()
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

function export:OnEnter_box_RemoveEntity_v2_36()
    local params;
    params = {
        -- Group,
        [0] = "2104826082839501660",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_29()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104826103051852846",
    };
    return params;
end;

function export:OnEnter_box_PlayersVisibilityModifier_39()
    local params;
    params = {
        -- ExcludeLocalPlayer,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_24()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104825953287935834",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_50()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104825729494574812",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_8()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_53()
    local params;
    params = {
        -- Group,
        [0] = "2104825748303931298",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_12()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1806078009");
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
                [0] = self.f_box_OutputOrder_v2_7_Out_0,
                [1] = self.f_box_OutputOrder_v2_7_Out_1,
            },
            count = 4,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_43()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104825735010084647",
    };
    return params;
end;

function export:OnEnter_box_SpawnAI_30()
    local params;
    params = {
        -- EntitySpawner,
        [0] = "2104841168039861407",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_33()
    local params;
    params = {
        -- Group,
        [0] = "2104826102890372126",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1856457116");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_63_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2105032690699870284",
        -- Group,
        [1] = "#3D6C63BE",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_32()
    local params;
    params = {
        -- Group,
        [0] = "2104826103051852846",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|1997325267");
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
        [8] = "FC5_InGameBenchmarkEndUserScript_Started v4",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_40()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_InGameBenchmark\\FC5_InGameBenchmark_EndUser.domino|@InGameBenchmark_EndUser|2124861098");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_40_Out,
    });
    params = {
        -- Hour,
        [0] = 12,
        -- Minute,
        [1] = 30,
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_20_Out()
    local l0;
    l0 = self.box_StartMetaSequence_20;
    self.MetaSequenceID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_9_Out()
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
