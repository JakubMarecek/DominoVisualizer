LUACx�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/bowmore_main/bowmore_activities/act2/mis_230/mis_230_b30.domino
-- User graph: MIS_230_B30_graph
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityInitialized.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/UnlimitedAmmo_v2.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/GFHSystemModifier.lua");
        cboxRes:RegisterBox("Domino/System/HealthModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/ExtinguishFireWithinRange.lua");
        cboxRes:RegisterBox("Domino/System/Player/GetLocalPlayer_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_BearIllusion.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_Reloaded.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SetTimeOfDay.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SwitchAmmoType.debug.lua");
        cboxRes:RegisterBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B30.MIS_230_B30_Bonfires.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[2929711495.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1208466061.bnk]], "CSoundResource");
        cboxRes:LoadResource([[1666472216.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B30.MIS_230_B30_graph.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "PlayDialog",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "FinishedOrInterrupted",
                delayed = false,
            },
            [1] = {
                name = "Started",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "RelevancyTime",
                type = "float",
            },
            [2] = {
                name = "ReplayIfInterrupted",
                type = "bool",
            },
            [3] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 4,
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
    metadataTable[GetPathID("Domino/System/Coop/AllPlayers/UnlimitedAmmo_v2.lua")] = {
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
    metadataTable[GetPathID("Domino/System/GetPlayerGroup_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "EnemyPlayers",
            },
            [1] = {
                name = "FriendlyPlayers",
            },
            [2] = {
                name = "In",
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
            [0] = {
                name = "PlayerGroup",
                type = "group",
            },
        },
        dataOutCount = 1,
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
            [1] = {
                name = "immediateDespawn",
                type = "bool",
            },
        },
        dataInCount = 2,
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
    metadataTable[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "Extinguish",
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
                name = "players",
                type = "group",
            },
            [1] = {
                name = "Range",
                type = "float",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_BearIllusion.debug.lua")] = {
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
                name = "BearKilled",
                delayed = false,
            },
            [1] = {
                name = "Finished",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "InitialSpawnDelay",
                type = "float",
            },
            [1] = {
                name = "MaxDistanceSpawn",
                type = "float",
            },
            [2] = {
                name = "MinDistanceSpawn",
                type = "float",
            },
            [3] = {
                name = "RespawnDelay",
                type = "float",
            },
            [4] = {
                name = "TimeToParticle",
                type = "float",
            },
        },
        dataInCount = 5,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_Reloaded.debug.lua")] = {
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
                name = "isDay",
                type = "bool",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SetTimeOfDay.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "SetDay",
            },
            [1] = {
                name = "SetNight",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
            [1] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Minute_Increment",
                type = "int",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SwitchAmmoType.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Fire",
            },
            [1] = {
                name = "Normal",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "out",
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
    metadataTable[GetPathID("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B30.MIS_230_B30_Bonfires.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Start",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = false,
            },
        },
        controlOutCount = 1,
        dataIn = {
            [0] = {
                name = "BoneFire_GRP",
                type = "group",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "MIS_230_B30_graph";
    self._elementPathId = "DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph";
    self.ePlayer = nil;
    self.gPlayers = nil;
    self.box_MIS_230_COMMON_BearIllusion_25 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_BearIllusion.debug.lua");
    l0 = self.box_MIS_230_COMMON_BearIllusion_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_BearIllusion_25");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|177302686");
    l0:SetConnections({
    });
    self.box_UnlimitedAmmo_v2_12 = cbox:CreateBox("Domino/System/Coop/AllPlayers/UnlimitedAmmo_v2.lua");
    l0 = self.box_UnlimitedAmmo_v2_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_UnlimitedAmmo_v2_12");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|178222377");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_UnlimitedAmmo_v2_12_Enabled,
    });
    self.box_Custom_PlayDialog_34 = cbox:CreateBox("Domino/Library/Sp/Lib_Custom_Bowmore.Custom_PlayDialog.debug.lua");
    l0 = self.box_Custom_PlayDialog_34;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_PlayDialog_34");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|424529460");
    l0:SetConnections({
        -- FinishedOrInterrupted,
        [0] = self.f_box_Custom_PlayDialog_34_FinishedOrInterrupted,
        -- Started,
        [1] = self.f_box_Custom_PlayDialog_34_Started,
    });
    self.box_MIS_230_COMMON_SetTimeOfDay_10 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SetTimeOfDay.debug.lua");
    l0 = self.box_MIS_230_COMMON_SetTimeOfDay_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_SetTimeOfDay_10");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|450789766");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_230_COMMON_SetTimeOfDay_10_Finished,
    });
    self.box_MIS_230_COMMON_SwitchAmmoType_16 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SwitchAmmoType.debug.lua");
    l0 = self.box_MIS_230_COMMON_SwitchAmmoType_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_SwitchAmmoType_16");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1014419677");
    l0:SetConnections({
        -- out,
        [0] = self.f_box_MIS_230_COMMON_SwitchAmmoType_16_out,
    });
    self.box_GunsForHireSystemModifier_22 = cbox:CreateBox("Domino/System/GFHSystemModifier.lua");
    l0 = self.box_GunsForHireSystemModifier_22;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GunsForHireSystemModifier_22");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1026283524");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_GunsForHireSystemModifier_22_Disabled,
    });
    self.box_Music_Quest_v2_11 = cbox:CreateBox("Domino/Library/Sp/Lib_Music.Music_Quest_v2.debug.lua");
    l0 = self.box_Music_Quest_v2_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Music_Quest_v2_11");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1066281208");
    l0:SetConnections({
    });
    self.box_ActivityAcknowledgeGate_7 = cbox:CreateBox("Domino/System/Activity/ActivityAcknowledgeGate.lua");
    l0 = self.box_ActivityAcknowledgeGate_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityAcknowledgeGate_7");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1172314231");
    l0:SetConnections({
        -- Acknowledged,
        [0] = self.f_box_ActivityAcknowledgeGate_7_Acknowledged,
        -- Reloaded,
        [1] = self.f_box_ActivityAcknowledgeGate_7_Reloaded,
    });
    self.box_Delay_v5_17 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_17;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_17");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1291344304");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_17_TimeElapsed,
    });
    self.box_Delay_v5_8 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_8");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1403243233");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_8_TimeElapsed,
    });
    self.box_MIS_230_COMMON_SwitchAmmoType_1 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_SwitchAmmoType.debug.lua");
    l0 = self.box_MIS_230_COMMON_SwitchAmmoType_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_SwitchAmmoType_1");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1496527244");
    l0:SetConnections({
        -- out,
        [0] = self.f_box_MIS_230_COMMON_SwitchAmmoType_1_out,
    });
    self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_6");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1589211769");
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
    self.box_Delay_v5_30 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_30");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1796936038");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_30_TimeElapsed,
    });
    self.box_Delay_v5_9 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_9");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1797176791");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_9_TimeElapsed,
    });
    self.box_ActivityInitialized_4 = cbox:CreateBox("Domino/System/Activity/ActivityInitialized.lua");
    l0 = self.box_ActivityInitialized_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityInitialized_4");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|2027486618");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_ActivityInitialized_4_Out,
    });
    self.box_MIS_230_B30_Bonfires_21 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B30.MIS_230_B30_Bonfires.debug.lua");
    l0 = self.box_MIS_230_B30_Bonfires_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_B30_Bonfires_21");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|2134755693");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_MIS_230_B30_Bonfires_21_Finished,
    });
    self.box_MIS_230_COMMON_Reloaded_14 = cbox:CreateBox("Domino/user/Bowmore_main/Bowmore_Activities/ACT2/MIS_230/MIS_230_B25.MIS_230_COMMON_Reloaded.debug.lua");
    l0 = self.box_MIS_230_COMMON_Reloaded_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MIS_230_COMMON_Reloaded_14");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|2143065221");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_MIS_230_COMMON_Reloaded_14_Out,
    });
end;

function export:In()
    local l0;
    l0 = self.box_ActivityAcknowledgeGate_7;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|27345798", "27345798", "MIS_230_B30_graph", "In", "box_ActivityAcknowledgeGate_7.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_Simple_Node_18_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_8();
    l0 = self.box_Delay_v5_8;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|815976528", "815976528", "MIS_230_B30_graph", "box_Simple_Node_18.Out", "box_Delay_v5_8.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Delay_v5_30();
    l0 = self.box_Delay_v5_30;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1307426477", "1307426477", "MIS_230_B30_graph", "box_Simple_Node_18.Out", "box_Delay_v5_30.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
    params = self:OnEnter_box_Music_Quest_v2_11();
    l0 = self.box_Music_Quest_v2_11;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|2104043415", "2104043415", "MIS_230_B30_graph", "box_Simple_Node_18.Out", "box_Music_Quest_v2_11.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(1, params);
end;

function export:f_box_UnlimitedAmmo_v2_12_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_18();
    l0 = self.box_UnlimitedAmmo_v2_12;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|50591140", "50591140", "MIS_230_B30_graph", "box_UnlimitedAmmo_v2_12.Enabled", "box_Simple_Node_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_PlayDialog_34_FinishedOrInterrupted()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_COMMON_BearIllusion_25();
    l0 = self.box_Custom_PlayDialog_34;
    l1 = self.box_MIS_230_COMMON_BearIllusion_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1212093953", "1212093953", "MIS_230_B30_graph", "box_Custom_PlayDialog_34.FinishedOrInterrupted", "box_MIS_230_COMMON_BearIllusion_25.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Custom_PlayDialog_34_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_17();
    l0 = self.box_Custom_PlayDialog_34;
    l1 = self.box_Delay_v5_17;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|2029222160", "2029222160", "MIS_230_B30_graph", "box_Custom_PlayDialog_34.Started", "box_Delay_v5_17.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MIS_230_COMMON_SetTimeOfDay_10_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_HealthModifier_v2_32();
    l0 = self.box_MIS_230_COMMON_SetTimeOfDay_10;
    l1 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|486710376", "486710376", "MIS_230_B30_graph", "box_MIS_230_COMMON_SetTimeOfDay_10.Finished", "box_HealthModifier_v2_32.Damage", l0:GetLuaBox(), l1:GetLuaBox());
    -- Damage
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_26_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MIS_230_COMMON_BearIllusion_25();
    l0 = self.box_MIS_230_COMMON_BearIllusion_25;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|127973910", "127973910", "MIS_230_B30_graph", "box_OutputOrder_v2_26.Out", "box_MIS_230_COMMON_BearIllusion_25.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_26_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Delay_v5_9();
    l0 = self.box_Delay_v5_9;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|854057422", "854057422", "MIS_230_B30_graph", "box_OutputOrder_v2_26.Out", "box_Delay_v5_9.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(2, params);
end;

function export:f_box_HealthModifier_v2_32_Damaged()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_5();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|135506598", "135506598", "MIS_230_B30_graph", "box_HealthModifier_v2_32.Damaged", "box_ActivityEnd_5.EndSoftSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndSoftSave
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MIS_230_COMMON_SwitchAmmoType_16_out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_COMMON_SetTimeOfDay_10();
    l0 = self.box_MIS_230_COMMON_SwitchAmmoType_16;
    l1 = self.box_MIS_230_COMMON_SetTimeOfDay_10;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1447707992", "1447707992", "MIS_230_B30_graph", "box_MIS_230_COMMON_SwitchAmmoType_16.out", "box_MIS_230_COMMON_SetTimeOfDay_10.SetDay", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetDay
    l1:Exec(0, params);
end;

function export:f_box_GunsForHireSystemModifier_22_Disabled()
    local l0, l1;
    l0 = self.box_GunsForHireSystemModifier_22;
    l1 = self.box_UnlimitedAmmo_v2_12;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|566612901", "566612901", "MIS_230_B30_graph", "box_GunsForHireSystemModifier_22.Disabled", "box_UnlimitedAmmo_v2_12.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_ActivityAcknowledgeGate_7_Acknowledged()
    local l0, l1;
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1895403556", "1895403556", "MIS_230_B30_graph", "box_ActivityAcknowledgeGate_7.Acknowledged", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ActivityAcknowledgeGate_7_Reloaded()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_COMMON_Reloaded_14();
    l0 = self.box_ActivityAcknowledgeGate_7;
    l1 = self.box_MIS_230_COMMON_Reloaded_14;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|87247157", "87247157", "MIS_230_B30_graph", "box_ActivityAcknowledgeGate_7.Reloaded", "box_MIS_230_COMMON_Reloaded_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_Delay_v5_17_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_17;
    l1 = self.box_MIS_230_COMMON_SwitchAmmoType_1;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|212005718", "212005718", "MIS_230_B30_graph", "box_Delay_v5_17.TimeElapsed", "box_MIS_230_COMMON_SwitchAmmoType_1.Fire", l0:GetLuaBox(), l1:GetLuaBox());
    -- Fire
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_8_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_PlayDialog_34();
    l0 = self.box_Delay_v5_8;
    l1 = self.box_Custom_PlayDialog_34;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|260574954", "260574954", "MIS_230_B30_graph", "box_Delay_v5_8.TimeElapsed", "box_Custom_PlayDialog_34.PlayDialog", l0:GetLuaBox(), l1:GetLuaBox());
    -- PlayDialog
    l1:Exec(0, params);
end;

function export:f_box_MIS_230_COMMON_SwitchAmmoType_1_out()
    local params, l0, l1;
    params = self:OnEnter_box_MIS_230_B30_Bonfires_21();
    l0 = self.box_MIS_230_COMMON_SwitchAmmoType_1;
    l1 = self.box_MIS_230_B30_Bonfires_21;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1072586458", "1072586458", "MIS_230_B30_graph", "box_MIS_230_COMMON_SwitchAmmoType_1.out", "box_MIS_230_B30_Bonfires_21.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_3_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetLocalPlayer_v2_2();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|340058104", "340058104", "MIS_230_B30_graph", "box_GetPlayerGroup_v2_3.Out", "box_GetLocalPlayer_v2_2.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_6_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_6;
    l1 = self.box_ActivityInitialized_4;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|37161865", "37161865", "MIS_230_B30_graph", "box_MultipleOR_6.Out", "box_ActivityInitialized_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, {
    });
end;

function export:f_box_Delay_v5_30_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_ExtinguishFireWithinRange_15();
    l0 = self.box_Delay_v5_30;
    l1 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1629659398", "1629659398", "MIS_230_B30_graph", "box_Delay_v5_30.TimeElapsed", "box_ExtinguishFireWithinRange_15.Extinguish", l0:GetLuaBox(), l1:GetLuaBox());
    -- Extinguish
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Delay_v5_9_TimeElapsed()
    local l0, l1;
    l0 = self.box_Delay_v5_9;
    l1 = self.box_MIS_230_COMMON_SwitchAmmoType_16;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1648993499", "1648993499", "MIS_230_B30_graph", "box_Delay_v5_9.TimeElapsed", "box_MIS_230_COMMON_SwitchAmmoType_16.Normal", l0:GetLuaBox(), l1:GetLuaBox());
    -- Normal
    l1:Exec(1, {
    });
end;

function export:f_box_ActivityInitialized_4_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetPlayerGroup_v2_3();
    l0 = self.box_ActivityInitialized_4;
    l1 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1272907986", "1272907986", "MIS_230_B30_graph", "box_ActivityInitialized_4.Out", "box_GetPlayerGroup_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(2, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetLocalPlayer_v2_2_Out()
    local params, l0;
    self:OnExit_box_GetLocalPlayer_v2_2_Out();
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GunsForHireSystemModifier_22();
    l0 = self.box_GunsForHireSystemModifier_22;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|88830582", "88830582", "MIS_230_B30_graph", "box_GetLocalPlayer_v2_2.Out", "box_GunsForHireSystemModifier_22.DisableGFHSystem", clone:GetLuaBox(), l0:GetLuaBox());
    -- DisableGFHSystem
    l0:Exec(0, params);
end;

function export:f_box_MIS_230_B30_Bonfires_21_Finished()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_26();
    l0 = self.box_MIS_230_B30_Bonfires_21;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1643034903", "1643034903", "MIS_230_B30_graph", "box_MIS_230_B30_Bonfires_21.Finished", "box_OutputOrder_v2_26.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MIS_230_COMMON_Reloaded_14_Out()
    local l0, l1;
    l0 = self.box_MIS_230_COMMON_Reloaded_14;
    l1 = self.box_MultipleOR_6;
    TraceConnection("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|894614601", "894614601", "MIS_230_B30_graph", "box_MIS_230_COMMON_Reloaded_14.Out", "box_MultipleOR_6.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:OnEnter_box_Simple_Node_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_18");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|@beat_start");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_18_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_5()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_5");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1857524");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_BearIllusion_25()
    local params;
    params = {
        -- InitialSpawnDelay,
        [0] = 2,
        -- MaxDistanceSpawn,
        [1] = 25,
        -- MinDistanceSpawn,
        [2] = 10,
        -- RespawnDelay,
        [3] = 1.5,
        -- TimeToParticle,
        [4] = 0,
    };
    return params;
end;

function export:OnEnter_box_Custom_PlayDialog_34()
    local params;
    params = {
        -- Group,
        [0] = self.gPlayers,
        -- RelevancyTime,
        [1] = 15,
        -- ReplayIfInterrupted,
        [2] = true,
        -- SoundId,
        [3] = "2929711495",
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_SetTimeOfDay_10()
    local params;
    params = {
        -- Minute_Increment,
        [0] = 8,
    };
    return params;
end;

function export:OnEnter_box_ExtinguishFireWithinRange_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/ExtinguishFireWithinRange.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ExtinguishFireWithinRange_15");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|521925861");
    l0:SetConnections({
    });
    params = {
        -- players,
        [0] = "#ED455357",
        -- Range,
        [1] = 50,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_26");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|551572552");
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
                [0] = self.f_box_OutputOrder_v2_26_Out_0,
                [1] = self.f_box_OutputOrder_v2_26_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_HealthModifier_v2_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/HealthModifier_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_HealthModifier_v2_32");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|904780791");
    l0:SetConnections({
        -- Damaged,
        [0] = self.f_box_HealthModifier_v2_32_Damaged,
    });
    params = {
        -- damageWithStim,
        [0] = 0,
        -- pawns,
        [2] = "#FDF68E27",
        -- value,
        [3] = 100000,
    };
    return params;
end;

function export:OnEnter_box_GunsForHireSystemModifier_22()
    local params;
    params = {
        -- enableAfterBeat,
        [0] = false,
        -- immediateDespawn,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_Music_Quest_v2_11()
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
        [6] = "1666472216",
        -- StopEvent,
        [7] = "1208466061",
        -- StopFadeOut,
        [8] = 0.5,
        -- WaitUntilMusicEndMarker,
        [9] = false,
        -- WaitUntilNotInVehicle,
        [10] = true,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_17()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
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

function export:OnEnter_box_GetPlayerGroup_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_3");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|1499867798");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_3_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_30()
    local params;
    params = {
        -- loop,
        [0] = true,
        -- seconds,
        [2] = 0.5,
    };
    return params;
end;

function export:OnEnter_box_Delay_v5_9()
    local params;
    params = {
        -- loop,
        [0] = false,
        -- seconds,
        [2] = 1,
    };
    return params;
end;

function export:OnEnter_box_GetLocalPlayer_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetLocalPlayer_v2_2");
    l0:SetElementPathId("DocumentContainer|Bowmore_main\\Bowmore_Activities\\ACT2\\MIS_230\\MIS_230_B30.domino|@MIS_230_B30_graph|2127025448");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetLocalPlayer_v2_2_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MIS_230_B30_Bonfires_21()
    local params;
    params = {
        -- BoneFire_GRP,
        [0] = "#1218346D",
    };
    return params;
end;

function export:OnEnter_box_MIS_230_COMMON_Reloaded_14()
    local params;
    params = {
        -- isDay,
        [0] = false,
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetLocalPlayer_v2_2_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Player/GetLocalPlayer_v2.lua")];
    self.ePlayer = l0:GetDataOutValue(0);
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
