LUAC�Y -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt03/lt03_020/lt03_020_debrief.domino
-- User graph: LT03_020_DEBRIEF_Main
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Bliss.Lib_Bliss_InputHudOverrides.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/AI/AgentGroupModifier.lua");
        cboxRes:RegisterBox("Domino/System/AI/SetContextualStrategy.lua");
        cboxRes:RegisterBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetMissionLayerState_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/OverrideEnvironment_v3.lua");
        cboxRes:RegisterBox("Domino/System/PhysicsModifier.lua");
        cboxRes:RegisterBox("Domino/System/Player/AlternateInventoryModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/PostFx_v3.lua");
        cboxRes:RegisterBox("Domino/System/SetTimeOfDay.lua");
        cboxRes:RegisterBox("Domino/System/StartCelebration.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/System/VisionModeModifier_v2.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_020/LT03_020_DEBRIEF.CIN_LT03_030_DEBRIEF.debug.lua");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_020/LT03_020_DEBRIEF.LT03_020_DEBRIEF_Main.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Bliss.Lib_Bliss_InputHudOverrides.debug.lua")] = {
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
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "jump",
                type = "string",
            },
            [1] = {
                name = "short_range_melee_start",
                type = "string",
            },
            [2] = {
                name = "ShowCompass",
                type = "bool",
            },
            [3] = {
                name = "sprint",
                type = "string",
            },
            [4] = {
                name = "toggle_no_weapon",
                type = "string",
            },
            [5] = {
                name = "updateshooting",
                type = "string",
            },
        },
        dataInCount = 6,
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
    metadataTable[GetPathID("Domino/System/GetMissionLayerState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
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
                name = "missionBlockId",
                type = "missionblock",
            },
            [1] = {
                name = "missionBlockLayerId",
                type = "missionblocklayer",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/GFHSystemModifier.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "DisableGFHSystem",
            },
            [1] = {
                name = "EnableGFHSystem",
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
                name = "enableAfterBeat",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/OverrideEnvironment_v3.lua")] = {
        stateless = true,
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
                name = "adaptiveBloom",
                type = "string",
            },
            [1] = {
                name = "atmosphericScattering",
                type = "string",
            },
            [2] = {
                name = "characterVisibility",
                type = "string",
            },
            [3] = {
                name = "cloud",
                type = "string",
            },
            [4] = {
                name = "depthOfField",
                type = "string",
            },
            [5] = {
                name = "exposure",
                type = "string",
            },
            [6] = {
                name = "fog",
                type = "string",
            },
            [7] = {
                name = "lighting",
                type = "string",
            },
            [8] = {
                name = "motionBlur",
                type = "string",
            },
            [9] = {
                name = "ratio",
                type = "float",
            },
            [10] = {
                name = "shadow",
                type = "string",
            },
            [11] = {
                name = "sky",
                type = "string",
            },
            [12] = {
                name = "stormFactor",
                type = "float",
            },
            [13] = {
                name = "transitionTime",
                type = "float",
            },
            [14] = {
                name = "wind",
                type = "string",
            },
        },
        dataInCount = 15,
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
    metadataTable[GetPathID("Domino/System/Player/AlternateInventoryModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Main",
            },
            [1] = {
                name = "Mission",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Error",
                delayed = false,
            },
            [1] = {
                name = "Switched",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "clearAfterSwitch",
                type = "bool",
            },
            [1] = {
                name = "players",
                type = "group",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/StartCelebration.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Ended",
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
                name = "Preset",
                type = "genericdb",
            },
            [1] = {
                name = "TextId",
                type = "oasis",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/VisionModeModifier_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "StartBliss",
            },
            [1] = {
                name = "StartCustomIntoxication",
            },
            [2] = {
                name = "StartDrunk",
            },
            [3] = {
                name = "StartHigh",
            },
            [4] = {
                name = "StartScopolamine",
            },
            [5] = {
                name = "StartScopolamineHeavy",
            },
            [6] = {
                name = "StartScopolamineMedium",
            },
            [7] = {
                name = "Stop",
            },
        },
        controlInCount = 8,
        controlOut = {
            [0] = {
                name = "StartedBliss",
                delayed = false,
            },
            [1] = {
                name = "StartedCustomIntoxication",
                delayed = false,
            },
            [2] = {
                name = "StartedDrunk",
                delayed = false,
            },
            [3] = {
                name = "StartedHigh",
                delayed = false,
            },
            [4] = {
                name = "StartedScopolamine",
                delayed = false,
            },
            [5] = {
                name = "StartedScopolamineHeavy",
                delayed = false,
            },
            [6] = {
                name = "StartedScopolamineMedium",
                delayed = false,
            },
            [7] = {
                name = "Stopped",
                delayed = false,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "intoxicationAmount",
                type = "float",
            },
            [1] = {
                name = "players",
                type = "group",
            },
            [2] = {
                name = "useAsPercent",
                type = "bool",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
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
end;

function export:Init(cbox)
    local l0;
    self._name = "LT03_020_DEBRIEF_Main";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main";
    self.box_PhysicsModifier_22 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|36419210");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_22_Disabled,
    });
    self.box_GodMode_v3_16 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|41249870");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GodMode_v3_16_Disabled,
    });
    self.box_EntityStatusListener_24 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|160530079");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_24_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_24_Loaded,
    });
    self.box_EntityStatusListener_38 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|259553561");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_38_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_38_Loaded,
    });
    self.box_VisibilityModifier_25 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|306575004");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_25_Disabled,
    });
    self.box_PostFx_v3_18 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|425677643");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_PostFx_v3_18_Enabled,
    });
    self.box_Lib_Bliss_InputHudOverrides_4 = cbox:CreateBox("Domino/Library/Sp/Lib_Bliss.Lib_Bliss_InputHudOverrides.debug.lua");
    l0 = self.box_Lib_Bliss_InputHudOverrides_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Lib_Bliss_InputHudOverrides_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|654432462");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Lib_Bliss_InputHudOverrides_4_Out,
    });
    self.box_GunsForHireSystemModifier_40 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|702095656");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_40_Disabled,
    });
    self.box_PhysicsModifier_17 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|711191393");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_17_Disabled,
    });
    self.box_CIN_LT03_030_DEBRIEF_10 = cbox:CreateBox("Domino/user/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT03/LT03_020/LT03_020_DEBRIEF.CIN_LT03_030_DEBRIEF.debug.lua");
    l0 = self.box_CIN_LT03_030_DEBRIEF_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CIN_LT03_030_DEBRIEF_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|851983474");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CIN_LT03_030_DEBRIEF_10_Out,
    });
    self.box_PhysicsModifier_31 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|865576373");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_31_Disabled,
    });
    self.box_EntityStatusListener_34 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1062938910");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_34_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_34_Loaded,
    });
    self.box_ActivityInitialized_1 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1101138850");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_1_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1119267273");
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
    self.box_AlternateInventoryModifier_v2_2 = cbox:CreateBox("Domino/System/Player/AlternateInventoryModifier_v2.lua");
    l0 = self.box_AlternateInventoryModifier_v2_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AlternateInventoryModifier_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1187872647");
    l0:SetConnections({
        -- Switched,
        [1] = self.f_box_AlternateInventoryModifier_v2_2_Switched,
    });
    self.box_VisibilityModifier_36 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1469871166");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_36_Disabled,
    });
    self.box_MultipleAND_v2_44 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1498521032");
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
        [0] = self.f_box_MultipleAND_v2_44_Out,
    });
    self.box_PhysicsModifier_39 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1549718034");
    l0:SetConnections({
    });
    self.box_StartCelebration_11 = cbox:CreateBox("Domino/System/StartCelebration.lua");
    l0 = self.box_StartCelebration_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_StartCelebration_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1565021825");
    l0:SetConnections({
        -- Ended,
        [0] = self.f_box_StartCelebration_11_Ended,
    });
    self.box_VisibilityModifier_30 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1569136285");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_30_Disabled,
    });
    self.box_VisionModeModifier_v2_8 = cbox:CreateBox("Domino/System/VisionModeModifier_v2.lua");
    l0 = self.box_VisionModeModifier_v2_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisionModeModifier_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1631294198");
    l0:SetConnections({
    });
    self.box_PostFx_v3_45 = cbox:CreateBox("Domino/System/Player/PostFx_v3.lua");
    l0 = self.box_PostFx_v3_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostFx_v3_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1637032925");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PostFx_v3_45_Disabled,
    });
    self.box_PhysicsModifier_37 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1661293928");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_37_Disabled,
    });
    self.box_VisibilityModifier_29 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1705249395");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_29_Disabled,
    });
    self.box_PhysicsModifier_33 = cbox:CreateBox("Domino/System/PhysicsModifier.lua");
    l0 = self.box_PhysicsModifier_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PhysicsModifier_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1710934181");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_PhysicsModifier_33_Disabled,
    });
    self.box_CHEAT_SetEnvironmentTimeScale_13 = cbox:CreateBox("Domino/System/CHEAT_SetEnvironmentTimeScale.lua");
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CHEAT_SetEnvironmentTimeScale_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1732730769");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_CHEAT_SetEnvironmentTimeScale_13_Out,
    });
    self.box_ActivityAcknowledgeGate_6 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1741097381");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_6_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_6_Reloaded,
    });
    self.box_EntityStatusListener_41 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1929365135");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_EntityStatusListener_41_Disabled,
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_41_Loaded,
    });
    self.box_NarrativeSceneSetup_15 = cbox:CreateBox("Domino/Library/Narrative/Lib_Narrative.NarrativeSceneSetup.debug.lua");
    l0 = self.box_NarrativeSceneSetup_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NarrativeSceneSetup_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1974315323");
    l0:SetConnections({
        -- Holstered,
        [0] = self.f_box_NarrativeSceneSetup_15_Holstered,
    });
    self.box_GunsForHireSystemModifier_14 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2047153492");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GunsForHireSystemModifier_14_Enabled,
    });
    self.box_VisibilityModifier_20 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2047647857");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_20_Disabled,
    });
    self.box_VisibilityModifier_21 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2092065386");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_VisibilityModifier_21_Disabled,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1815141514", "1815141514", "LT03_020_DEBRIEF_Main", "In", "box_ActivityAcknowledgeGate_6.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_PhysicsModifier_22_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_23();
    l0 = self.box_PhysicsModifier_22;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|630941415", "630941415", "LT03_020_DEBRIEF_Main", "box_PhysicsModifier_22.Disabled", "box_OutputOrder_v2_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GodMode_v3_16_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_45();
    l0 = self.box_GodMode_v3_16;
    l1 = self.box_PostFx_v3_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|675049806", "675049806", "LT03_020_DEBRIEF_Main", "box_GodMode_v3_16.Disabled", "box_PostFx_v3_45.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_24_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_30();
    l0 = self.box_EntityStatusListener_24;
    l1 = self.box_VisibilityModifier_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|208254419", "208254419", "LT03_020_DEBRIEF_Main", "box_EntityStatusListener_24.Disabled", "box_VisibilityModifier_30.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_24_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|294073171", "294073171", "LT03_020_DEBRIEF_Main", "box_EntityStatusListener_24.Loaded", "box_EntityStatusListener_24.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_EntityStatusListener_38_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_34();
    l0 = self.box_EntityStatusListener_38;
    l1 = self.box_EntityStatusListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|430089242", "430089242", "LT03_020_DEBRIEF_Main", "box_EntityStatusListener_38.Disabled", "box_EntityStatusListener_34.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_38_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|685325012", "685325012", "LT03_020_DEBRIEF_Main", "box_EntityStatusListener_38.Loaded", "box_EntityStatusListener_38.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_VisibilityModifier_25_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_33();
    l0 = self.box_VisibilityModifier_25;
    l1 = self.box_PhysicsModifier_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1829352977", "1829352977", "LT03_020_DEBRIEF_Main", "box_VisibilityModifier_25.Disabled", "box_PhysicsModifier_33.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PostFx_v3_18_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_NarrativeSceneSetup_15();
    l0 = self.box_PostFx_v3_18;
    l1 = self.box_NarrativeSceneSetup_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|805828938", "805828938", "LT03_020_DEBRIEF_Main", "box_PostFx_v3_18.Enabled", "box_NarrativeSceneSetup_15.HolsterWeapon", l0:GetLuaBox(), l1:GetLuaBox());
    -- HolsterWeapon
    l1:Exec(1, params);
end;

function export:f_box_Lib_Bliss_InputHudOverrides_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GunsForHireSystemModifier_14();
    l0 = self.box_Lib_Bliss_InputHudOverrides_4;
    l1 = self.box_GunsForHireSystemModifier_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|543513807", "543513807", "LT03_020_DEBRIEF_Main", "box_Lib_Bliss_InputHudOverrides_4.Out", "box_GunsForHireSystemModifier_14.EnableGFHSystem", l0:GetLuaBox(), l1:GetLuaBox());
    -- EnableGFHSystem
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_32_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_42();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2043665225", "2043665225", "LT03_020_DEBRIEF_Main", "box_MissionBlockLayer_32.Deactivated", "box_MissionBlockLayer_42.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_40_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_AgentGroupModifier_26();
    l0 = self.box_GunsForHireSystemModifier_40;
    l1 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|278630173", "278630173", "LT03_020_DEBRIEF_Main", "box_GunsForHireSystemModifier_40.Disabled", "box_AgentGroupModifier_26.AddGroup", l0:GetLuaBox(), l1:GetLuaBox());
    -- AddGroup
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_PhysicsModifier_17_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_20();
    l0 = self.box_PhysicsModifier_17;
    l1 = self.box_VisibilityModifier_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1327044442", "1327044442", "LT03_020_DEBRIEF_Main", "box_PhysicsModifier_17.Disabled", "box_VisibilityModifier_20.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_CIN_LT03_030_DEBRIEF_10_Out()
    local params, l0, l1;
    params = self:OnEnter_box_StartCelebration_11();
    l0 = self.box_CIN_LT03_030_DEBRIEF_10;
    l1 = self.box_StartCelebration_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1229504453", "1229504453", "LT03_020_DEBRIEF_Main", "box_CIN_LT03_030_DEBRIEF_10.Out", "box_StartCelebration_11.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_31_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_21();
    l0 = self.box_PhysicsModifier_31;
    l1 = self.box_VisibilityModifier_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|186110441", "186110441", "LT03_020_DEBRIEF_Main", "box_PhysicsModifier_31.Disabled", "box_VisibilityModifier_21.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_SetTimeOfDay_12_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    local clone = l0;
    params = self:OnEnter_box_CHEAT_SetEnvironmentTimeScale_13();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|795273528", "795273528", "LT03_020_DEBRIEF_Main", "box_SetTimeOfDay_12.Out", "box_CHEAT_SetEnvironmentTimeScale_13.SetTimeScale", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeScale
    l0:Exec(0, params);
end;

function export:f_box_GetMissionLayerState_v2_27_Enabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_38();
    l0 = self.box_EntityStatusListener_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|510311370", "510311370", "LT03_020_DEBRIEF_Main", "box_GetMissionLayerState_v2_27.Enabled", "box_EntityStatusListener_38.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_EntityStatusListener_34_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_41();
    l0 = self.box_EntityStatusListener_34;
    l1 = self.box_EntityStatusListener_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1785387739", "1785387739", "LT03_020_DEBRIEF_Main", "box_EntityStatusListener_34.Disabled", "box_EntityStatusListener_41.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_34_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_34();
    l0 = self.box_EntityStatusListener_34;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2110189402", "2110189402", "LT03_020_DEBRIEF_Main", "box_EntityStatusListener_34.Loaded", "box_EntityStatusListener_34.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_42_Deactivated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_40();
    l0 = self.box_GunsForHireSystemModifier_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1132940021", "1132940021", "LT03_020_DEBRIEF_Main", "box_MissionBlockLayer_42.Deactivated", "box_GunsForHireSystemModifier_40.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_OverrideEnvironment_v3_7_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_OverrideEnvironment_v3_19();
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1172427333", "1172427333", "LT03_020_DEBRIEF_Main", "box_OverrideEnvironment_v3_7.Disabled", "box_OverrideEnvironment_v3_19.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_ActivityInitialized_1_Out()
    local params, l0, l1;
    params = self:OnEnter_box_AlternateInventoryModifier_v2_2();
    l0 = self.box_ActivityInitialized_1;
    l1 = self.box_AlternateInventoryModifier_v2_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|590837591", "590837591", "LT03_020_DEBRIEF_Main", "box_ActivityInitialized_1.Out", "box_AlternateInventoryModifier_v2_2.Main", l0:GetLuaBox(), l1:GetLuaBox());
    -- Main
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_ActivityInitialized_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|555465439", "555465439", "LT03_020_DEBRIEF_Main", "box_OutputOrder_v2_3.Out", "box_ActivityInitialized_1.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisionModeModifier_v2_8();
    l0 = self.box_VisionModeModifier_v2_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|848211048", "848211048", "LT03_020_DEBRIEF_Main", "box_OutputOrder_v2_3.Out", "box_VisionModeModifier_v2_8.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(7, params);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OverrideEnvironment_v3_7();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|411067817", "411067817", "LT03_020_DEBRIEF_Main", "box_MultipleOR_9.Out", "box_OverrideEnvironment_v3_7.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_AlternateInventoryModifier_v2_2_Switched()
    local l0, l1;
    l0 = self.box_AlternateInventoryModifier_v2_2;
    l1 = self.box_CIN_LT03_030_DEBRIEF_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1513223745", "1513223745", "LT03_020_DEBRIEF_Main", "box_AlternateInventoryModifier_v2_2.Switched", "box_CIN_LT03_030_DEBRIEF_10.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_VisibilityModifier_36_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_17();
    l0 = self.box_VisibilityModifier_36;
    l1 = self.box_PhysicsModifier_17;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1891313212", "1891313212", "LT03_020_DEBRIEF_Main", "box_VisibilityModifier_36.Disabled", "box_PhysicsModifier_17.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_MultipleAND_v2_44_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_MultipleAND_v2_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|126560602", "126560602", "LT03_020_DEBRIEF_Main", "box_MultipleAND_v2_44.Out", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_StartCelebration_11_Ended()
    local params, l0, l1;
    params = self:OnEnter_box_Lib_Bliss_InputHudOverrides_4();
    l0 = self.box_StartCelebration_11;
    l1 = self.box_Lib_Bliss_InputHudOverrides_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|566421828", "566421828", "LT03_020_DEBRIEF_Main", "box_StartCelebration_11.Ended", "box_Lib_Bliss_InputHudOverrides_4.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_30_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_39();
    l0 = self.box_VisibilityModifier_30;
    l1 = self.box_PhysicsModifier_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|48786414", "48786414", "LT03_020_DEBRIEF_Main", "box_VisibilityModifier_30.Disabled", "box_PhysicsModifier_39.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_AgentGroupModifier_26_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_28();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|166126929", "166126929", "LT03_020_DEBRIEF_Main", "box_AgentGroupModifier_26.Out", "box_OutputOrder_v2_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_35();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1359916756", "1359916756", "LT03_020_DEBRIEF_Main", "box_OutputOrder_v2_28.Out", "box_SetContextualStrategy_35.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_28_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetContextualStrategy_43();
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2001196473", "2001196473", "LT03_020_DEBRIEF_Main", "box_OutputOrder_v2_28.Out", "box_SetContextualStrategy_43.SetContextualStrategy", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetContextualStrategy
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostFx_v3_45_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PostFx_v3_18();
    l0 = self.box_PostFx_v3_45;
    l1 = self.box_PostFx_v3_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2002368994", "2002368994", "LT03_020_DEBRIEF_Main", "box_PostFx_v3_45.Disabled", "box_PostFx_v3_18.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_PhysicsModifier_37_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_29();
    l0 = self.box_PhysicsModifier_37;
    l1 = self.box_VisibilityModifier_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|478511572", "478511572", "LT03_020_DEBRIEF_Main", "box_PhysicsModifier_37.Disabled", "box_VisibilityModifier_29.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_VisibilityModifier_29_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_22();
    l0 = self.box_VisibilityModifier_29;
    l1 = self.box_PhysicsModifier_22;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1612079885", "1612079885", "LT03_020_DEBRIEF_Main", "box_VisibilityModifier_29.Disabled", "box_PhysicsModifier_22.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_PhysicsModifier_33_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_36();
    l0 = self.box_PhysicsModifier_33;
    l1 = self.box_VisibilityModifier_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1945740512", "1945740512", "LT03_020_DEBRIEF_Main", "box_PhysicsModifier_33.Disabled", "box_VisibilityModifier_36.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_SetContextualStrategy_43_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_44();
    l0 = self.box_MultipleAND_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1058757837", "1058757837", "LT03_020_DEBRIEF_Main", "box_SetContextualStrategy_43.Out", "box_MultipleAND_v2_44.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_CHEAT_SetEnvironmentTimeScale_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GodMode_v3_16();
    l0 = self.box_CHEAT_SetEnvironmentTimeScale_13;
    l1 = self.box_GodMode_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|726084672", "726084672", "LT03_020_DEBRIEF_Main", "box_CHEAT_SetEnvironmentTimeScale_13.Out", "box_GodMode_v3_16.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_ActivityAcknowledgeGate_6_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1062924162", "1062924162", "LT03_020_DEBRIEF_Main", "box_ActivityAcknowledgeGate_6.Acknowledged", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_6_Reloaded()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_6;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|441439606", "441439606", "LT03_020_DEBRIEF_Main", "box_ActivityAcknowledgeGate_6.Reloaded", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_SetContextualStrategy_35_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_44();
    l0 = self.box_MultipleAND_v2_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|888735865", "888735865", "LT03_020_DEBRIEF_Main", "box_SetContextualStrategy_35.Out", "box_MultipleAND_v2_44.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_EntityStatusListener_41_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_25();
    l0 = self.box_EntityStatusListener_41;
    l1 = self.box_VisibilityModifier_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|243090760", "243090760", "LT03_020_DEBRIEF_Main", "box_EntityStatusListener_41.Disabled", "box_VisibilityModifier_25.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_EntityStatusListener_41_Loaded()
    local params, l0;
    params = self:OnEnter_box_EntityStatusListener_41();
    l0 = self.box_EntityStatusListener_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1003455682", "1003455682", "LT03_020_DEBRIEF_Main", "box_EntityStatusListener_41.Loaded", "box_EntityStatusListener_41.Disable", l0:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OverrideEnvironment_v3_19_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetTimeOfDay_12();
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|406716267", "406716267", "LT03_020_DEBRIEF_Main", "box_OverrideEnvironment_v3_19.Disabled", "box_SetTimeOfDay_12.SetTimeOfDay", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetTimeOfDay
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_NarrativeSceneSetup_15_Holstered()
    local params, l0, l1;
    params = self:OnEnter_box_GetMissionLayerState_v2_27();
    l0 = self.box_NarrativeSceneSetup_15;
    l1 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1563368969", "1563368969", "LT03_020_DEBRIEF_Main", "box_NarrativeSceneSetup_15.Holstered", "box_GetMissionLayerState_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GunsForHireSystemModifier_14_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = self.box_GunsForHireSystemModifier_14;
    l1 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2049556649", "2049556649", "LT03_020_DEBRIEF_Main", "box_GunsForHireSystemModifier_14.Enabled", "box_ActivityEnd_5.EndHardSave", l0:GetLuaBox(), l1:GetLuaBox());
    -- EndHardSave
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_20_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_31();
    l0 = self.box_VisibilityModifier_20;
    l1 = self.box_PhysicsModifier_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1302131886", "1302131886", "LT03_020_DEBRIEF_Main", "box_VisibilityModifier_20.Disabled", "box_PhysicsModifier_31.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_23_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_24();
    l0 = self.box_EntityStatusListener_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2136614671", "2136614671", "LT03_020_DEBRIEF_Main", "box_OutputOrder_v2_23.Out", "box_EntityStatusListener_24.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_23_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1638737520", "1638737520", "LT03_020_DEBRIEF_Main", "box_OutputOrder_v2_23.Out", "box_MissionBlockLayer_32.Deactivate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Deactivate
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_21_Disabled()
    local params, l0, l1;
    params = self:OnEnter_box_PhysicsModifier_37();
    l0 = self.box_VisibilityModifier_21;
    l1 = self.box_PhysicsModifier_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|200219241", "200219241", "LT03_020_DEBRIEF_Main", "box_VisibilityModifier_21.Disabled", "box_PhysicsModifier_37.SetDisabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDisabled
    l1:Exec(0, params);
end;

function export:OnEnter_box_PhysicsModifier_22()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1568CD26",
    };
    return params;
end;

function export:OnEnter_box_GodMode_v3_16()
    local params;
    params = {
        -- disableAfterBeat,
        [0] = true,
        -- Mode,
        [1] = 1,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_24()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104242901931284255",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_38()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103898925718070505",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_25()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#5C4183B5",
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|371669345");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_18()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "cinematicfade60frameswhite",
    };
    return params;
end;

function export:OnEnter_box_Lib_Bliss_InputHudOverrides_4()
    local params;
    params = {
        -- jump,
        [0] = "jump",
        -- short_range_melee_start,
        [1] = "short_range_melee_start",
        -- ShowCompass,
        [2] = true,
        -- sprint,
        [3] = "sprint",
        -- toggle_no_weapon,
        [4] = "toggle_no_weapon",
        -- updateshooting,
        [5] = "updateshooting",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|670052114");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_32_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160232690127479",
        -- missionLayerId,
        [1] = "45174631199609473",
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_40()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_17()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3C860A50",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_31()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#A58F5BEA",
    };
    return params;
end;

function export:OnEnter_box_SetTimeOfDay_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetTimeOfDay.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetTimeOfDay_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|874204971");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetTimeOfDay_12_Out,
    });
    params = {
        -- Hour,
        [0] = 23,
        -- Minute,
        [1] = 55,
    };
    return params;
end;

function export:OnEnter_box_GetMissionLayerState_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetMissionLayerState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetMissionLayerState_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|938835369");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_GetMissionLayerState_v2_27_Enabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160232690127479",
        -- missionBlockLayerId,
        [1] = "27160246369576261",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_34()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2103898928417105133",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1079992766");
    l0:SetConnections({
        -- Deactivated,
        [1] = self.f_box_MissionBlockLayer_42_Deactivated,
    });
    params = {
        -- missionBlockId,
        [0] = "27160232690127479",
        -- missionLayerId,
        [1] = "27160246369576261",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1095343575");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_OverrideEnvironment_v3_7_Disabled,
    });
    params = {
        -- fog,
        [6] = "FCZ_Default:Unique_Fogs.Bliss_CanoeOne",
        -- ratio,
        [9] = 1,
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1110130713");
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
                [0] = self.f_box_OutputOrder_v2_3_Out_0,
                [1] = self.f_box_OutputOrder_v2_3_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_AlternateInventoryModifier_v2_2()
    local params;
    params = {
        -- clearAfterSwitch,
        [0] = false,
        -- players,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_36()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3C860A50",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_44()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_39()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104242901931284255",
    };
    return params;
end;

function export:OnEnter_box_StartCelebration_11()
    local params;
    params = {
        -- Preset,
        [0] = "9015290749551665",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_30()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "2104242901931284255",
    };
    return params;
end;

function export:OnEnter_box_AgentGroupModifier_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/AgentGroupModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_AgentGroupModifier_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1585669738");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_AgentGroupModifier_26_Out,
    });
    params = {
        -- AnimalGroup,
        [0] = "#A8D86C48",
        -- PawnGroup,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1617895338");
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
                [0] = self.f_box_OutputOrder_v2_28_Out_0,
                [1] = self.f_box_OutputOrder_v2_28_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VisionModeModifier_v2_8()
    local params;
    params = {
        -- intoxicationAmount,
        [0] = 10,
        -- players,
        [1] = "#ED455357",
        -- useAsPercent,
        [2] = false,
    };
    return params;
end;

function export:OnEnter_box_PostFx_v3_45()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- PostFxName,
        [1] = "fadetowhite",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_37()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3BEBCE49",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_29()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#1568CD26",
    };
    return params;
end;

function export:OnEnter_box_PhysicsModifier_33()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#5C4183B5",
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_43()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_43");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1726402260");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_43_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103898928417105133",
        -- Group,
        [1] = "#A8D86C48",
    };
    return params;
end;

function export:OnEnter_box_CHEAT_SetEnvironmentTimeScale_13()
    local params;
    params = {
        -- timeScale,
        [0] = 1,
    };
    return params;
end;

function export:OnEnter_box_SetContextualStrategy_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/SetContextualStrategy.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetContextualStrategy_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1812451257");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetContextualStrategy_35_Out,
    });
    params = {
        -- ContextualStrategy,
        [0] = "2103898925718070505",
        -- Group,
        [1] = "#684E14C7",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_41()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104242901924992793",
    };
    return params;
end;

function export:OnEnter_box_OverrideEnvironment_v3_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OverrideEnvironment_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OverrideEnvironment_v3_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|1965706675");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_OverrideEnvironment_v3_19_Disabled,
    });
    params = {
        -- ratio,
        [9] = 1,
        -- sky,
        [11] = "FCZ_Special:Bliss.Bliss_Sky",
        -- transitionTime,
        [13] = 0,
    };
    return params;
end;

function export:OnEnter_box_NarrativeSceneSetup_15()
    local params;
    params = {
        -- Enable_Blackbars,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_14()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_20()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#A58F5BEA",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT03\\LT03_020\\LT03_020_DEBRIEF.domino|@LT03_020_DEBRIEF_Main|2056614734");
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

function export:OnEnter_box_VisibilityModifier_21()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#3BEBCE49",
    };
    return params;
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
