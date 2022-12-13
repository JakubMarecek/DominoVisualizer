LUAC'8 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/fc5_intro/intro_012/g4_dutchbunker_uni61.domino
-- User graph: G4_DutchBunker_NoWPN
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
        cboxRes:RegisterBox("Domino/System/Activity/GetActivityState_v2.lua");
        cboxRes:RegisterBox("Domino/System/BinkPlayer_v6.lua");
        cboxRes:RegisterBox("Domino/System/EntityStatusListener.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MessageListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/NoWeaponMode_v3.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/WieldInventory_v5.lua");
        cboxRes:RegisterBox("Domino/System/Print_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        
        -- Load resources
        cboxRes:LoadResource([[ui\singleplayer\video\preload\bink_mapped-intro_012_binks_1_cc_v002.bik]], "CBinkResource");
        cboxRes:LoadResource([[ui\singleplayer\video\preload\bink_mapped-intro_012_binks_1_cc.bik]], "CBinkResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/user/FC5_main/FC5_Activities/FC5_INTRO/INTRO_012/G4_DutchBunker_UNI61.G4_DutchBunker_NoWPN.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Active",
                delayed = false,
            },
            [1] = {
                name = "Canceled",
                delayed = false,
            },
            [2] = {
                name = "Completed",
                delayed = false,
            },
            [3] = {
                name = "Failed",
                delayed = false,
            },
            [4] = {
                name = "Inactive",
                delayed = false,
            },
            [5] = {
                name = "Out",
                delayed = false,
            },
            [6] = {
                name = "Unavailable",
                delayed = false,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "activityDescriptorID",
                type = "genericdb",
            },
        },
        dataInCount = 1,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/BinkPlayer_v6.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
            [1] = {
                name = "Preload",
            },
            [2] = {
                name = "Stop",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Played",
                delayed = false,
            },
            [1] = {
                name = "Preloaded",
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
                name = "BinkAudio",
                type = "Sound",
            },
            [1] = {
                name = "BinkAudioType",
                type = "SoundType",
            },
            [2] = {
                name = "BinkPathID",
                type = "Video",
            },
            [3] = {
                name = "BinkSound",
                type = "Sound",
            },
            [4] = {
                name = "BinkSoundEnd",
                type = "Sound",
            },
            [5] = {
                name = "BinkSoundEndType",
                type = "SoundType",
            },
            [6] = {
                name = "BinkSoundFade",
                type = "float",
            },
            [7] = {
                name = "BinkSoundType",
                type = "SoundType",
            },
            [8] = {
                name = "BinkVolumePercent",
                type = "float",
            },
            [9] = {
                name = "Loop",
                type = "bool",
            },
            [10] = {
                name = "MaterialName",
                type = "string",
            },
            [11] = {
                name = "ScreenEntity",
                type = "entity",
            },
            [12] = {
                name = "TCR_Music",
                type = "bool",
            },
            [13] = {
                name = "WaitAvailableBinding",
                type = "bool",
            },
        },
        dataInCount = 14,
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
    metadataTable[GetPathID("Domino/System/MessageListener_v3.lua")] = {
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
                name = "Received",
                delayed = true,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "message",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/NoWeaponMode_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Off",
            },
            [1] = {
                name = "On",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnEnter",
                delayed = false,
            },
            [1] = {
                name = "OnLeave",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "pawns",
                type = "group",
            },
            [1] = {
                name = "useAnims",
                type = "bool",
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
    metadataTable[GetPathID("Domino/System/ProximityTrigger_v2.lua")] = {
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
                name = "Enter",
                delayed = true,
            },
            [3] = {
                name = "Leave",
                delayed = true,
            },
            [4] = {
                name = "OnEmpty",
                delayed = true,
            },
            [5] = {
                name = "OnOccupied",
                delayed = true,
            },
            [6] = {
                name = "Use",
                delayed = true,
            },
        },
        controlOutCount = 7,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "colliderFilterId",
                type = "group",
            },
            [2] = {
                name = "listenToGroupSizeChange",
                type = "bool",
            },
            [3] = {
                name = "triggerId",
                type = "entity",
            },
        },
        dataInCount = 4,
        dataOut = {
            [0] = {
                name = "colliderId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
end;

function export:Init(cbox)
    local l0;
    self._name = "G4_DutchBunker_NoWPN";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN";
    self.gPlayer = nil;
    self.eCollider = nil;
    self.gCollider = nil;
    self.box_BinkPlayer_v6_35 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|39532156");
    l0:SetConnections({
        -- Played,
        [0] = self.f_box_BinkPlayer_v6_35_Played,
        -- Stopped,
        [2] = self.f_box_BinkPlayer_v6_35_Stopped,
    });
    self.box_OnceOnly_v3_23 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|283774992");
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
                [0] = self.f_box_OnceOnly_v3_23_Out_0,
            },
            count = 2,
        },
    });
    self.box_EntityStatusListener_40 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_40;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_40");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|314863093");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_40_Loaded,
    });
    self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_18;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|415254468");
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
        [0] = self.f_box_MultipleOR_18_Out,
    });
    self.box_OnceOnly_v3_8 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|538298767");
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
                [0] = self.f_box_OnceOnly_v3_8_Out_0,
            },
            count = 2,
        },
    });
    self.box_MessageListener_v3_44 = cbox:CreateBox("Domino/System/MessageListener_v3.lua");
    l0 = self.box_MessageListener_v3_44;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MessageListener_v3_44");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|603752778");
    l0:SetConnections({
        -- Received,
        [2] = self.f_box_MessageListener_v3_44_Received,
    });
    self.box_MultipleOR_37 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_37;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|786101890");
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
        [0] = self.f_box_MultipleOR_37_Out,
    });
    self.box_EntityStatusListener_39 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_39;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_39");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|811596902");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_39_Loaded,
    });
    self.box_EntityStatusListener_31 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_31;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|862909679");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_31_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_31_Unloaded,
    });
    self.box_NoWeaponMode_v3_4 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_4;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|926491825");
    l0:SetConnections({
        -- OnEnter,
        [0] = self.f_box_NoWeaponMode_v3_4_OnEnter,
        -- OnLeave,
        [1] = self.f_box_NoWeaponMode_v3_4_OnLeave,
    });
    self.box_ProximityTrigger_v2_21 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|959555487");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_21_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_21_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_21_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_21_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_21_OnOccupied,
    });
    self.box_BinkPlayer_v6_25 = cbox:CreateBox("Domino/System/BinkPlayer_v6.lua");
    l0 = self.box_BinkPlayer_v6_25;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_BinkPlayer_v6_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1006655758");
    l0:SetConnections({
        -- Played,
        [0] = self.f_box_BinkPlayer_v6_25_Played,
        -- Stopped,
        [2] = self.f_box_BinkPlayer_v6_25_Stopped,
    });
    self.box_MultipleOR_24 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1043210756");
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
    self.box_OnceOnly_v3_33 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1052228740");
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
                [0] = self.f_box_OnceOnly_v3_33_Out_0,
            },
            count = 2,
        },
    });
    self.box_NoWeaponMode_v3_10 = cbox:CreateBox("Domino/System/NoWeaponMode_v3.lua");
    l0 = self.box_NoWeaponMode_v3_10;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_NoWeaponMode_v3_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1095403759");
    l0:SetConnections({
    });
    self.box_MultipleOR_27 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_27;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1134003522");
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
        [0] = self.f_box_MultipleOR_27_Out,
    });
    self.box_EntityStatusListener_2 = cbox:CreateBox("Domino/System/EntityStatusListener.lua");
    l0 = self.box_EntityStatusListener_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_EntityStatusListener_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1254733085");
    l0:SetConnections({
        -- Loaded,
        [2] = self.f_box_EntityStatusListener_2_Loaded,
        -- Unloaded,
        [3] = self.f_box_EntityStatusListener_2_Unloaded,
    });
    self.box_MultipleOR_45 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_45;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_45");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1490612943");
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
        [0] = self.f_box_MultipleOR_45_Out,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1526031042");
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
        [0] = self.f_box_MultipleOR_36_Out,
    });
    self.box_WieldInventory_v5_6 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1550452943");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_1 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1774388550");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_1_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_1_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_1_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_1_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_1_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_1_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_1_Use,
    });
    self.box_OnceOnly_v3_11 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_11;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1907283485");
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
                [0] = self.f_box_OnceOnly_v3_11_Out_0,
            },
            count = 2,
        },
    });
    self.box_OnceOnly_v3_32 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1922186913");
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
                [0] = self.f_box_OnceOnly_v3_32_Out_0,
            },
            count = 2,
        },
    });
    self.box_MultipleOR_38 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_38;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|2051193250");
    l0:SetDynAnchorCount({
        controlIn = {
            [0] = 5,
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
    self.box_WieldInventory_v5_14 = cbox:CreateBox("Domino/System/Player/WieldInventory_v5.lua");
    l0 = self.box_WieldInventory_v5_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_WieldInventory_v5_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|2130743476");
    l0:SetConnections({
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_3();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1190261624", "1190261624", "G4_DutchBunker_NoWPN", "In", "box_GetPlayerGroup_v2_3.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_BinkPlayer_v6_35_Played()
    local l0, l1;
    l0 = self.box_BinkPlayer_v6_35;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1598236272", "1598236272", "G4_DutchBunker_NoWPN", "box_BinkPlayer_v6_35.Played", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_BinkPlayer_v6_35_Stopped()
    local l0, l1;
    l0 = self.box_BinkPlayer_v6_35;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|2035460410", "2035460410", "G4_DutchBunker_NoWPN", "box_BinkPlayer_v6_35.Stopped", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OnceOnly_v3_23_Out_0()
    local l0, l1;
    l0 = self.box_OnceOnly_v3_23;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|875608910", "875608910", "G4_DutchBunker_NoWPN", "box_OnceOnly_v3_23.Out", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_EntityStatusListener_40_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_42();
    l0 = self.box_EntityStatusListener_40;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|221464933", "221464933", "G4_DutchBunker_NoWPN", "box_EntityStatusListener_40.Loaded", "box_OutputOrder_v2_42.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_16_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|918954785", "918954785", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_16.Active", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_16_Inactive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_17();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1489970488", "1489970488", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_16.Inactive", "box_GetActivityState_v2_17.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_18_Out()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_10();
    l0 = self.box_MultipleOR_18;
    l1 = self.box_NoWeaponMode_v3_10;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|459257119", "459257119", "G4_DutchBunker_NoWPN", "box_MultipleOR_18.Out", "box_NoWeaponMode_v3_10.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_OnceOnly_v3_8_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_4();
    l0 = self.box_OnceOnly_v3_8;
    l1 = self.box_NoWeaponMode_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1196300683", "1196300683", "G4_DutchBunker_NoWPN", "box_OnceOnly_v3_8.Out", "box_NoWeaponMode_v3_4.On", l0:GetLuaBox(), l1:GetLuaBox());
    -- On
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_12_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|239371753", "239371753", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_12.Out", "box_OnceOnly_v3_8.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_12_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1157241099", "1157241099", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_12.Out", "box_OnceOnly_v3_11.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_MessageListener_v3_44_Received()
    local l0, l1;
    l0 = self.box_MessageListener_v3_44;
    l1 = self.box_MultipleOR_45;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1032441681", "1032441681", "G4_DutchBunker_NoWPN", "box_MessageListener_v3_44.Received", "box_MultipleOR_45.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_15_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1185782396", "1185782396", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_15.Active", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_GetActivityState_v2_15_Inactive()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_GetActivityState_v2_16();
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1171313879", "1171313879", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_15.Inactive", "box_GetActivityState_v2_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_22_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|447250403", "447250403", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_22.Out", "box_OnceOnly_v3_23.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_22_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|718409292", "718409292", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_22.Out", "box_OnceOnly_v3_32.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_OutputOrder_v2_29_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1370731125", "1370731125", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_29.Out", "box_OnceOnly_v3_32.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_29_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|793374228", "793374228", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_29.Out", "box_OnceOnly_v3_23.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_MultipleOR_37_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_30();
    l0 = self.box_MultipleOR_37;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1375018816", "1375018816", "G4_DutchBunker_NoWPN", "box_MultipleOR_37.Out", "box_Print_v2_30.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_39_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_41();
    l0 = self.box_EntityStatusListener_39;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1417927722", "1417927722", "G4_DutchBunker_NoWPN", "box_EntityStatusListener_39.Loaded", "box_GetActivityState_v2_41.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_31_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_21();
    l0 = self.box_EntityStatusListener_31;
    l1 = self.box_ProximityTrigger_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|607022910", "607022910", "G4_DutchBunker_NoWPN", "box_EntityStatusListener_31.Loaded", "box_ProximityTrigger_v2_21.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_31_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_21();
    l0 = self.box_EntityStatusListener_31;
    l1 = self.box_ProximityTrigger_v2_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1238064716", "1238064716", "G4_DutchBunker_NoWPN", "box_EntityStatusListener_31.Unloaded", "box_ProximityTrigger_v2_21.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_NoWeaponMode_v3_4_OnEnter()
    local params, l0, l1;
    params = self:OnEnter_box_WieldInventory_v5_14();
    l0 = self.box_NoWeaponMode_v3_4;
    l1 = self.box_WieldInventory_v5_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|142243193", "142243193", "G4_DutchBunker_NoWPN", "box_NoWeaponMode_v3_4.OnEnter", "box_WieldInventory_v5_14.LuaHolster", l0:GetLuaBox(), l1:GetLuaBox());
    -- LuaHolster
    l1:Exec(1, params);
end;

function export:f_box_NoWeaponMode_v3_4_OnLeave()
    local params, l0, l1;
    params = self:OnEnter_box_GetActivityState_v2_7();
    l0 = self.box_NoWeaponMode_v3_4;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1410750808", "1410750808", "G4_DutchBunker_NoWPN", "box_NoWeaponMode_v3_4.OnLeave", "box_GetActivityState_v2_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_21_Enabled()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_21;
    l1 = self.box_OnceOnly_v3_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|385339745", "385339745", "G4_DutchBunker_NoWPN", "box_ProximityTrigger_v2_21.Enabled", "box_OnceOnly_v3_33.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_21_Enter()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_21;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|2027304221", "2027304221", "G4_DutchBunker_NoWPN", "box_ProximityTrigger_v2_21.Enter", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_21_Leave()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_21;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|275553405", "275553405", "G4_DutchBunker_NoWPN", "box_ProximityTrigger_v2_21.Leave", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_21_OnEmpty()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_21;
    l1 = self.box_MultipleOR_27;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1754606247", "1754606247", "G4_DutchBunker_NoWPN", "box_ProximityTrigger_v2_21.OnEmpty", "box_MultipleOR_27.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_ProximityTrigger_v2_21_OnOccupied()
    local l0, l1;
    l0 = self.box_ProximityTrigger_v2_21;
    l1 = self.box_MultipleOR_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|457771671", "457771671", "G4_DutchBunker_NoWPN", "box_ProximityTrigger_v2_21.OnOccupied", "box_MultipleOR_24.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_BinkPlayer_v6_25_Played()
    local l0, l1;
    l0 = self.box_BinkPlayer_v6_25;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1821323669", "1821323669", "G4_DutchBunker_NoWPN", "box_BinkPlayer_v6_25.Played", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_BinkPlayer_v6_25_Stopped()
    local l0, l1;
    l0 = self.box_BinkPlayer_v6_25;
    l1 = self.box_MultipleOR_37;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|434729999", "434729999", "G4_DutchBunker_NoWPN", "box_BinkPlayer_v6_25.Stopped", "box_MultipleOR_37.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_24_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_22();
    l0 = self.box_MultipleOR_24;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1378007888", "1378007888", "G4_DutchBunker_NoWPN", "box_MultipleOR_24.Out", "box_OutputOrder_v2_22.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_33_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_MessageListener_v3_44();
    l0 = self.box_OnceOnly_v3_33;
    l1 = self.box_MessageListener_v3_44;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|812631078", "812631078", "G4_DutchBunker_NoWPN", "box_OnceOnly_v3_33.Out", "box_MessageListener_v3_44.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_MultipleOR_27_Out()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_29();
    l0 = self.box_MultipleOR_27;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1675639424", "1675639424", "G4_DutchBunker_NoWPN", "box_MultipleOR_27.Out", "box_OutputOrder_v2_29.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_EntityStatusListener_2_Loaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_1();
    l0 = self.box_EntityStatusListener_2;
    l1 = self.box_ProximityTrigger_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|824459992", "824459992", "G4_DutchBunker_NoWPN", "box_EntityStatusListener_2.Loaded", "box_ProximityTrigger_v2_1.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_EntityStatusListener_2_Unloaded()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityTrigger_v2_1();
    l0 = self.box_EntityStatusListener_2;
    l1 = self.box_ProximityTrigger_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|309324190", "309324190", "G4_DutchBunker_NoWPN", "box_EntityStatusListener_2.Unloaded", "box_ProximityTrigger_v2_1.Disable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Disable
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_3_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_3_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|2113113735", "2113113735", "G4_DutchBunker_NoWPN", "box_GetPlayerGroup_v2_3.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetActivityState_v2_41_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|938955634", "938955634", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_41.Active", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_GetActivityState_v2_41_Canceled()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|887588398", "887588398", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_41.Canceled", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 4);
end;

function export:f_box_GetActivityState_v2_41_Completed()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayer_v6_35();
    l0 = self.box_BinkPlayer_v6_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1035806151", "1035806151", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_41.Completed", "box_BinkPlayer_v6_35.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GetActivityState_v2_41_Failed()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|819636139", "819636139", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_41.Failed", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 3);
end;

function export:f_box_GetActivityState_v2_41_Inactive()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1009831834", "1009831834", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_41.Inactive", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetActivityState_v2_41_Unavailable()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_38;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|674237531", "674237531", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_41.Unavailable", "box_MultipleOR_38.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_MultipleOR_45_Out()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_39();
    l0 = self.box_MultipleOR_45;
    l1 = self.box_EntityStatusListener_39;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|765819958", "765819958", "G4_DutchBunker_NoWPN", "box_MultipleOR_45.Out", "box_EntityStatusListener_39.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_42_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayer_v6_25();
    l0 = self.box_BinkPlayer_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1156067540", "1156067540", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_42.Out", "box_BinkPlayer_v6_25.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_OutputOrder_v2_42_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_BinkPlayer_v6_35();
    l0 = self.box_BinkPlayer_v6_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|239820355", "239820355", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_42.Out", "box_BinkPlayer_v6_35.Stop", clone:GetLuaBox(), l0:GetLuaBox());
    -- Stop
    l0:Exec(2, params);
end;

function export:f_box_GetActivityState_v2_17_Active()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_18;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1478528005", "1478528005", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_17.Active", "box_MultipleOR_18.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 2);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Print_v2_28();
    l0 = self.box_MultipleOR_36;
    l1 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|798585212", "798585212", "G4_DutchBunker_NoWPN", "box_MultipleOR_36.Out", "box_Print_v2_28.ToScreen", l0:GetLuaBox(), l1:GetLuaBox());
    -- ToScreen
    l1:Exec(3, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_1_Enabled()
    self:OnExit_box_ProximityTrigger_v2_1_Enabled();
end;

function export:f_box_ProximityTrigger_v2_1_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_1_Enter();
    params = self:OnEnter_box_OutputOrder_v2_12();
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|383284066", "383284066", "G4_DutchBunker_NoWPN", "box_ProximityTrigger_v2_1.Enter", "box_OutputOrder_v2_12.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_1_Leave()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_1_Leave();
    params = self:OnEnter_box_OutputOrder_v2_13();
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1334160928", "1334160928", "G4_DutchBunker_NoWPN", "box_ProximityTrigger_v2_1.Leave", "box_OutputOrder_v2_13.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_1_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_1_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_1_OnOccupied()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_1_OnOccupied();
    params = self:OnEnter_box_GetActivityState_v2_15();
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1081770728", "1081770728", "G4_DutchBunker_NoWPN", "box_ProximityTrigger_v2_1.OnOccupied", "box_GetActivityState_v2_15.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_1_Use()
    self:OnExit_box_ProximityTrigger_v2_1_Use();
end;

function export:f_box_OnceOnly_v3_11_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_NoWeaponMode_v3_4();
    l0 = self.box_OnceOnly_v3_11;
    l1 = self.box_NoWeaponMode_v3_4;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1629925237", "1629925237", "G4_DutchBunker_NoWPN", "box_OnceOnly_v3_11.Out", "box_NoWeaponMode_v3_4.Off", l0:GetLuaBox(), l1:GetLuaBox());
    -- Off
    l1:Exec(0, params);
end;

function export:f_box_OnceOnly_v3_32_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_EntityStatusListener_40();
    l0 = self.box_OnceOnly_v3_32;
    l1 = self.box_EntityStatusListener_40;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|678718418", "678718418", "G4_DutchBunker_NoWPN", "box_OnceOnly_v3_32.Out", "box_EntityStatusListener_40.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_13_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_11;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1609404652", "1609404652", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_13.Out", "box_OnceOnly_v3_11.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_13_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_OnceOnly_v3_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1431960919", "1431960919", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_13.Out", "box_OnceOnly_v3_8.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, {
    });
end;

function export:f_box_MultipleOR_38_Out()
    local params, l0, l1;
    params = self:OnEnter_box_BinkPlayer_v6_25();
    l0 = self.box_MultipleOR_38;
    l1 = self.box_BinkPlayer_v6_25;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1816327683", "1816327683", "G4_DutchBunker_NoWPN", "box_MultipleOR_38.Out", "box_BinkPlayer_v6_25.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_2();
    l0 = self.box_EntityStatusListener_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|587914674", "587914674", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_34.Out", "box_EntityStatusListener_2.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_EntityStatusListener_31();
    l0 = self.box_EntityStatusListener_31;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1454944051", "1454944051", "G4_DutchBunker_NoWPN", "box_OutputOrder_v2_34.Out", "box_EntityStatusListener_31.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_GetActivityState_v2_7_Active()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_WieldInventory_v5_6();
    l0 = self.box_WieldInventory_v5_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|388367487", "388367487", "G4_DutchBunker_NoWPN", "box_GetActivityState_v2_7.Active", "box_WieldInventory_v5_6.LuaDraw", clone:GetLuaBox(), l0:GetLuaBox());
    -- LuaDraw
    l0:Exec(0, params);
end;

function export:OnEnter_box_BinkPlayer_v6_35()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\preload\bink_mapped-intro_012_binks_1_cc_v002.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 0,
        -- Loop,
        [9] = true,
        -- MaterialName,
        [10] = "BinkInvisible",
        -- ScreenEntity,
        [11] = "2104521343388106209",
        -- TCR_Music,
        [12] = true,
        -- WaitAvailableBinding,
        [13] = false,
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
        [2] = "2104521343388106209",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|373342546");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_16_Active,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_16_Inactive,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015252522537656",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_12()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|590743644");
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
                [0] = self.f_box_OutputOrder_v2_12_Out_0,
                [1] = self.f_box_OutputOrder_v2_12_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MessageListener_v3_44()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- message,
        [1] = "INTRO_012_BUNKERDOOR_OPEN",
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_15()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|639722391");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_15_Active,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_15_Inactive,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015252522640561",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_22()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_22");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|727706280");
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
                [0] = self.f_box_OutputOrder_v2_22_Out_0,
                [1] = self.f_box_OutputOrder_v2_22_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|760781993");
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
                [0] = self.f_box_OutputOrder_v2_29_Out_0,
                [1] = self.f_box_OutputOrder_v2_29_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_39()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104521343388106209",
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_31()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104534141704887853",
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_4()
    local params;
    params = {
        -- pawns,
        [0] = self.gCollider,
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_21()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104534141704887853",
    };
    return params;
end;

function export:OnEnter_box_BinkPlayer_v6_25()
    local params;
    params = {
        -- BinkPathID,
        [2] = [[ui\singleplayer\video\preload\bink_mapped-intro_012_binks_1_cc.bik]],
        -- BinkSoundFade,
        [6] = 0,
        -- BinkVolumePercent,
        [8] = 0,
        -- Loop,
        [9] = true,
        -- MaterialName,
        [10] = "BinkInvisible",
        -- ScreenEntity,
        [11] = "2104521343388106209",
        -- TCR_Music,
        [12] = true,
        -- WaitAvailableBinding,
        [13] = false,
    };
    return params;
end;

function export:OnEnter_box_NoWeaponMode_v3_10()
    local params;
    params = {
        -- pawns,
        [0] = self.gPlayer,
        -- useAnims,
        [1] = true,
    };
    return params;
end;

function export:OnEnter_box_EntityStatusListener_2()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- checkNow,
        [1] = true,
        -- entityId,
        [2] = "2104657877856687734",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1337153861");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_3_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_41()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_41");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1388671671");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_41_Active,
        -- Canceled,
        [1] = self.f_box_GetActivityState_v2_41_Canceled,
        -- Completed,
        [2] = self.f_box_GetActivityState_v2_41_Completed,
        -- Failed,
        [3] = self.f_box_GetActivityState_v2_41_Failed,
        -- Inactive,
        [4] = self.f_box_GetActivityState_v2_41_Inactive,
        -- Unavailable,
        [6] = self.f_box_GetActivityState_v2_41_Unavailable,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015255997569676",
    };
    return params;
end;

function export:OnEnter_box_Print_v2_30()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1487028750");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "red",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Bunker_Screens_Unloaded",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_42()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_42");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1507439431");
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
                [0] = self.f_box_OutputOrder_v2_42_Out_0,
                [1] = self.f_box_OutputOrder_v2_42_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1518582095");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_17_Active,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015252522633848",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_6()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015197341010330",
        -- pawns,
        [2] = self.gCollider,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayer,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = "2104657877856687734",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_13()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|1960776543");
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

function export:OnEnter_box_OutputOrder_v2_34()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_34");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|2083546539");
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
                [0] = self.f_box_OutputOrder_v2_34_Out_0,
                [1] = self.f_box_OutputOrder_v2_34_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Print_v2_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Print_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Print_v2_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|2088920193");
    l0:SetConnections({
    });
    params = {
        -- color,
        [1] = "green",
        -- duration,
        [3] = 5,
        -- path,
        [7] = "C:\\Print.log",
        -- str,
        [8] = "Bunker_Screens_Loaded",
        -- useTimeTag,
        [9] = true,
    };
    return params;
end;

function export:OnEnter_box_GetActivityState_v2_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/GetActivityState_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetActivityState_v2_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\FC5_INTRO\\INTRO_012\\G4_DutchBunker_UNI61.domino|@G4_DutchBunker_NoWPN|2130098982");
    l0:SetConnections({
        -- Active,
        [0] = self.f_box_GetActivityState_v2_7_Active,
    });
    params = {
        -- activityDescriptorID,
        [0] = "9015255997569676",
    };
    return params;
end;

function export:OnEnter_box_WieldInventory_v5_14()
    local params;
    params = {
        -- itemDescriptorId,
        [0] = "9015142582148905",
        -- pawns,
        [2] = "#ED455357",
    };
    return params;
end;

function export:OnExit_box_GetPlayerGroup_v2_3_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayer = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.gCollider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.gCollider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.gCollider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.gCollider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.gCollider = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.gCollider = l0:GetDataOutValue(0);
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
