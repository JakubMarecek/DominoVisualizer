LUAC[�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_030/lt02_030_brief.domino
-- User graph: LT02_030_Brief_main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_PlayerGetsCaptured.Brick_PlayerGetsCaptured_V4.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/PreconditionListener.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/FogOfWarModifier.lua");
        cboxRes:RegisterBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_030/LT02_030_Brief.LT02_030_Capture_Sequence.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[3074360545.bnk]], "CSoundResource");
        cboxRes:LoadResource([[130806342.bnk]], "CSoundResource");
        cboxRes:LoadResource([[818965265.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2430786186.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3410241732.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_030/LT02_030_Brief.LT02_030_Brief_main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_PlayerGetsCaptured.Brick_PlayerGetsCaptured_V4.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Enable",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "PlayerCaptured_OnCritical",
                delayed = false,
            },
            [1] = {
                name = "PlayerCaptured_OnEncounter",
                delayed = false,
            },
            [2] = {
                name = "PlayerCaptured_OnPrecondition",
                delayed = false,
            },
            [3] = {
                name = "Start_Mix_Transition",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "b_CaptureOnCritical",
                type = "bool",
            },
            [1] = {
                name = "b_CaptureOnEncounter",
                type = "bool",
            },
            [2] = {
                name = "bUseWarningSound",
                type = "bool",
            },
            [3] = {
                name = "CenterScene_HardCapture",
                type = "entity",
            },
            [4] = {
                name = "CenterScene_SoftCapture",
                type = "entity",
            },
            [5] = {
                name = "eWarningSound",
                type = "Sound",
            },
            [6] = {
                name = "ForcedCapturePreconditionID",
                type = "string",
            },
            [7] = {
                name = "fTimer",
                type = "float",
            },
            [8] = {
                name = "FX",
                type = "string",
            },
            [9] = {
                name = "NarrativeFade_PostFX",
                type = "string",
            },
        },
        dataInCount = 10,
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
    metadataTable[GetPathID("Domino/System/AI/PreconditionListener.lua")] = {
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
                name = "PreconditionMet",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "AutoDisable",
                type = "bool",
            },
            [1] = {
                name = "PreconditionId",
                type = "string",
            },
            [2] = {
                name = "TestOnEnable",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/Coop/AllPlayers/GodMode_v3.lua")] = {
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
                name = "disableAfterBeat",
                type = "bool",
            },
            [1] = {
                name = "Mode",
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
    metadataTable[GetPathID("Domino/System/UI/FogOfWarModifier.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "DisableUnfogging",
            },
            [1] = {
                name = "EnableUnfogging",
            },
            [2] = {
                name = "ResetFogOfWar",
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
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_030/LT02_030_Brief.LT02_030_Capture_Sequence.debug.lua")] = {
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT02_030_Brief_main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main";
    self.Player_Group = nil;
    self.Eli = 0;
    self.Tammy = 0;
    self.Wheaty = 0;
    self.e_playerVehicle = nil;
    self.ePlayerID = nil;
    self.box_Brick_PlayerGetsCaptured_V4_1 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayerGetsCaptured.Brick_PlayerGetsCaptured_V4.debug.lua");
    l0 = self.box_Brick_PlayerGetsCaptured_V4_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayerGetsCaptured_V4_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|30341526");
    l0:SetConnections({
        -- PlayerCaptured_OnPrecondition,
        [2] = self.f_box_Brick_PlayerGetsCaptured_V4_1_PlayerCaptured_OnPrecondition,
    });
    self.box_SoundModifier_v2_4 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|47302450");
    l0:SetConnections({
    });
    self.box_SoundModifier_v2_12 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|89332627");
    l0:SetConnections({
    });
    self.box_PreconditionListener_3 = cbox:CreateBox("Domino/System/AI/PreconditionListener.lua");
    l0 = self.box_PreconditionListener_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PreconditionListener_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|323233332");
    l0:SetConnections({
        -- PreconditionMet,
        [2] = self.f_box_PreconditionListener_3_PreconditionMet,
    });
    self.box_PhoneCallExclusivityModifier_47 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|561083825");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_47_Enabled,
    });
    self.box_PostFx_v3_17 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|654010968");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_17_Enabled,
    });
    self.box_LT02_030_Capture_Sequence_2 = cbox:CreateBox("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_030/LT02_030_Brief.LT02_030_Capture_Sequence.debug.lua");
    l0 = self.box_LT02_030_Capture_Sequence_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_LT02_030_Capture_Sequence_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|657657987");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_LT02_030_Capture_Sequence_2_Out,
    });
    self.box_ActivityAcknowledgeGate_20 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|801806356");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_20_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_20_Reloaded,
    });
    self.box_Music_Quest_v2_15 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|908518477");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_27 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|943851052");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_27_Out,
    });
    self.box_BaseMissionBlock_v2_8 = cbox:CreateBox("Domino/System/Mission_Flow/BaseMissionBlock_v2.lua");
    l0 = self.box_BaseMissionBlock_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BaseMissionBlock_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1090430470");
    l0:SetConnections({
    });
    self.box_GodMode_v3_16 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1327586500");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GodMode_v3_16_Enabled,
    });
    self.box_MultipleOR_11 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1772639797");
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
        [0] = self.f_box_MultipleOR_11_Out,
    });
    self.box_Delay_v5_13 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1828326316");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_13_TimeElapsed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_6();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1396482079", "1396482079", "LT02_030_Brief_main", "In", "box_OutputOrder_v2_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    
end;

function export:f_box_Brick_PlayerGetsCaptured_V4_1_PlayerCaptured_OnPrecondition()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = self.box_Brick_PlayerGetsCaptured_V4_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|637587938", "637587938", "LT02_030_Brief_main", "box_Brick_PlayerGetsCaptured_V4_1.PlayerCaptured_OnPrecondition", "box_OutputOrder_v2_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PreconditionListener_3_PreconditionMet()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_PreconditionListener_3;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1655261203", "1655261203", "LT02_030_Brief_main", "box_PreconditionListener_3.PreconditionMet", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhoneCallExclusivityModifier_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PreconditionListener_3();
    l0 = self.box_PhoneCallExclusivityModifier_47;
    l1 = self.box_PreconditionListener_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|986949040", "986949040", "LT02_030_Brief_main", "box_PhoneCallExclusivityModifier_47.Enabled", "box_PreconditionListener_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PostFx_v3_17_Enabled()
    local l0, l1;
    l0 = self.box_PostFx_v3_17;
    l1 = self.box_LT02_030_Capture_Sequence_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1398891682", "1398891682", "LT02_030_Brief_main", "box_PostFx_v3_17.Enabled", "box_LT02_030_Capture_Sequence_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_LT02_030_Capture_Sequence_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_FogOfWarModifier_7();
    l0 = self.box_LT02_030_Capture_Sequence_2;
    l1 = Boxes[GetPathID("Domino/System/UI/FogOfWarModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|681838282", "681838282", "LT02_030_Brief_main", "box_LT02_030_Capture_Sequence_2.Out", "box_FogOfWarModifier_7.DisableUnfogging", l0:GetLuaBox(), l1:GetLuaBox());
    -- DisableUnfogging
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityAcknowledgeGate_20_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_20;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1193492861", "1193492861", "LT02_030_Brief_main", "box_ActivityAcknowledgeGate_20.Acknowledged", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_20_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_20;
    l1 = self.box_MultipleOR_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|391136311", "391136311", "LT02_030_Brief_main", "box_ActivityAcknowledgeGate_20.Reloaded", "box_MultipleOR_11.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_FogOfWarModifier_7_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/FogOfWarModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_9();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|972198779", "972198779", "LT02_030_Brief_main", "box_FogOfWarModifier_7.Out", "box_OutputOrder_v2_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_ActivityInitialized_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|919214895", "919214895", "LT02_030_Brief_main", "box_ActivityInitialized_27.Out", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_5();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1863912877", "1863912877", "LT02_030_Brief_main", "box_OutputOrder_v2_6.Out", "box_Print_v2_5.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_6_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1543614323", "1543614323", "LT02_030_Brief_main", "box_OutputOrder_v2_6.Out", "box_ActivityAcknowledgeGate_20.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_GodMode_v3_16_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_17();
    l0 = self.box_GodMode_v3_16;
    l1 = self.box_PostFx_v3_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1082974456", "1082974456", "LT02_030_Brief_main", "box_GodMode_v3_16.Enabled", "box_PostFx_v3_17.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_9_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_12();
    l0 = self.box_SoundModifier_v2_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|35797183", "35797183", "LT02_030_Brief_main", "box_OutputOrder_v2_9.Out", "box_SoundModifier_v2_12.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_9_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_29();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|721777706", "721777706", "LT02_030_Brief_main", "box_OutputOrder_v2_9.Out", "box_ActivityEnd_29.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_PhoneCallExclusivityModifier_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|2095750177", "2095750177", "LT02_030_Brief_main", "box_OutputOrder_v2_18.Out", "box_PhoneCallExclusivityModifier_47.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BaseMissionBlock_v2_8();
    l0 = self.box_BaseMissionBlock_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|362152234", "362152234", "LT02_030_Brief_main", "box_OutputOrder_v2_18.Out", "box_BaseMissionBlock_v2_8.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(3, params);
end;

function export:f_box_MultipleOR_11_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_11;
    l1 = self.box_ActivityInitialized_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1223455333", "1223455333", "LT02_030_Brief_main", "box_MultipleOR_11.Out", "box_ActivityInitialized_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_15();
    l0 = self.box_Music_Quest_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|941446548", "941446548", "LT02_030_Brief_main", "box_OutputOrder_v2_36.Out", "box_Music_Quest_v2_15.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_13();
    l0 = self.box_Delay_v5_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1634944434", "1634944434", "LT02_030_Brief_main", "box_OutputOrder_v2_36.Out", "box_Delay_v5_13.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_Delay_v5_13_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Brick_PlayerGetsCaptured_V4_1();
    l0 = self.box_Delay_v5_13;
    l1 = self.box_Brick_PlayerGetsCaptured_V4_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1412218015", "1412218015", "LT02_030_Brief_main", "box_Delay_v5_13.TimeElapsed", "box_Brick_PlayerGetsCaptured_V4_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GodMode_v3_16();
    l0 = self.box_GodMode_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1576969257", "1576969257", "LT02_030_Brief_main", "box_OutputOrder_v2_10.Out", "box_GodMode_v3_16.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundModifier_v2_4();
    l0 = self.box_SoundModifier_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1574400609", "1574400609", "LT02_030_Brief_main", "box_OutputOrder_v2_10.Out", "box_SoundModifier_v2_4.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:OnEnter_box_Brick_PlayerGetsCaptured_V4_1()
    local params;
    params = {
        -- b_CaptureOnCritical,
        [0] = false,
        -- b_CaptureOnEncounter,
        [1] = false,
        -- bUseWarningSound,
        [2] = true,
        -- CenterScene_HardCapture,
        [3] = "2101093905681384112",
        -- CenterScene_SoftCapture,
        [4] = "2101093905681384112",
        -- eWarningSound,
        [5] = "130806342",
        -- ForcedCapturePreconditionID,
        [6] = "9015288993934950",
        -- fTimer,
        [7] = 10,
        -- NarrativeFade_PostFX,
        [9] = "blackscreennowfx",
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_4()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "3410241732",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_12()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "818965265",
        -- SoundType,
        [2] = 11,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_PreconditionListener_3()
    local params;
    params = {
        -- AutoDisable,
        [0] = true,
        -- PreconditionId,
        [1] = "9015287693897023",
        -- TestOnEnable,
        [2] = true,
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|508747533");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_17()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "jacobplayercapturethree",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_15()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 1,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "3074360545",
        -- StopEvent,
        [7] = "2430786186",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitForMusicStatePriorityOver,
        [9] = 0,
        -- WaitUntilMusicEndMarker,
        [10] = false,
        -- WaitUntilNotInVehicle,
        [11] = false,
    };
    return params;
end;

function export:OnEnter_box_FogOfWarModifier_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/UI/FogOfWarModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_FogOfWarModifier_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|931253018");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_FogOfWarModifier_7_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_BaseMissionBlock_v2_8()
    local params;
    params = {
        -- missionBlockId,
        [0] = "27160278301656802",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_6()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1102136703");
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
                [0] = self.f_box_OutputOrder_v2_6_Out_0,
                [1] = self.f_box_OutputOrder_v2_6_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GodMode_v3_16()
    local params;
    params = {
        -- disableAfterBeat,
        [0] = true,
        -- Mode,
        [1] = 3,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1412752902");
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
                [0] = self.f_box_OutputOrder_v2_9_Out_0,
                [1] = self.f_box_OutputOrder_v2_9_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1428017849");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 3,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "LT02_030_Brief script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1676594140");
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
                [0] = self.f_box_OutputOrder_v2_18_Out_0,
                [1] = self.f_box_OutputOrder_v2_18_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1810176638");
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
                [1] = self.f_box_OutputOrder_v2_36_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_13()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 8,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_030\\LT02_030_Brief.domino|@LT02_030_Brief_main|1946767186");
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
                [0] = self.f_box_OutputOrder_v2_10_Out_0,
                [1] = self.f_box_OutputOrder_v2_10_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
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
