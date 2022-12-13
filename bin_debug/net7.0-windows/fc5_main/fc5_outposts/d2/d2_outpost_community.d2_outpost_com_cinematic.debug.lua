LUAC� -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_outposts/d2/d2_outpost_community.domino
-- User graph: D2_Outpost_Com_Cinematic
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/BroadcastMessage.lua");
        cboxRes:RegisterBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/ForceExitVehicle_v2.lua");
        cboxRes:RegisterBox("Domino/System/MissionBlockLayer.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/PostWWiseEventSetState.lua");
        cboxRes:RegisterBox("Domino/System/RadioModifier_v3.lua");
        cboxRes:RegisterBox("Domino/System/RemoveEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SoundMusicTrigger.lua");
        cboxRes:RegisterBox("Domino/System/SoundPointModifier.lua");
        cboxRes:RegisterBox("Domino/System/VehicleListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/VisibilityModifier.lua");
        cboxRes:RegisterBox("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_Community.Custom_Cinematic_Brick.debug.lua");
        
        -- Load resources
        cboxRes:LoadResource([[236193250.bnk]], "CSoundResource");
        cboxRes:LoadResource([[2102059229.bnk]], "CSoundResource");
        cboxRes:LoadResource([[3370378143.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_Community.D2_Outpost_Com_Cinematic.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "NotInVehicle",
                delayed = false,
            },
            [1] = {
                name = "OneVehicle",
                delayed = false,
            },
            [2] = {
                name = "TwoVehicles",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Vehicle1",
                type = "entity",
            },
            [1] = {
                name = "Vehicle2",
                type = "entity",
            },
        },
        dataOutCount = 2,
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
    metadataTable[GetPathID("Domino/System/BroadcastMessage.lua")] = {
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
                name = "Message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/ForceExitVehicle_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "ForceExit",
            },
            [1] = {
                name = "TryExit",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "ForceExitted",
                delayed = false,
            },
            [1] = {
                name = "TryExitted",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "noFail",
                type = "bool",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
            [2] = {
                name = "vehicle",
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
    metadataTable[GetPathID("Domino/System/RadioModifier_v3.lua")] = {
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
                name = "Enable",
                type = "bool",
            },
            [1] = {
                name = "ImmediateOverride",
                type = "bool",
            },
            [2] = {
                name = "LockOnOff",
                type = "bool",
            },
            [3] = {
                name = "LockStationSwitching",
                type = "bool",
            },
            [4] = {
                name = "StationOverride",
                type = "genericdb",
            },
            [5] = {
                name = "TargetRadio",
                type = "entity",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
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
    metadataTable[GetPathID("Domino/System/SoundPointModifier.lua")] = {
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
                name = "Started",
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
                name = "soundPoint",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/VehicleListener_v3.lua")] = {
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
                name = "OnAllSitting",
                delayed = true,
            },
            [3] = {
                name = "OnAllStanding",
                delayed = true,
            },
            [4] = {
                name = "OnChangeSeat",
                delayed = true,
            },
            [5] = {
                name = "OnInteract",
                delayed = true,
            },
            [6] = {
                name = "OnSit",
                delayed = true,
            },
            [7] = {
                name = "OnStandUp",
                delayed = true,
            },
        },
        controlOutCount = 8,
        dataIn = {
            [0] = {
                name = "archetypeId",
                type = "archetype",
            },
            [1] = {
                name = "autoDisable",
                type = "bool",
            },
            [2] = {
                name = "pawns",
                type = "group",
            },
            [3] = {
                name = "SeatType",
                type = "int",
            },
            [4] = {
                name = "vehicle",
                type = "entity",
            },
            [5] = {
                name = "vehicleTypeFilter",
                type = "int",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "activePawn",
                type = "entity",
            },
        },
        dataOutCount = 1,
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
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_Community.Custom_Cinematic_Brick.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Out_Cin1",
                delayed = false,
            },
            [1] = {
                name = "Out_Cin2",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bUseFadeInAtEnd",
                type = "bool",
            },
            [1] = {
                name = "CS_CINEMA_Outpost_Animals",
                type = "entity",
            },
            [2] = {
                name = "TeleportDestination",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
        },
        dataOutCount = 0,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "D2_Outpost_Com_Cinematic";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic";
    self.eFallsEndSpawnPoint = nil;
    self.bPlaneMissionActive = false;
    self.ePlayer = nil;
    self.eVehicle = nil;
    self.MetaSequenceID = 0;
    self.e_PlayerVehicle = nil;
    self.box_VisibilityModifier_42 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_42;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|5400203");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_42_Enabled,
    });
    self.box_RemoveEntity_v2_13 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|246325879");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_13_Out,
    });
    self.box_MultipleAND_v2_29 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_29;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|327658749");
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
        [0] = self.f_box_MultipleAND_v2_29_Out,
    });
    self.box_PostWWiseEventSetState_30 = cbox:CreateBox("Domino/System/PostWWiseEventSetState.lua");
    l0 = self.box_PostWWiseEventSetState_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_PostWWiseEventSetState_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|374164769");
    l0:SetConnections({
        -- Set,
        [0] = self.f_box_PostWWiseEventSetState_30_Set,
    });
    self.box_VisibilityModifier_41 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_41;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|611553368");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_41_Enabled,
    });
    self.box_SoundMusicTriggerBox_7 = cbox:CreateBox("Domino/System/SoundMusicTrigger.lua");
    l0 = self.box_SoundMusicTriggerBox_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundMusicTriggerBox_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|840403135");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundMusicTriggerBox_7_Started,
    });
    self.box_Custom_Cinematic_Brick_5 = cbox:CreateBox("Domino/user/FC5_main/FC5_Outposts/D2/D2_Outpost_Community.Custom_Cinematic_Brick.debug.lua");
    l0 = self.box_Custom_Cinematic_Brick_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Custom_Cinematic_Brick_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|907046365");
    l0:SetConnections({
        -- Out_Cin1,
        [0] = self.f_box_Custom_Cinematic_Brick_5_Out_Cin1,
        -- Out_Cin2,
        [1] = self.f_box_Custom_Cinematic_Brick_5_Out_Cin2,
    });
    self.box_RemoveEntity_v2_14 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1197776043");
    l0:SetConnections({
    });
    self.box_VehicleListener_v3_3 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1257066722");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_3_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_3_OnStandUp,
    });
    self.box_GetPlayersVehicleID_28 = cbox:CreateBox("Domino/Library/Sp/Lib_Common.GetPlayersVehicleID.debug.lua");
    l0 = self.box_GetPlayersVehicleID_28;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayersVehicleID_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1305073151");
    l0:SetConnections({
        -- NotInVehicle,
        [0] = self.f_box_GetPlayersVehicleID_28_NotInVehicle,
        -- OneVehicle,
        [1] = self.f_box_GetPlayersVehicleID_28_OneVehicle,
        -- TwoVehicles,
        [2] = self.f_box_GetPlayersVehicleID_28_TwoVehicles,
    });
    self.box_VehicleListener_v3_23 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1336838366");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_23_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_23_OnStandUp,
    });
    self.box_RemoveEntity_v2_6 = cbox:CreateBox("Domino/System/RemoveEntity_v2.lua");
    l0 = self.box_RemoveEntity_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RemoveEntity_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1337749910");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_RemoveEntity_v2_6_Out,
    });
    self.box_VehicleListener_v3_1 = cbox:CreateBox("Domino/System/VehicleListener_v3.lua");
    l0 = self.box_VehicleListener_v3_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VehicleListener_v3_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1837925927");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VehicleListener_v3_1_Enabled,
        -- OnStandUp,
        [7] = self.f_box_VehicleListener_v3_1_OnStandUp,
    });
    self.box_GodMode_v3_16 = cbox:CreateBox("Domino/System/Coop/AllPlayers/GodMode_v3.lua");
    l0 = self.box_GodMode_v3_16;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GodMode_v3_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1893723181");
    l0:SetConnections({
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1963933964");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_VisibilityModifier_44 = cbox:CreateBox("Domino/System/VisibilityModifier.lua");
    l0 = self.box_VisibilityModifier_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_VisibilityModifier_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|2071181411");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_VisibilityModifier_44_Enabled,
    });
    self.box_MultipleOR_19 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_19;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|2106567575");
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
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_8();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|386194470", "386194470", "D2_Outpost_Com_Cinematic", "In", "box_OutputOrder_v2_8.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VisibilityModifier_42_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_41();
    l0 = self.box_VisibilityModifier_42;
    l1 = self.box_VisibilityModifier_41;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1791642622", "1791642622", "D2_Outpost_Com_Cinematic", "box_VisibilityModifier_42.Enabled", "box_VisibilityModifier_41.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BroadcastMessage_25();
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1830052797", "1830052797", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_22.Out", "box_BroadcastMessage_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_11();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|407855555", "407855555", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_22.Out", "box_MissionBlockLayer_11.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_38();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|2053823229", "2053823229", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_22.Out", "box_ActivityEnd_38.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_RemoveEntity_v2_13_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_14();
    l0 = self.box_RemoveEntity_v2_13;
    l1 = self.box_RemoveEntity_v2_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1851723859", "1851723859", "D2_Outpost_Com_Cinematic", "box_RemoveEntity_v2_13.Out", "box_RemoveEntity_v2_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_15_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_12();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|767894684", "767894684", "D2_Outpost_Com_Cinematic", "box_MissionBlockLayer_15.Disabled", "box_MissionBlockLayer_12.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleAND_v2_29_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_29;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1486327950", "1486327950", "D2_Outpost_Com_Cinematic", "box_MultipleAND_v2_29.Out", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_OutputOrder_v2_18_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1433828171", "1433828171", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_18.Out", "box_MultipleOR_19.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_18_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_32();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|599436368", "599436368", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_18.Out", "box_MissionBlockLayer_32.Activate", clone:GetLuaBox(), l0:GetLuaBox());
    -- Activate
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_PostWWiseEventSetState_30_Set()
    local params, l0, l1;
    params = self:OnEnter_box_SoundMusicTriggerBox_7();
    l0 = self.box_PostWWiseEventSetState_30;
    l1 = self.box_SoundMusicTriggerBox_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1797097309", "1797097309", "D2_Outpost_Com_Cinematic", "box_PostWWiseEventSetState_30.Set", "box_SoundMusicTriggerBox_7.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
end;

function export:f_box_VisibilityModifier_41_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VisibilityModifier_44();
    l0 = self.box_VisibilityModifier_41;
    l1 = self.box_VisibilityModifier_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|708561687", "708561687", "D2_Outpost_Com_Cinematic", "box_VisibilityModifier_41.Enabled", "box_VisibilityModifier_44.SetEnabled", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetEnabled
    l1:Exec(1, params);
end;

function export:f_box_MissionBlockLayer_12_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_17();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1545755487", "1545755487", "D2_Outpost_Com_Cinematic", "box_MissionBlockLayer_12.Disabled", "box_MissionBlockLayer_17.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundMusicTriggerBox_7_Started()
    local params, l0, l1;
    params = self:OnEnter_box_SoundPointModifier_10();
    l0 = self.box_SoundMusicTriggerBox_7;
    l1 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|537151606", "537151606", "D2_Outpost_Com_Cinematic", "box_SoundMusicTriggerBox_7.Started", "box_SoundPointModifier_10.Stop", l0:GetLuaBox(), l1:GetLuaBox());
    -- Stop
    l1:Exec(1, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_Custom_Cinematic_Brick_5_Out_Cin1()
    local l0, l1;
    l0 = self.box_Custom_Cinematic_Brick_5;
    l1 = self.box_MultipleOR_19;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|772239605", "772239605", "D2_Outpost_Com_Cinematic", "box_Custom_Cinematic_Brick_5.Out_Cin1", "box_MultipleOR_19.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Custom_Cinematic_Brick_5_Out_Cin2()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_18();
    l0 = self.box_Custom_Cinematic_Brick_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1774299858", "1774299858", "D2_Outpost_Com_Cinematic", "box_Custom_Cinematic_Brick_5.Out_Cin2", "box_OutputOrder_v2_18.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MissionBlockLayer_17_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_24();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1015469294", "1015469294", "D2_Outpost_Com_Cinematic", "box_MissionBlockLayer_17.Disabled", "box_MissionBlockLayer_24.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_3_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_4();
    l0 = self.box_VehicleListener_v3_3;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|974269967", "974269967", "D2_Outpost_Com_Cinematic", "box_VehicleListener_v3_3.Enabled", "box_ForceExitVehicle_v2_4.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_3_OnStandUp()
    local l0, l1;
    l0 = self.box_VehicleListener_v3_3;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|494539255", "494539255", "D2_Outpost_Com_Cinematic", "box_VehicleListener_v3_3.OnStandUp", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayersVehicleID_28_NotInVehicle()
    local l0, l1;
    self:OnExit_box_GetPlayersVehicleID_28_NotInVehicle();
    l0 = self.box_GetPlayersVehicleID_28;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1200054390", "1200054390", "D2_Outpost_Com_Cinematic", "box_GetPlayersVehicleID_28.NotInVehicle", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetPlayersVehicleID_28_OneVehicle()
    local params, l0, l1;
    self:OnExit_box_GetPlayersVehicleID_28_OneVehicle();
    params = self:OnEnter_box_VehicleListener_v3_3();
    l0 = self.box_GetPlayersVehicleID_28;
    l1 = self.box_VehicleListener_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|97268095", "97268095", "D2_Outpost_Com_Cinematic", "box_GetPlayersVehicleID_28.OneVehicle", "box_VehicleListener_v3_3.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_GetPlayersVehicleID_28_TwoVehicles()
    local params, l0, l1;
    self:OnExit_box_GetPlayersVehicleID_28_TwoVehicles();
    params = self:OnEnter_box_VehicleListener_v3_1();
    l0 = self.box_GetPlayersVehicleID_28;
    l1 = self.box_VehicleListener_v3_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1958019425", "1958019425", "D2_Outpost_Com_Cinematic", "box_GetPlayersVehicleID_28.TwoVehicles", "box_VehicleListener_v3_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_8_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SoundMusicTriggerBox_7();
    l0 = self.box_SoundMusicTriggerBox_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1815920744", "1815920744", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_8.Out", "box_SoundMusicTriggerBox_7.Start", clone:GetLuaBox(), l0:GetLuaBox());
    -- Start
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_8_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_35();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1726679727", "1726679727", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_8.Out", "box_OutputOrder_v2_35.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_8_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GodMode_v3_16();
    l0 = self.box_GodMode_v3_16;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1934532844", "1934532844", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_8.Out", "box_GodMode_v3_16.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_23_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_ForceExitVehicle_v2_26();
    l0 = self.box_VehicleListener_v3_23;
    l1 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|928241361", "928241361", "D2_Outpost_Com_Cinematic", "box_VehicleListener_v3_23.Enabled", "box_ForceExitVehicle_v2_26.ForceExit", l0:GetLuaBox(), l1:GetLuaBox());
    -- ForceExit
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_VehicleListener_v3_23_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_29();
    l0 = self.box_VehicleListener_v3_23;
    l1 = self.box_MultipleAND_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|166297995", "166297995", "D2_Outpost_Com_Cinematic", "box_VehicleListener_v3_23.OnStandUp", "box_MultipleAND_v2_29.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 0);
end;

function export:f_box_RemoveEntity_v2_6_Out()
    local params, l0, l1;
    params = self:OnEnter_box_RemoveEntity_v2_13();
    l0 = self.box_RemoveEntity_v2_6;
    l1 = self.box_RemoveEntity_v2_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1573328229", "1573328229", "D2_Outpost_Com_Cinematic", "box_RemoveEntity_v2_6.Out", "box_RemoveEntity_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_SoundPointModifier_10_Stopped()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    local clone = l0;
    params = self:OnEnter_box_RadioModifier_v3_9();
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|654067944", "654067944", "D2_Outpost_Com_Cinematic", "box_SoundPointModifier_10.Stopped", "box_RadioModifier_v3_9.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionBlockLayer_15();
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1235140553", "1235140553", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_35.Out", "box_MissionBlockLayer_15.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(2, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_35_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_GetPlayersVehicleID_28;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|688128834", "688128834", "D2_Outpost_Com_Cinematic", "box_OutputOrder_v2_35.Out", "box_GetPlayersVehicleID_28.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, {
    });
end;

function export:f_box_MissionBlockLayer_24_Disabled()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_RemoveEntity_v2_6();
    l0 = self.box_RemoveEntity_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|628642738", "628642738", "D2_Outpost_Com_Cinematic", "box_MissionBlockLayer_24.Disabled", "box_RemoveEntity_v2_6.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
end;

function export:f_box_VehicleListener_v3_1_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_VehicleListener_v3_23();
    l0 = self.box_VehicleListener_v3_1;
    l1 = self.box_VehicleListener_v3_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|930357867", "930357867", "D2_Outpost_Com_Cinematic", "box_VehicleListener_v3_1.Enabled", "box_VehicleListener_v3_23.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_VehicleListener_v3_1_OnStandUp()
    local params, l0, l1;
    params = self:OnEnter_box_MultipleAND_v2_29();
    l0 = self.box_VehicleListener_v3_1;
    l1 = self.box_MultipleAND_v2_29;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1789151750", "1789151750", "D2_Outpost_Com_Cinematic", "box_VehicleListener_v3_1.OnStandUp", "box_MultipleAND_v2_29.Condition", l0:GetLuaBox(), l1:GetLuaBox());
    -- Condition
    l1:ExecDynInt(0, params, 1);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Custom_Cinematic_Brick_5();
    l0 = self.box_MultipleOR_27;
    l1 = self.box_Custom_Cinematic_Brick_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|864105135", "864105135", "D2_Outpost_Com_Cinematic", "box_MultipleOR_27.Out", "box_Custom_Cinematic_Brick_5.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
end;

function export:f_box_MissionBlockLayer_32_Activated()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    local clone = l0;
    params = self:OnEnter_box_VisibilityModifier_42();
    l0 = self.box_VisibilityModifier_42;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1131108212", "1131108212", "D2_Outpost_Com_Cinematic", "box_MissionBlockLayer_32.Activated", "box_VisibilityModifier_42.SetEnabled", clone:GetLuaBox(), l0:GetLuaBox());
    -- SetEnabled
    l0:Exec(1, params);
end;

function export:f_box_VisibilityModifier_44_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_VisibilityModifier_44;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|261210031", "261210031", "D2_Outpost_Com_Cinematic", "box_VisibilityModifier_44.Enabled", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_19_Out()
    local params, l0, l1;
    params = self:OnEnter_box_PostWWiseEventSetState_30();
    l0 = self.box_MultipleOR_19;
    l1 = self.box_PostWWiseEventSetState_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|666039626", "666039626", "D2_Outpost_Com_Cinematic", "box_MultipleOR_19.Out", "box_PostWWiseEventSetState_30.SetState", l0:GetLuaBox(), l1:GetLuaBox());
    -- SetState
    l1:Exec(0, params);
end;

function export:f_box_ForceExitVehicle_v2_26_ForceExitted()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ForceExitVehicle_v2_2();
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|569946650", "569946650", "D2_Outpost_Com_Cinematic", "box_ForceExitVehicle_v2_26.ForceExitted", "box_ForceExitVehicle_v2_2.ForceExit", clone:GetLuaBox(), l0:GetLuaBox());
    -- ForceExit
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_VisibilityModifier_42()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#94F2046A",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|33941041");
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

function export:OnEnter_box_RemoveEntity_v2_13()
    local params;
    params = {
        -- Group,
        [0] = "2102807107163167749",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|282120124");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_15_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "18152971811731204",
        -- missionLayerId,
        [1] = "27160171066472197",
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_29()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|353083568");
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

function export:OnEnter_box_PostWWiseEventSetState_30()
    local params;
    params = {
        -- SoundId,
        [0] = "2102059229",
        -- SoundType,
        [1] = 17,
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|550955380");
    l0:SetConnections({
    });
    l0 = self.box_GetPlayersVehicleID_28;
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_41()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#00176903",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|748862587");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_12_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "81203410076601179",
        -- missionLayerId,
        [1] = "99217808586083169",
    };
    return params;
end;

function export:OnEnter_box_SoundMusicTriggerBox_7()
    local params;
    DrawTextToScreen("Comment: MU CIN UNI035_001", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundMusicTriggerBox')-- Comment: MU CIN UNI035_001");
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
        [5] = "236193250",
        -- StopEvent,
        [6] = "3370378143",
        -- StopFadeOut,
        [7] = 5,
        -- WaitUntilMusicEndMarker,
        [8] = false,
        -- WaitUntilNotInVehicle,
        [9] = false,
    };
    return params;
end;

function export:OnEnter_box_Custom_Cinematic_Brick_5()
    local params;
    params = {
        -- bUseFadeInAtEnd,
        [0] = false,
        -- CS_CINEMA_Outpost_Animals,
        [1] = "2097663433976589548",
        -- TeleportDestination,
        [2] = "2097868075180240726",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|959778579");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_17_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "171275402624278137",
        -- missionLayerId,
        [1] = "180282601879019129",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1024574408");
    l0:SetConnections({
    });
    l0 = self.box_GetPlayersVehicleID_28;
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RadioModifier_v3_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/RadioModifier_v3.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RadioModifier_v3_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1106799818");
    l0:SetConnections({
    });
    params = {
        -- Enable,
        [0] = false,
        -- ImmediateOverride,
        [1] = true,
        -- LockOnOff,
        [2] = false,
        -- LockStationSwitching,
        [3] = false,
        -- TargetRadio,
        [5] = "2101441195344437529",
    };
    return params;
end;

function export:OnEnter_box_BroadcastMessage_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/BroadcastMessage.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BroadcastMessage_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1160024297");
    l0:SetConnections({
    });
    params = {
        -- Message,
        [0] = "arcadenpc_ready",
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_14()
    local params;
    params = {
        -- Group,
        [0] = "2100997113379848486",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_3()
    local params, l0;
    l0 = self.box_GetPlayersVehicleID_28;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1323215909");
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
                [0] = self.f_box_OutputOrder_v2_8_Out_0,
                [1] = self.f_box_OutputOrder_v2_8_Out_1,
                [2] = self.f_box_OutputOrder_v2_8_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_23()
    local params, l0;
    l0 = self.box_GetPlayersVehicleID_28;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = l0:GetDataOutValue(0),
    };
    return params;
end;

function export:OnEnter_box_RemoveEntity_v2_6()
    local params;
    params = {
        -- Group,
        [0] = "2102393256288515984",
    };
    return params;
end;

function export:OnEnter_box_SoundPointModifier_10()
    local params, l0;
    DrawTextToScreen("Comment: Stop UNI35_001 PA", 5, "white");
    LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'SoundPointModifier')-- Comment: Stop UNI35_001 PA");
    l0 = Boxes[GetPathID("Domino/System/SoundPointModifier.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundPointModifier_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1338898394");
    l0:SetConnections({
        -- Stopped,
        [1] = self.f_box_SoundPointModifier_10_Stopped,
    });
    params = {
        -- soundPoint,
        [0] = "2101441195344437529",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_35()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1586512444");
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
                [0] = self.f_box_OutputOrder_v2_35_Out_0,
                [1] = self.f_box_OutputOrder_v2_35_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1792304605");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1826475889");
    l0:SetConnections({
        -- Disabled,
        [2] = self.f_box_MissionBlockLayer_24_Disabled,
    });
    params = {
        -- missionBlockId,
        [0] = "27160219244859610",
        -- missionLayerId,
        [1] = "27160222740130381",
    };
    return params;
end;

function export:OnEnter_box_VehicleListener_v3_1()
    local params, l0;
    l0 = self.box_GetPlayersVehicleID_28;
    params = {
        -- autoDisable,
        [1] = true,
        -- pawns,
        [2] = "#ED455357",
        -- vehicle,
        [4] = l0:GetDataOutValue(1),
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

function export:OnEnter_box_MissionBlockLayer_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|1984238949");
    l0:SetConnections({
    });
    params = {
        -- missionBlockId,
        [0] = "18152989651492590",
        -- missionLayerId,
        [1] = "36167388160974581",
    };
    return params;
end;

function export:OnEnter_box_MissionBlockLayer_32()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/MissionBlockLayer.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionBlockLayer_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|2046704448");
    l0:SetConnections({
        -- Activated,
        [0] = self.f_box_MissionBlockLayer_32_Activated,
    });
    params = {
        -- missionBlockId,
        [0] = "18152949117150935",
        -- missionLayerId,
        [1] = "36167347626632923",
    };
    return params;
end;

function export:OnEnter_box_VisibilityModifier_44()
    local params;
    params = {
        -- players,
        [0] = "#5B9E5CA4",
        -- targets,
        [1] = "#451A97C2",
    };
    return params;
end;

function export:OnEnter_box_ForceExitVehicle_v2_26()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/ForceExitVehicle_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ForceExitVehicle_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Outposts\\D2\\D2_Outpost_Community.domino|@D2_Outpost_Com_Cinematic|2146892296");
    l0:SetConnections({
        -- ForceExitted,
        [0] = self.f_box_ForceExitVehicle_v2_26_ForceExitted,
    });
    l0 = self.box_GetPlayersVehicleID_28;
    params = {
        -- noFail,
        [0] = true,
        -- pawns,
        [1] = "#ED455357",
        -- vehicle,
        [2] = l0:GetDataOutValue(1),
    };
    return params;
end;

function export:OnExit_box_GetPlayersVehicleID_28_NotInVehicle()
    local l0, l1;
    l0 = self.box_GetPlayersVehicleID_28;
    l1 = self.box_VehicleListener_v3_3;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_23;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_1;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayersVehicleID_28_OneVehicle()
    local l0, l1;
    l0 = self.box_GetPlayersVehicleID_28;
    l1 = self.box_VehicleListener_v3_3;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_23;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_1;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(1);
end;

function export:OnExit_box_GetPlayersVehicleID_28_TwoVehicles()
    local l0, l1;
    l0 = self.box_GetPlayersVehicleID_28;
    l1 = self.box_VehicleListener_v3_3;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_23;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(0);
    l1 = self.box_VehicleListener_v3_1;
    l1:GetLuaBox().vehicle = l0:GetDataOutValue(1);
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
