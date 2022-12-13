LUAC�� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_020/lt03_020_debrief.domino
-- User graph: CIN_LT03_030_DEBRIEF
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
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/PlaySequence_v8.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StartMetaSequence.lua");
        cboxRes:RegisterBox("Domino/System/Narrative/StopMetaSequence_v4.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/PositionModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMixing.lua");
        cboxRes:RegisterBox("Domino/System/TeleportPawns.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        
        -- Load resources
        cboxRes:LoadResource([[4221628733.bnk]], "CSoundResource");
        cboxRes:LoadResource([[917929056.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_020/LT03_020_DEBRIEF.CIN_LT03_030_DEBRIEF.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/AI/ContextualAction/ContextualActionListener.lua")] = {
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
                name = "Available",
                delayed = true,
            },
            [1] = {
                name = "Disabled",
                delayed = false,
            },
            [2] = {
                name = "Enabled",
                delayed = false,
            },
            [3] = {
                name = "End",
                delayed = true,
            },
            [4] = {
                name = "Interrupt",
                delayed = true,
            },
            [5] = {
                name = "Markup1",
                delayed = true,
            },
            [6] = {
                name = "Markup2",
                delayed = true,
            },
            [7] = {
                name = "Select",
                delayed = true,
            },
            [8] = {
                name = "Start",
                delayed = true,
            },
        },
        controlOutCount = 9,
        dataIn = {
            [0] = {
                name = "ContextualAction",
                type = "entity",
            },
            [1] = {
                name = "UserFilter",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "User",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/System/OnceOnly_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
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
                dynamicType = 1,
                delayed = false,
            },
            [1] = {
                name = "ResetOut",
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
    metadataTable[GetPathID("Domino/System/PhysicsModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDisabled",
            },
            [1] = {
                name = "SetEnabled",
            },
            [2] = {
                name = "StartPhysics",
            },
        },
        controlInCount = 3,
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
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 3,
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
    metadataTable[GetPathID("Domino/System/Player/WieldInventory_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "LuaDraw",
            },
            [1] = {
                name = "LuaHolster",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Drawn",
                delayed = false,
            },
            [1] = {
                name = "Holstered",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "itemDescriptorId",
                type = "genericdb",
            },
            [1] = {
                name = "itemFilterId",
                type = "genericdb",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/PositionModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "Start",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Cancelled",
                delayed = false,
            },
            [1] = {
                name = "Done",
                delayed = true,
            },
            [2] = {
                name = "StartOut",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "blendCurve",
                type = "archetype",
            },
            [1] = {
                name = "blendTime",
                type = "float",
            },
            [2] = {
                name = "endPos",
                type = "list",
            },
            [3] = {
                name = "endRot",
                type = "list",
            },
            [4] = {
                name = "endTarget",
                type = "entity",
            },
            [5] = {
                name = "players",
                type = "group",
            },
            [6] = {
                name = "targets",
                type = "group",
            },
            [7] = {
                name = "useSmallestAngleDiff",
                type = "bool",
            },
        },
        dataInCount = 8,
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
    self._name = "CIN_LT03_030_DEBRIEF";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF";
    self.Out = DummyFunction;
    self.Metasequence_ID = 0;
    self.box_ContextualActionListener_60 = cbox:CreateBox("Domino/System/AI/ContextualAction/ContextualActionListener.lua");
    l0 = self.box_ContextualActionListener_60;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ContextualActionListener_60");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|74141597");
    l0:SetConnections({
        -- Enabled,
        [2] = self.f_box_ContextualActionListener_60_Enabled,
        -- Start,
        [8] = self.f_box_ContextualActionListener_60_Start,
    });
    self.box_PlaySequence_v8_5 = cbox:CreateBox("Domino/System/Narrative/PlaySequence_v8.lua");
    l0 = self.box_PlaySequence_v8_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PlaySequence_v8_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|157855766");
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
        [0] = self.f_box_PlaySequence_v8_5_Finished,
        -- Skipped,
        [2] = self.f_box_PlaySequence_v8_5_Skipped,
        -- SPOut,
        [3] = {
            connections = {
                [0] = {
                    string = "FadeIn",
                    value = self.f_box_PlaySequence_v8_5_SPOut__FadeIn_,
                },
                [1] = {
                    string = "FadeOut",
                    value = self.f_box_PlaySequence_v8_5_SPOut__FadeOut_,
                },
            },
            count = 2,
        },
        -- Started,
        [4] = self.f_box_PlaySequence_v8_5_Started,
        -- Stopped,
        [5] = self.f_box_PlaySequence_v8_5_Stopped,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|189826040");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_VisibilityModifier_48 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_48;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_48");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|433716298");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_48_Enabled,
    });
    self.box_NarrativeSceneCleanUp_11 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneCleanUp.debug.lua");
    l0 = self.box_NarrativeSceneCleanUp_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneCleanUp_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|446995339");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_NarrativeSceneCleanUp_11_Out,
    });
    self.box_PostFx_v3_1 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|497700398");
    l0:SetConnections({
    });
    self.box_WieldInventory_v5_24 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|626829586");
    l0:SetConnections({
        -- Holstered,
        [1] = self.f_box_WieldInventory_v5_24_Holstered,
    });
    self.box_TeleportPawns_25 = cbox:CreateBox("Domino/System/TeleportPawns.lua");
    l0 = self.box_TeleportPawns_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_TeleportPawns_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|719165894");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_31 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|734835680");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_31_Enabled,
    });
    self.box_PhysicsModifier_42 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|881423102");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_42_Enabled,
    });
    self.box_PhysicsModifier_46 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_46;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_46");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|893309317");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_46_Enabled,
    });
    self.box_VisibilityModifier_45 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|902176428");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_45_Enabled,
    });
    self.box_PhysicsModifier_44 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1022128989");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_44_Enabled,
    });
    self.box_StartMetaSequence_10 = cbox:CreateBox("Domino/System/Narrative/StartMetaSequence.lua");
    l0 = self.box_StartMetaSequence_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartMetaSequence_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1027158417");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_StartMetaSequence_10_Out,
    });
    self.box_PostFx_v3_3 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1052337852");
    l0:SetConnections({
    });
    self.box_PositionModifier_v2_66 = cbox:CreateBox("Domino/System/PositionModifier_v2.lua");
    l0 = self.box_PositionModifier_v2_66;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PositionModifier_v2_66");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1102731550");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_28 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1140220675");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_28_Enabled,
    });
    self.box_NarrativeSceneSetup_59 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_59;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_59");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1163152086");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_59_Holstered,
    });
    self.box_PhysicsModifier_32 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1182647897");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_32_Enabled,
    });
    self.box_Delay_v5_69 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_69;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_69");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1203092062");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_69_TimeElapsed,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1223162054");
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
    self.box_MultipleOR_75 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_75;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_75");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1377103353");
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
        [0] = self.f_box_MultipleOR_75_Out,
    });
    self.box_Music_Quest_v2_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1447206297");
    l0:SetConnections({
    });
    self.box_VisibilityModifier_43 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_43;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1480065491");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_43_Enabled,
    });
    self.box_MultipleAND_v2_23 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1551234212");
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
        [0] = self.f_box_MultipleAND_v2_23_Out,
    });
    self.box_PhysicsModifier_47 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_47;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_47");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1564043256");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PhysicsModifier_47_Enabled,
    });
    self.box_OnceOnly_v3_70 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_70;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_70");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1615742527");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_70_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_64 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_64;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_64");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1671291222");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_64_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_64_Loaded,
    });
    self.box_PostFx_v3_14 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1675167248");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_14_Disabled,
    });
    self.box_Delay_v5_68 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_68;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_68");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1684085007");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_68_TimeElapsed,
    });
    self.box_PostFx_v3_26 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1744545671");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_26_Disabled,
    });
    self.box_Delay_v5_6 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1804497754");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_6_TimeElapsed,
    });
    self.box_OnceOnly_v3_13 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1901252747");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 2,
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
                [0] = self.f_box_OnceOnly_v3_13_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_71 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_71;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_71");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1910891293");
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
        [0] = self.f_box_MultipleOR_71_Out,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|130002624", "130002624", "CIN_LT03_030_DEBRIEF", "In", "box_Delay_v5_8.Start", self, l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_7_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_4();
    l0 = self.box_Music_Quest_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|532075937", "532075937", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_7.Out", "box_Music_Quest_v2_4.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(3, params);
end;

function export:f_box_OutputOrder_v2_7_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1500397662", "1500397662", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_7.Out", "Out", clone:GetLuaBox(), self);
    self:Out();
end;

function export:f_box_MissionBlockLayer_61_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_62();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|833647682", "833647682", "CIN_LT03_030_DEBRIEF", "box_MissionBlockLayer_61.Activated", "box_MissionBlockLayer_62.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ContextualActionListener_60_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_69();
    l0 = self.box_ContextualActionListener_60;
    l1 = self.box_Delay_v5_69;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1561635908", "1561635908", "CIN_LT03_030_DEBRIEF", "box_ContextualActionListener_60.Enabled", "box_Delay_v5_69.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_ContextualActionListener_60_Start()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_68();
    l0 = self.box_ContextualActionListener_60;
    l1 = self.box_Delay_v5_68;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1805975772", "1805975772", "CIN_LT03_030_DEBRIEF", "box_ContextualActionListener_60.Start", "box_Delay_v5_68.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_PlaySequence_v8_5_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_73();
    l0 = self.box_PlaySequence_v8_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1713075613", "1713075613", "CIN_LT03_030_DEBRIEF", "box_PlaySequence_v8_5.Finished", "box_OutputOrder_v2_73.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_5_Skipped()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_76();
    l0 = self.box_PlaySequence_v8_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|216840708", "216840708", "CIN_LT03_030_DEBRIEF", "box_PlaySequence_v8_5.Skipped", "box_OutputOrder_v2_76.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PlaySequence_v8_5_SPOut__FadeIn_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_3();
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_PostFx_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|737429304", "737429304", "CIN_LT03_030_DEBRIEF", "box_PlaySequence_v8_5.SPOut", "box_PostFx_v3_3.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_PlaySequence_v8_5_SPOut__FadeOut_()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_1();
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_PostFx_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|152361187", "152361187", "CIN_LT03_030_DEBRIEF", "box_PlaySequence_v8_5.SPOut", "box_PostFx_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_5_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Music_Quest_v2_4();
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_Music_Quest_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1410163009", "1410163009", "CIN_LT03_030_DEBRIEF", "box_PlaySequence_v8_5.Started", "box_Music_Quest_v2_4.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(1, params);
end;

function export:f_box_PlaySequence_v8_5_Stopped()
    local l0, l1;
    l0 = self.box_PlaySequence_v8_5;
    l1 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1649156113", "1649156113", "CIN_LT03_030_DEBRIEF", "box_PlaySequence_v8_5.Stopped", "box_MultipleOR_75.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_8;
    l1 = self.box_StartMetaSequence_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|598945311", "598945311", "CIN_LT03_030_DEBRIEF", "box_Delay_v5_8.TimeElapsed", "box_StartMetaSequence_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_63_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|44870944", "44870944", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_63.Out", "box_EntityStatusListener_64.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_63_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_6();
    l0 = self.box_Delay_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1595187983", "1595187983", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_63.Out", "box_Delay_v5_6.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_VisibilityModifier_48_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_46();
    l0 = self.box_VisibilityModifier_48;
    l1 = self.box_PhysicsModifier_46;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|2031818191", "2031818191", "CIN_LT03_030_DEBRIEF", "box_VisibilityModifier_48.Enabled", "box_PhysicsModifier_46.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneCleanUp_11_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_7();
    l0 = self.box_NarrativeSceneCleanUp_11;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1812418061", "1812418061", "CIN_LT03_030_DEBRIEF", "box_NarrativeSceneCleanUp_11.Out", "box_OutputOrder_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_WieldInventory_v5_24_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_48();
    l0 = self.box_WieldInventory_v5_24;
    l1 = self.box_VisibilityModifier_48;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|53458683", "53458683", "CIN_LT03_030_DEBRIEF", "box_WieldInventory_v5_24.Holstered", "box_VisibilityModifier_48.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_62_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_63();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1091999003", "1091999003", "CIN_LT03_030_DEBRIEF", "box_MissionBlockLayer_62.Activated", "box_OutputOrder_v2_63.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_31_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_47();
    l0 = self.box_VisibilityModifier_31;
    l1 = self.box_PhysicsModifier_47;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|988927313", "988927313", "CIN_LT03_030_DEBRIEF", "box_VisibilityModifier_31.Enabled", "box_PhysicsModifier_47.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_76_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_2();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|204913939", "204913939", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_OutputOrder_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_76_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|2080696716", "2080696716", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_76.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_PhysicsModifier_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_28();
    l0 = self.box_PhysicsModifier_42;
    l1 = self.box_VisibilityModifier_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|2110609444", "2110609444", "CIN_LT03_030_DEBRIEF", "box_PhysicsModifier_42.Enabled", "box_VisibilityModifier_28.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_PhysicsModifier_46_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_31();
    l0 = self.box_PhysicsModifier_46;
    l1 = self.box_VisibilityModifier_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1570116556", "1570116556", "CIN_LT03_030_DEBRIEF", "box_PhysicsModifier_46.Enabled", "box_VisibilityModifier_31.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_45_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_42();
    l0 = self.box_VisibilityModifier_45;
    l1 = self.box_PhysicsModifier_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1867668479", "1867668479", "CIN_LT03_030_DEBRIEF", "box_VisibilityModifier_45.Enabled", "box_PhysicsModifier_42.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_2_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Music_Quest_v2_4();
    l0 = self.box_Music_Quest_v2_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|237164056", "237164056", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_2.Out", "box_Music_Quest_v2_4.CIN_Skip", clone:GetLuaBox(), l0:GetLuaBox());
    -- CIN_Skip
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_2_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1186335815", "1186335815", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_2.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PhysicsModifier_44_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_45();
    l0 = self.box_PhysicsModifier_44;
    l1 = self.box_VisibilityModifier_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|188977400", "188977400", "CIN_LT03_030_DEBRIEF", "box_PhysicsModifier_44.Enabled", "box_VisibilityModifier_45.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_67_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_65();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1258600529", "1258600529", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_67.Out", "box_GetLocalPlayer_v2_65.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_67_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_TeleportPawns_25();
    l0 = self.box_TeleportPawns_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|217992919", "217992919", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_67.Out", "box_TeleportPawns_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_StartMetaSequence_10_Out()
    local params, l0, l1;
    self:OnExit_box_StartMetaSequence_10_Out();
    params = self:OnEnter_box_NarrativeSceneSetup_59();
    l0 = self.box_StartMetaSequence_10;
    l1 = self.box_NarrativeSceneSetup_59;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|832343427", "832343427", "CIN_LT03_030_DEBRIEF", "box_StartMetaSequence_10.Out", "box_NarrativeSceneSetup_59.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_SetContextualStrategy_20_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|317946396", "317946396", "CIN_LT03_030_DEBRIEF", "box_SetContextualStrategy_20.Out", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_22();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1833546016", "1833546016", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_21.Out", "box_SetContextualStrategy_22.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_20();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1001440158", "1001440158", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_21.Out", "box_SetContextualStrategy_20.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_28_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_32();
    l0 = self.box_VisibilityModifier_28;
    l1 = self.box_PhysicsModifier_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|271952090", "271952090", "CIN_LT03_030_DEBRIEF", "box_VisibilityModifier_28.Enabled", "box_PhysicsModifier_32.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_NarrativeSceneSetup_59_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_72();
    l0 = self.box_NarrativeSceneSetup_59;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1206919471", "1206919471", "CIN_LT03_030_DEBRIEF", "box_NarrativeSceneSetup_59.Holstered", "box_OutputOrder_v2_72.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_32_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_MissionBlockLayer_61();
    l0 = self.box_PhysicsModifier_32;
    l1 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|686854595", "686854595", "CIN_LT03_030_DEBRIEF", "box_PhysicsModifier_32.Enabled", "box_MissionBlockLayer_61.Activate", l0:GetLuaBox(), l1:GetLuaBox());
    -- Activate
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_69_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_69;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|533935574", "533935574", "CIN_LT03_030_DEBRIEF", "box_Delay_v5_69.TimeElapsed", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_73_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|861344674", "861344674", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_73.Out", "box_MultipleOR_9.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_73_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_75;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1025731462", "1025731462", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_73.Out", "box_MultipleOR_75.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetLocalPlayer_v2_65_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_65_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PositionModifier_v2_66();
    l0 = self.box_PositionModifier_v2_66;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|789672245", "789672245", "CIN_LT03_030_DEBRIEF", "box_GetLocalPlayer_v2_65.Out", "box_PositionModifier_v2_66.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_MultipleOR_9_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_9;
    l1 = self.box_OnceOnly_v3_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|2036411785", "2036411785", "CIN_LT03_030_DEBRIEF", "box_MultipleOR_9.Out", "box_OnceOnly_v3_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_SetContextualStrategy_22_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_23();
    l0 = self.box_MultipleAND_v2_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1011532314", "1011532314", "CIN_LT03_030_DEBRIEF", "box_SetContextualStrategy_22.Out", "box_MultipleAND_v2_23.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_MultipleOR_75_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMixing_74();
    l0 = self.box_MultipleOR_75;
    l1 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|524139232", "524139232", "CIN_LT03_030_DEBRIEF", "box_MultipleOR_75.Out", "box_SoundMixing_74.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_43_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_44();
    l0 = self.box_VisibilityModifier_43;
    l1 = self.box_PhysicsModifier_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|2147122362", "2147122362", "CIN_LT03_030_DEBRIEF", "box_VisibilityModifier_43.Enabled", "box_PhysicsModifier_44.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_23_Out()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_24();
    l0 = self.box_MultipleAND_v2_23;
    l1 = self.box_WieldInventory_v5_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|374101249", "374101249", "CIN_LT03_030_DEBRIEF", "box_MultipleAND_v2_23.Out", "box_WieldInventory_v5_24.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:f_box_PhysicsModifier_47_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_43();
    l0 = self.box_PhysicsModifier_47;
    l1 = self.box_VisibilityModifier_43;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|826894107", "826894107", "CIN_LT03_030_DEBRIEF", "box_PhysicsModifier_47.Enabled", "box_VisibilityModifier_43.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_70_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_26();
    l0 = self.box_OnceOnly_v3_70;
    l1 = self.box_PostFx_v3_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|93674851", "93674851", "CIN_LT03_030_DEBRIEF", "box_OnceOnly_v3_70.Out", "box_PostFx_v3_26.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_64_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_67();
    l0 = self.box_EntityStatusListener_64;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|2000331423", "2000331423", "CIN_LT03_030_DEBRIEF", "box_EntityStatusListener_64.Disabled", "box_OutputOrder_v2_67.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_64_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_64();
    l0 = self.box_EntityStatusListener_64;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1169951485", "1169951485", "CIN_LT03_030_DEBRIEF", "box_EntityStatusListener_64.Loaded", "box_EntityStatusListener_64.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_PostFx_v3_14_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneCleanUp_11();
    l0 = self.box_PostFx_v3_14;
    l1 = self.box_NarrativeSceneCleanUp_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1098836924", "1098836924", "CIN_LT03_030_DEBRIEF", "box_PostFx_v3_14.Disabled", "box_NarrativeSceneCleanUp_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_68_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_68;
    l1 = self.box_MultipleOR_71;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1304463502", "1304463502", "CIN_LT03_030_DEBRIEF", "box_Delay_v5_68.TimeElapsed", "box_MultipleOR_71.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_PostFx_v3_26_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_14();
    l0 = self.box_PostFx_v3_26;
    l1 = self.box_PostFx_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1115090693", "1115090693", "CIN_LT03_030_DEBRIEF", "box_PostFx_v3_26.Disabled", "box_PostFx_v3_14.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_72_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_PlaySequence_v8_5();
    l0 = self.box_PlaySequence_v8_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|66854139", "66854139", "CIN_LT03_030_DEBRIEF", "box_OutputOrder_v2_72.Out", "box_PlaySequence_v8_5.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_6_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ContextualActionListener_60();
    l0 = self.box_Delay_v5_6;
    l1 = self.box_ContextualActionListener_60;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1847368387", "1847368387", "CIN_LT03_030_DEBRIEF", "box_Delay_v5_6.TimeElapsed", "box_ContextualActionListener_60.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_SoundMixing_30_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|425026376", "425026376", "CIN_LT03_030_DEBRIEF", "box_SoundMixing_30.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_13_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_StopMetaSequence_v4_12();
    l0 = self.box_OnceOnly_v3_13;
    l1 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1811111085", "1811111085", "CIN_LT03_030_DEBRIEF", "box_OnceOnly_v3_13.Out", "box_StopMetaSequence_v4_12.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_71_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_71;
    l1 = self.box_OnceOnly_v3_70;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1490505598", "1490505598", "CIN_LT03_030_DEBRIEF", "box_MultipleOR_71.Out", "box_OnceOnly_v3_70.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_StopMetaSequence_v4_12_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMixing_30();
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|2062230110", "2062230110", "CIN_LT03_030_DEBRIEF", "box_StopMetaSequence_v4_12.Stopped", "box_SoundMixing_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_OutputOrder_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|34700648");
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

function export:OnEnter_box_MissionBlockLayer_61()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_61");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|49549560");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_61_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160232690127479",
        -- missionLayerId,
        [1] = "45174631199609473",
    };
    return params;
end;

function export:OnEnter_box_ContextualActionListener_60()
    local params;
    DrawTextToScreen("Comment: Waiting for Marshall Starting STP", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'ContextualActionListener')-- Comment: Waiting for Marshall Starting STP");
    params = {
        -- ContextualAction,
        [0] = "2104574505578951742",
    };
    return params;
end;

function export:OnEnter_box_PlaySequence_v8_5()
    local params;
    params = {
        -- cleanupArrows,
        [0] = true,
        -- IsSkippable,
        [1] = true,
        -- MetaSequenceID,
        [2] = self.Metasequence_ID,
        -- SceneEntity,
        [3] = "2101560650407882831",
        -- SequenceFile,
        [4] = "sequences/zeta_main/CIN_LT03_022_BURKE/cin_lt03_022_burke_sequence.seq",
        -- ShouldRemovePostFx,
        [5] = false,
        -- SkipPostFx,
        [6] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_8()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_63()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_63");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|263316570");
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
                [0] = self.f_box_OutputOrder_v2_63_Out_0,
                [1] = self.f_box_OutputOrder_v2_63_Out_1,
            },
            count = 2,
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
        [1] = "#5C4183B5",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneCleanUp_11()
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

function export:OnEnter_box_SoundMixing_74()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_74");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|454945186");
    l0:SetConnections({
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/Mix_Mis_LT03_B_Transitions",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_1()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade60to30frames",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_24()
    local params;
    params = {
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_62()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_62");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|635341755");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_62_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160232690127479",
        -- missionLayerId,
        [1] = "27160246369576261",
    };
    return params;
end;

function export:OnEnter_box_TeleportPawns_25()
    local params;
    params = {
        -- ClientDestinationEntity,
        [0] = "-1",
        -- Destination,
        [1] = "2104452462785084957",
        -- LoadingScreen,
        [2] = false,
        -- Pawns,
        [4] = "#5B9E5CA4",
        -- UseBlackScreen,
        [5] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_31()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3C860A50",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_76()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_76");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|811341730");
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

function export:OnEnter_box_PhysicsModifier_42()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3BEBCE49",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_46()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#5C4183B5",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_45()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3BEBCE49",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1017088526");
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
                [0] = self.f_box_OutputOrder_v2_2_Out_0,
                [1] = self.f_box_OutputOrder_v2_2_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_44()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#A58F5BEA",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_67()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_67");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1026716246");
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
                [0] = self.f_box_OutputOrder_v2_67_Out_0,
                [1] = self.f_box_OutputOrder_v2_67_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_3()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade60frameswhite",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1058949311");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_20_Out,
    });
    params = {
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1063018088");
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
                [1] = self.f_box_OutputOrder_v2_21_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_PositionModifier_v2_66()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    params = {
        -- blendTime,
        [1] = 0,
        -- endTarget,
        [4] = "2104452462785084957",
        -- players,
        [5] = "#5B9E5CA4",
        -- targets,
        [6] = l0:GetDataOutValue(0),
        -- useSmallestAngleDiff,
        [7] = false,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_28()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1568CD26",
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_59()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_32()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1568CD26",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_69()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 10,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_73()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_73");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1212716565");
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
                [0] = self.f_box_OutputOrder_v2_73_Out_0,
                [1] = self.f_box_OutputOrder_v2_73_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_65()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_65");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1220102652");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_65_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1307202734");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_22_Out,
    });
    params = {
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_4()
    local params;
    params = {
        -- EntityId,
        [0] = "-1",
        -- FadeOutType,
        [1] = 4,
        -- MUS_MIS_Step,
        [2] = 4,
        -- Priority,
        [3] = 0,
        -- SoundType,
        [4] = 17,
        -- Stackable,
        [5] = false,
        -- StartEvent,
        [6] = "917929056",
        -- StopEvent,
        [7] = "4221628733",
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

function export:OnEnter_box_VisibilityModifier_43()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#A58F5BEA",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_23()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_47()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3C860A50",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_64()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104452462785084957",
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_14()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade60to30frames",
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_68()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_26()
    local params;
    DrawTextToScreen("Comment: STP started", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PostFx_v3')-- Comment: STP started");
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "blackscreenfx",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_72()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_72");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1795181749");
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
                [0] = self.f_box_OutputOrder_v2_72_Out_0,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_6()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 3,
    };
    return params;
end;

function export:OnEnter_box_SoundMixing_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundMixing.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMixing_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|1867916998");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SoundMixing_30_Out,
    });
    params = {
        -- SoundMixing,
        [0] = "Compatible/CIN_Recovered",
    };
    return params;
end;

function export:OnEnter_box_StopMetaSequence_v4_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Narrative/StopMetaSequence_v4.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StopMetaSequence_v4_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@CIN_LT03_030_DEBRIEF|2094111223");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_StopMetaSequence_v4_12_Stopped,
    });
    params = {
        -- ID,
        [1] = self.Metasequence_ID,
    };
    return params;
end;

function export:OnExit_box_StartMetaSequence_10_Out()
    local l0;
    l0 = self.box_StartMetaSequence_10;
    self.Metasequence_ID = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_65_Out()
    local l0, l1;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l1 = self.box_PositionModifier_v2_66;
    l1:GetLuaBox().targets = l0:GetDataOutValue(0);
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
