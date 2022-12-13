LUAC�% -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt02/lt02_040/lt02_040_b30.domino
-- User graph: LT02_040_B30
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityRetry.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[264881612.bnk]], "CSoundResource");
        cboxRes:LoadResource([[11021985.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3606291445.bnk]], "CSoundResource");
        cboxRes:LoadResource([[82772253.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT02/LT02_040/LT02_040_B30.LT02_040_B30.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/PostWWiseEventSetState.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetState",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Set",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "SoundId",
                type = "Sound",
            },
            [1] = {
                name = "SoundType",
                type = "SoundType",
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
    metadataTable[GetPathID("Domino/System/SoundMusicTrigger.lua")] = {
        stateless = false,
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
                name = "Skipped",
                delayed = false,
            },
            [1] = {
                name = "Started",
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
                name = "EntityId",
                type = "entity",
            },
            [1] = {
                name = "FadeOutType",
                type = "int",
            },
            [2] = {
                name = "Priority",
                type = "int",
            },
            [3] = {
                name = "SoundType",
                type = "SoundType",
            },
            [4] = {
                name = "Stackable",
                type = "bool",
            },
            [5] = {
                name = "StartEvent",
                type = "Sound",
            },
            [6] = {
                name = "StopEvent",
                type = "Sound",
            },
            [7] = {
                name = "StopFadeOut",
                type = "float",
            },
            [8] = {
                name = "WaitUntilMusicEndMarker",
                type = "bool",
            },
            [9] = {
                name = "WaitUntilNotInVehicle",
                type = "bool",
            },
        },
        dataInCount = 10,
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
    self._name = "LT02_040_B30";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30";
    self.JudgeMoose = nil;
    self.MetaSequenceID = 0;
    self.box_PostFx_v3_23 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|280193301");
    l0:SetConnections({
    });
    self.box_PhoneCallExclusivityModifier_15 = cbox:CreateBox("Domino/System/Player/PhoneCallExclusivityModifier.lua");
    l0 = self.box_PhoneCallExclusivityModifier_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhoneCallExclusivityModifier_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|346664958");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhoneCallExclusivityModifier_15_Enabled,
    });
    self.box_MultipleAND_v2_30 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|474671506");
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
        [0] = self.f_box_MultipleAND_v2_30_Out,
    });
    self.box_PostWWiseEventSetState_35 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|497364062");
    l0:SetConnections({
    });
    self.box_MultipleOR_20 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|671083390");
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
    self.box_SoundMusicTriggerBox_31 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|674877478");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_31_Started,
    });
    self.box_SoundMusicTriggerBox_34 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|700528957");
    l0:SetConnections({
    });
    self.box_SoundMusicTriggerBox_37 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|816233219");
    l0:SetConnections({
        -- Stopped,
        [2] = self.f_box_SoundMusicTriggerBox_37_Stopped,
    });
    self.box_NarrativeSceneSetup_18 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|866771593");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_18_Holstered,
    });
    self.box_VisibilityModifier_39 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|938269598");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_39_Enabled,
    });
    self.box_PostWWiseEventSetState_33 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|946156723");
    l0:SetConnections({
    });
    self.box_ActivityInitialized_3 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|964677907");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_3_Out,
    });
    self.box_PlaySequence_v8_11 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1102567881");
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
        [0] = self.f_box_PlaySequence_v8_11_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_11_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "Stop_POSTFX",
                    value = self.f_box_PlaySequence_v8_11_SPOut__Stop_POSTFX_,
                },
                [1] = {
                    string = "Start_POSTFX",
                    value = self.f_box_PlaySequence_v8_11_SPOut__Start_POSTFX_,
                },
            },
            count = 2,
        },
    });
    self.box_PostFx_v3_9 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1149139473");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_9_Enabled,
    });
    self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1461666993");
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
    self.box_StartMetaSequence_12 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1732335402");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_12_Out,
    });
    self.box_VisibilityModifier_17 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1855133890");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_17_Disabled,
    });
    self.box_PostFx_v3_16 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1926578616");
    l0:SetConnections({
    });
    self.box_PostFx_v3_38 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1929445281");
    l0:SetConnections({
    });
    self.box_MultipleAND_v2_21 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1948945346");
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
        [0] = self.f_box_MultipleAND_v2_21_Out,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|2037079608");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_EntityStatusListener_40 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|2107851017");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_40_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_40_Loaded,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_5();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|610402373", "610402373", "LT02_040_B30", "In", "box_OutputOrder_v2_5.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnLeaveZone()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_32();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1894636031", "1894636031", "LT02_040_B30", "OnLeaveZone", "box_OutputOrder_v2_32.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_14_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_16();
    l0 = self.box_PostFx_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|466968344", "466968344", "LT02_040_B30", "box_OutputOrder_v2_14.Out", "box_PostFx_v3_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_14_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostFx_v3_23();
    l0 = self.box_PostFx_v3_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1121974413", "1121974413", "LT02_040_B30", "box_OutputOrder_v2_14.Out", "box_PostFx_v3_23.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_19_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_29();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|672279990", "672279990", "LT02_040_B30", "box_OutputOrder_v2_19.Out", "box_SetContextualStrategy_29.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_19_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_28();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1259360034", "1259360034", "LT02_040_B30", "box_OutputOrder_v2_19.Out", "box_SetContextualStrategy_28.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_AgentGroupModifier_25_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_24();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|206803193", "206803193", "LT02_040_B30", "box_AgentGroupModifier_25.Out", "box_OutputOrder_v2_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_StopMetaSequence_v4_13_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_39();
    l0 = self.box_VisibilityModifier_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|914880293", "914880293", "LT02_040_B30", "box_StopMetaSequence_v4_13.Stopped", "box_VisibilityModifier_39.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_PhoneCallExclusivityModifier_15_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityMiscInfoModifier_v2_22();
    l0 = self.box_PhoneCallExclusivityModifier_15;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1052316236", "1052316236", "LT02_040_B30", "box_PhoneCallExclusivityModifier_15.Enabled", "box_ActivityMiscInfoModifier_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_30_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMusicTriggerBox_37();
    l0 = self.box_MultipleAND_v2_30;
    l1 = self.box_SoundMusicTriggerBox_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|750770978", "750770978", "LT02_040_B30", "box_MultipleAND_v2_30.Out", "box_SoundMusicTriggerBox_37.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_ActivityMiscInfoModifier_v2_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_AgentGroupModifier_25();
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|75889590", "75889590", "LT02_040_B30", "box_ActivityMiscInfoModifier_v2_22.Out", "box_AgentGroupModifier_25.AddGroup", clone:GetLuaBox(), l0:GetLuaBox());
    -- AddGroup
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|545995118", "545995118", "LT02_040_B30", "box_OutputOrder_v2_5.Out", "box_ActivityAcknowledgeGate_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_5_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Print_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1042093165", "1042093165", "LT02_040_B30", "box_OutputOrder_v2_5.Out", "box_Print_v2_2.ToScreen", clone:GetLuaBox(), l0:GetLuaBox());
    -- ToScreen
    l0:Exec(3, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_5_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_31();
    l0 = self.box_SoundMusicTriggerBox_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|880940517", "880940517", "LT02_040_B30", "box_OutputOrder_v2_5.Out", "box_SoundMusicTriggerBox_31.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_20_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_13();
    l0 = self.box_MultipleOR_20;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|2043081059", "2043081059", "LT02_040_B30", "box_MultipleOR_20.Out", "box_StopMetaSequence_v4_13.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SoundMusicTriggerBox_31_Started()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_33();
    l0 = self.box_SoundMusicTriggerBox_31;
    l1 = self.box_PostWWiseEventSetState_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|307594662", "307594662", "LT02_040_B30", "box_SoundMusicTriggerBox_31.Started", "box_PostWWiseEventSetState_33.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_30();
    l0 = self.box_MultipleAND_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|464333047", "464333047", "LT02_040_B30", "box_SetContextualStrategy_29.Out", "box_MultipleAND_v2_30.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_SoundMusicTriggerBox_37_Stopped()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_7();
    l0 = self.box_SoundMusicTriggerBox_37;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1359265700", "1359265700", "LT02_040_B30", "box_SoundMusicTriggerBox_37.Stopped", "box_ActivityEnd_7.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_18_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_17();
    l0 = self.box_NarrativeSceneSetup_18;
    l1 = self.box_VisibilityModifier_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1755860828", "1755860828", "LT02_040_B30", "box_NarrativeSceneSetup_18.Holstered", "box_VisibilityModifier_17.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_39_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_19();
    l0 = self.box_VisibilityModifier_39;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|2076200526", "2076200526", "LT02_040_B30", "box_VisibilityModifier_39.Enabled", "box_OutputOrder_v2_19.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_3_Out()
    local l0, l1;
    l0 = self.box_ActivityInitialized_3;
    l1 = self.box_PhoneCallExclusivityModifier_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1207258509", "1207258509", "LT02_040_B30", "box_ActivityInitialized_3.Out", "box_PhoneCallExclusivityModifier_15.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_PlaySequence_v8_11_Finished()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_11;
    l1 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1764211549", "1764211549", "LT02_040_B30", "box_PlaySequence_v8_11.Finished", "box_MultipleOR_20.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_PlaySequence_v8_11_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_36();
    l0 = self.box_PlaySequence_v8_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1157170041", "1157170041", "LT02_040_B30", "box_PlaySequence_v8_11.Skipped", "box_OutputOrder_v2_36.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_11_SPOut__Start_POSTFX_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_38();
    l0 = self.box_PlaySequence_v8_11;
    l1 = self.box_PostFx_v3_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1476656779", "1476656779", "LT02_040_B30", "box_PlaySequence_v8_11.SPOut", "box_PostFx_v3_38.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_11_SPOut__Stop_POSTFX_()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_14();
    l0 = self.box_PlaySequence_v8_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1702105403", "1702105403", "LT02_040_B30", "box_PlaySequence_v8_11.SPOut", "box_OutputOrder_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|518406287", "518406287", "LT02_040_B30", "box_SetContextualStrategy_27.Out", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_PostFx_v3_9_Enabled()
    local l0, l1;
    l0 = self.box_PostFx_v3_9;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1990267761", "1990267761", "LT02_040_B30", "box_PostFx_v3_9.Enabled", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_MultipleOR_4_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_4;
    l1 = self.box_ActivityInitialized_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|966171226", "966171226", "LT02_040_B30", "box_MultipleOR_4.Out", "box_ActivityInitialized_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_24_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_26();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|494691911", "494691911", "LT02_040_B30", "box_OutputOrder_v2_24.Out", "box_SetContextualStrategy_26.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_24_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_27();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|666378518", "666378518", "LT02_040_B30", "box_OutputOrder_v2_24.Out", "box_SetContextualStrategy_27.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_32_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_34();
    l0 = self.box_SoundMusicTriggerBox_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|235141887", "235141887", "LT02_040_B30", "box_OutputOrder_v2_32.Out", "box_SoundMusicTriggerBox_34.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_32_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityRetry_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1981870953", "1981870953", "LT02_040_B30", "box_OutputOrder_v2_32.Out", "box_ActivityRetry_8.Retry", clone:GetLuaBox(), l0:GetLuaBox());
    -- Retry
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SetContextualStrategy_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_21();
    l0 = self.box_MultipleAND_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|637506890", "637506890", "LT02_040_B30", "box_SetContextualStrategy_26.Out", "box_MultipleAND_v2_21.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_StartMetaSequence_12_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_12_Out();
    params = self:OnEnter_box_PlaySequence_v8_11();
    l0 = self.box_StartMetaSequence_12;
    l1 = self.box_PlaySequence_v8_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1563215432", "1563215432", "LT02_040_B30", "box_StartMetaSequence_12.Out", "box_PlaySequence_v8_11.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_17_Disabled()
    local l0, l1;
    l0 = self.box_VisibilityModifier_17;
    l1 = self.box_StartMetaSequence_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1188853451", "1188853451", "LT02_040_B30", "box_VisibilityModifier_17.Disabled", "box_StartMetaSequence_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_MultipleAND_v2_21_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_40();
    l0 = self.box_MultipleAND_v2_21;
    l1 = self.box_EntityStatusListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1110413233", "1110413233", "LT02_040_B30", "box_MultipleAND_v2_21.Out", "box_EntityStatusListener_40.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_36_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1631111553", "1631111553", "LT02_040_B30", "box_OutputOrder_v2_36.Out", "box_MultipleOR_20.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_36_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PostWWiseEventSetState_35();
    l0 = self.box_PostWWiseEventSetState_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|838106068", "838106068", "LT02_040_B30", "box_OutputOrder_v2_36.Out", "box_PostWWiseEventSetState_35.SetState", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetState
    l0:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1776445558", "1776445558", "LT02_040_B30", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_4.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_9();
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_PostFx_v3_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|529279099", "529279099", "LT02_040_B30", "box_ActivityAcknowledgeGate_6.Reloaded", "box_PostFx_v3_9.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_28_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_30();
    l0 = self.box_MultipleAND_v2_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|365418868", "365418868", "LT02_040_B30", "box_SetContextualStrategy_28.Out", "box_MultipleAND_v2_30.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_EntityStatusListener_40_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_18();
    l0 = self.box_EntityStatusListener_40;
    l1 = self.box_NarrativeSceneSetup_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1250115387", "1250115387", "LT02_040_B30", "box_EntityStatusListener_40.Disabled", "box_NarrativeSceneSetup_18.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_40_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_40();
    l0 = self.box_EntityStatusListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|461439844", "461439844", "LT02_040_B30", "box_EntityStatusListener_40.Loaded", "box_EntityStatusListener_40.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:OnEnter_box_OutputOrder_v2_14()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|35746947");
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
                [0] = self.f_box_OutputOrder_v2_14_Out_0,
                [1] = self.f_box_OutputOrder_v2_14_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|116180605");
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
                [0] = self.f_box_OutputOrder_v2_19_Out_0,
                [1] = self.f_box_OutputOrder_v2_19_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|196078863");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_25_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A8D86C48",
        -- PawnGroup,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_23()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30to45frames",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|334106884");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_13_Stopped,
    });
    params = {
        -- ID,
        [1] = self.MetaSequenceID,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_30()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_35()
    local params;
    params = {
        -- SoundId,
        [0] = "264881612",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_ActivityMiscInfoModifier_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityMiscInfoModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityMiscInfoModifier_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|539509077");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityMiscInfoModifier_v2_22_Out,
    });
    params = {
        -- ActivityAbortAndFastTravelEnabled,
        [0] = false,
        -- SleepingCampEnabled,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|647974615");
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
                [0] = self.f_box_OutputOrder_v2_5_Out_0,
                [1] = self.f_box_OutputOrder_v2_5_Out_1,
                [2] = self.f_box_OutputOrder_v2_5_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_31()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "82772253",
        -- StopEvent,
        [6] = "3606291445",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_34()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "82772253",
        -- StopEvent,
        [6] = "3606291445",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|790878115");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_29_Out,
    });
    params = {
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_37()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- Priority,
        [2] = 0,
        -- SoundType,
        [3] = 17,
        -- Stackable,
        [4] = false,
        -- StartEvent,
        [5] = "82772253",
        -- StopEvent,
        [6] = "3606291445",
        -- StopFadeOut,
        [7] = 0.5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_18()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_39()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#C1E39EEE",
    };
    return params;
end;

function export:OnEnter_box_PostWWiseEventSetState_33()
    local params;
    params = {
        -- SoundId,
        [0] = "11021985",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_11()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.MetaSequenceID,
        -- SceneEntity,
        [3] = "2101674332118856370",
        -- SequenceFile,
        [4] = "Sequences/zeta_main/CIN_LT02_030_B30_Jacob_Seed_ELIDEATH/cin_lt02_030_b30_jacob_seed_elideath.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1112948427");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_27_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103956983083186376",
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_9()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1566769197");
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
                [0] = self.f_box_OutputOrder_v2_24_Out_0,
                [1] = self.f_box_OutputOrder_v2_24_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1612097606");
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

function export:OnEnter_box_ActivityRetry_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityRetry.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityRetry_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1615218025");
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

function export:OnEnter_box_SetContextualStrategy_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1665937338");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_26_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103956992801388748",
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1816119392");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Print_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1834037565");
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
        [8] = "LT02_040_B30 script is running.",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_17()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#C1E39EEE",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_16()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_38()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade30frames",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_21()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_36()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|1982483444");
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

function export:OnEnter_box_SetContextualStrategy_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT02\\LT02_040\\LT02_040_B30.domino|@LT02_040_B30|2089993284");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_28_Out,
    });
    params = {
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_40()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2101674332118856370",
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_12_Out()
    local l0;
    l0 = self.box_StartMetaSequence_12;
    self.MetaSequenceID = l0:GetDataOutValue(0);
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
