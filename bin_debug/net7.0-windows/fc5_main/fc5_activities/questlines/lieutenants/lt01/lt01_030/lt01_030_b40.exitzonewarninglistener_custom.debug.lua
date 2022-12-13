LUAC 4 -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/lieutenants/lt01/lt01_030/lt01_030_b40.domino
-- User graph: ExitZoneWarningListener_Custom
-- 
-- 
-- DO NOT EDIT MANUALLY THIS FILE OR YOUR CHANGES WILL BE LOST!
-- Please modify the original Domino script instead. You have been warned.

-- *** SCRIPT INPUT REFLECTION ***
--[[
<InputReflection>
    <DataIn Name="FailingZoneTrigger" Type="Nomad|entity{}" />
    <DataIn Name="WarningZoneTrigger" Type="Nomad|entity{}" />
    <DataIn Name="bShowUI" Type="Core|bool" />
</InputReflection> 
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
        cboxRes:RegisterBox("Domino/System/CompareBoolean.lua");
        cboxRes:RegisterBox("Domino/System/CompareEntity.lua");
        cboxRes:RegisterBox("Domino/System/Coop/CoopActivePlayers.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleAND_v2.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityTrigger_v2.lua");
        cboxRes:RegisterBox("Domino/System/SetEntity_v2.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        cboxRes:RegisterBox("Domino/System/SoundModifier_v2.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
        cboxRes:RegisterBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
        
        -- Load resources
        cboxRes:LoadResource([[872277581.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/Lieutenants/LT01/LT01_030/LT01_030_B40.ExitZoneWarningListener_Custom.debug.lua")] = {
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
                name = "FailingZoneEntered",
                delayed = true,
            },
            [1] = {
                name = "WarningZoneEntered",
                delayed = true,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "bShowUI",
                type = "bool",
            },
            [1] = {
                name = "FailingZoneTrigger",
                type = "entity",
            },
            [2] = {
                name = "WarningZoneTrigger",
                type = "entity",
            },
        },
        dataInCount = 3,
        dataOut = {
            [0] = {
                name = "CurrentWarnedPlayer",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/CompareBoolean.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "A_and_B",
                delayed = false,
            },
            [1] = {
                name = "A_is_False",
                delayed = false,
            },
            [2] = {
                name = "A_is_True",
                delayed = false,
            },
            [3] = {
                name = "A_or_B",
                delayed = false,
            },
            [4] = {
                name = "A_xor_B",
                delayed = false,
            },
        },
        controlOutCount = 5,
        dataIn = {
            [0] = {
                name = "A",
                type = "bool",
            },
            [1] = {
                name = "B",
                type = "bool",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/CompareEntity.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Equal",
                delayed = false,
            },
            [1] = {
                name = "NotEqual",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "Entity1",
                type = "entity",
            },
            [1] = {
                name = "Entity2",
                type = "entity",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "Result",
                type = "bool",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/Coop/CoopActivePlayers.lua")] = {
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
                name = "OnePlayer",
                delayed = false,
            },
            [1] = {
                name = "PlayerAdded",
                delayed = true,
            },
            [2] = {
                name = "PlayerRemoved",
                delayed = true,
            },
            [3] = {
                name = "TwoPlayers",
                delayed = false,
            },
        },
        controlOutCount = 4,
        dataIn = {
        },
        dataInCount = 0,
        dataOut = {
            [0] = {
                name = "Player1",
                type = "entity",
            },
            [1] = {
                name = "Player2",
                type = "entity",
            },
            [2] = {
                name = "PlayerAddedOrRemoved",
                type = "entity",
            },
        },
        dataOutCount = 3,
    };
    metadataTable[GetPathID("Domino/System/Gate_v3.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Close",
            },
            [1] = {
                name = "In",
            },
            [2] = {
                name = "Open",
            },
        },
        controlInCount = 3,
        controlOut = {
            [0] = {
                name = "Closed",
                delayed = false,
            },
            [1] = {
                name = "Opened",
                delayed = false,
            },
            [2] = {
                name = "Out",
                delayed = false,
            },
        },
        controlOutCount = 3,
        dataIn = {
            [0] = {
                name = "initStateOpen",
                type = "bool",
            },
        },
        dataInCount = 1,
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
    metadataTable[GetPathID("Domino/System/SetEntity_v2.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "FromEntity",
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
                name = "Entity",
                type = "entity",
            },
        },
        dataInCount = 1,
        dataOut = {
            [0] = {
                name = "Target",
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
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v4.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "pawns",
                type = "group",
            },
        },
        dataInCount = 2,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/UI/DisplayCustomUIMsg_v5.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Display",
            },
            [1] = {
                name = "Hide",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "OnDisplay",
                delayed = false,
            },
            [1] = {
                name = "OnHide",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "MessageId",
                type = "oasis",
            },
            [1] = {
                name = "MessageType",
                type = "int",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "ExitZoneWarningListener_Custom";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom";
    self.FailingZoneEntered = DummyFunction;
    self.WarningZoneEntered = DummyFunction;
    self.gPlayers = nil;
    self.eCurrentPlayerWarn = nil;
    self.eCurrentPlayerFail = nil;
    self.box_ProximityTrigger_v2_33 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_33;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_33");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|102535348");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_33_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_33_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_33_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_33_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_33_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_33_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_33_Use,
    });
    self.box_ProximityTrigger_v2_32 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_32;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_32");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|164889146");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_32_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_32_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_32_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_32_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_32_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_32_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_32_Use,
    });
    self.box_SoundModifier_v2_15 = cbox:CreateBox("Domino/System/SoundModifier_v2.lua");
    l0 = self.box_SoundModifier_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SoundModifier_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|437135763");
    l0:SetConnections({
        -- Started,
        [1] = self.f_box_SoundModifier_v2_15_Started,
    });
    self.box_DisplayCustomUIMsg_v5_35 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v5.lua");
    l0 = self.box_DisplayCustomUIMsg_v5_35;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v5_35");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|449857712");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v4_13 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_13;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_13");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|508578613");
    l0:SetConnections({
    });
    self.box_DisplayCustomUIMsg_v4_23 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_23;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|667451167");
    l0:SetConnections({
    });
    self.box_ProximityTrigger_v2_26 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|724292481");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_ProximityTrigger_v2_26_Disabled,
        -- Enabled,
        [1] = self.f_box_ProximityTrigger_v2_26_Enabled,
        -- Enter,
        [2] = self.f_box_ProximityTrigger_v2_26_Enter,
        -- Leave,
        [3] = self.f_box_ProximityTrigger_v2_26_Leave,
        -- OnEmpty,
        [4] = self.f_box_ProximityTrigger_v2_26_OnEmpty,
        -- OnOccupied,
        [5] = self.f_box_ProximityTrigger_v2_26_OnOccupied,
        -- Use,
        [6] = self.f_box_ProximityTrigger_v2_26_Use,
    });
    self.box_MultipleOR_36 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_36;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_36");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|917504597");
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
    self.box_MultipleAND_v2_6 = cbox:CreateBox("Domino/System/MultipleAND_v2.lua");
    l0 = self.box_MultipleAND_v2_6;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleAND_v2_6");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|922618734");
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
        [0] = self.f_box_MultipleAND_v2_6_Out,
    });
    self.box_DisplayCustomUIMsg_v4_21 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_21;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1019268642");
    l0:SetConnections({
    });
    self.box_Gate_v3_14 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1229603045");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_14_Out,
    });
    self.box_MultipleOR_9 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_9;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1568563102");
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
    self.box_ProximityTrigger_v2_1 = cbox:CreateBox("Domino/System/ProximityTrigger_v2.lua");
    l0 = self.box_ProximityTrigger_v2_1;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityTrigger_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1576163544");
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
    self.box_DisplayCustomUIMsg_v4_8 = cbox:CreateBox("Domino/System/UI/DisplayCustomUIMsg_v4.lua");
    l0 = self.box_DisplayCustomUIMsg_v4_8;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_DisplayCustomUIMsg_v4_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1578930063");
    l0:SetConnections({
        -- OnHide,
        [1] = self.f_box_DisplayCustomUIMsg_v4_8_OnHide,
    });
    self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1709964955");
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
        [0] = self.f_box_MultipleOR_5_Out,
    });
    self.box_Gate_v3_2 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1832425317");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_2_Out,
    });
    self.box_CoopActivePlayers_30 = cbox:CreateBox("Domino/System/Coop/CoopActivePlayers.lua");
    l0 = self.box_CoopActivePlayers_30;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CoopActivePlayers_30");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|2113359419");
    l0:SetConnections({
        -- OnePlayer,
        [0] = self.f_box_CoopActivePlayers_30_OnePlayer,
        -- PlayerAdded,
        [1] = self.f_box_CoopActivePlayers_30_PlayerAdded,
        -- PlayerRemoved,
        [2] = self.f_box_CoopActivePlayers_30_PlayerRemoved,
        -- TwoPlayers,
        [3] = self.f_box_CoopActivePlayers_30_TwoPlayers,
    });
end;

function export:Disable()
    local params, l0;
    params = self:OnEnter_box_OutputOrder_v2_17();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1358610408", "1358610408", "ExitZoneWarningListener_Custom", "Disable", "box_OutputOrder_v2_17.In", self, l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:Enable()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_38();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|2044424769", "2044424769", "ExitZoneWarningListener_Custom", "Enable", "box_GetPlayerGroup_v2_38.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_29_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_2();
    l0 = self.box_Gate_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1934273766", "1934273766", "ExitZoneWarningListener_Custom", "box_Simple_Node_29.Out", "box_Gate_v3_2.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|206043164", "206043164", "ExitZoneWarningListener_Custom", "box_Simple_Node_29.Out", "box_Gate_v3_14.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_Simple_Node_27_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1170558692", "1170558692", "ExitZoneWarningListener_Custom", "box_Simple_Node_27.Out", "box_MultipleAND_v2_6.Reset", clone:GetLuaBox(), l0:GetLuaBox());
    -- Reset
    l0:Exec(1, params);
end;

function export:f_box_ProximityTrigger_v2_33_Enabled()
    self:OnExit_box_ProximityTrigger_v2_33_Enabled();
end;

function export:f_box_ProximityTrigger_v2_33_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_33_Enter();
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_35();
    l0 = self.box_ProximityTrigger_v2_33;
    l1 = self.box_DisplayCustomUIMsg_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|258470544", "258470544", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_33.Enter", "box_DisplayCustomUIMsg_v5_35.Display", l0:GetLuaBox(), l1:GetLuaBox());
    -- Display
    l1:Exec(0, params);
end;

function export:f_box_ProximityTrigger_v2_33_Leave()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_33_Leave();
    l0 = self.box_ProximityTrigger_v2_33;
    l1 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|566132706", "566132706", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_33.Leave", "box_MultipleOR_36.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_ProximityTrigger_v2_33_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_33_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_33_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_33_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_33_Use()
    self:OnExit_box_ProximityTrigger_v2_33_Use();
end;

function export:f_box_OutputOrder_v2_37_Out_0()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_36;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|926998687", "926998687", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_37.Out", "box_MultipleOR_36.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_37_Out_1()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|926144934", "926144934", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_37.Out", "FailingZoneEntered", clone:GetLuaBox(), self);
    self:FailingZoneEntered();
end;

function export:f_box_ProximityTrigger_v2_32_Enabled()
    self:OnExit_box_ProximityTrigger_v2_32_Enabled();
end;

function export:f_box_ProximityTrigger_v2_32_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_32_Enter();
    params = self:OnEnter_box_OutputOrder_v2_37();
    l0 = self.box_ProximityTrigger_v2_32;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|190624195", "190624195", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_32.Enter", "box_OutputOrder_v2_37.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_32_Leave()
    self:OnExit_box_ProximityTrigger_v2_32_Leave();
end;

function export:f_box_ProximityTrigger_v2_32_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_32_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_32_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_32_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_32_Use()
    self:OnExit_box_ProximityTrigger_v2_32_Use();
end;

function export:f_box_Compare_Entity_24_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1023362257", "1023362257", "ExitZoneWarningListener_Custom", "box_Compare_Entity_24.Equal", "box_MultipleAND_v2_6.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 0);
end;

function export:f_box_OutputOrder_v2_17_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_26();
    l0 = self.box_ProximityTrigger_v2_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|858703370", "858703370", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_17.Out", "box_ProximityTrigger_v2_26.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_1();
    l0 = self.box_ProximityTrigger_v2_1;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1255309452", "1255309452", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_17.Out", "box_ProximityTrigger_v2_1.Disable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Disable
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_17_Out_2()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_8();
    l0 = self.box_DisplayCustomUIMsg_v4_8;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1244367542", "1244367542", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_17.Out", "box_DisplayCustomUIMsg_v4_8.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_Compare_Boolean_4_A_is_False()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|415501750", "415501750", "ExitZoneWarningListener_Custom", "box_Compare_Boolean_4.A_is_False", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_Compare_Boolean_4_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_25();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|23909324", "23909324", "ExitZoneWarningListener_Custom", "box_Compare_Boolean_4.A_is_True", "box_OutputOrder_v2_25.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Compare_Boolean_10_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_14();
    l0 = self.box_Gate_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|82394794", "82394794", "ExitZoneWarningListener_Custom", "box_Compare_Boolean_10.A_is_True", "box_Gate_v3_14.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Compare_Entity_31_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_27();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1892279523", "1892279523", "ExitZoneWarningListener_Custom", "box_Compare_Entity_31.Equal", "box_Simple_Node_27.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_SoundModifier_v2_15_Started()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_2();
    l0 = self.box_SoundModifier_v2_15;
    l1 = self.box_Gate_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|890738650", "890738650", "ExitZoneWarningListener_Custom", "box_SoundModifier_v2_15.Started", "box_Gate_v3_2.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Compare_Boolean_16_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_23();
    l0 = self.box_DisplayCustomUIMsg_v4_23;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|588416573", "588416573", "ExitZoneWarningListener_Custom", "box_Compare_Boolean_16.A_is_True", "box_DisplayCustomUIMsg_v4_23.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_Compare_Entity_18_Equal()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    local clone = l0;
    params = self:OnEnter_box_MultipleAND_v2_6();
    l0 = self.box_MultipleAND_v2_6;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|2109649406", "2109649406", "ExitZoneWarningListener_Custom", "box_Compare_Entity_18.Equal", "box_MultipleAND_v2_6.Condition", clone:GetLuaBox(), l0:GetLuaBox());
    -- Condition
    l0:ExecDynInt(0, params, 1);
end;

function export:f_box_ProximityTrigger_v2_26_Enabled()
    self:OnExit_box_ProximityTrigger_v2_26_Enabled();
end;

function export:f_box_ProximityTrigger_v2_26_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_26_Enter();
    params = self:OnEnter_box_Compare_Boolean_16();
    l0 = self.box_ProximityTrigger_v2_26;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|308449129", "308449129", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_26.Enter", "box_Compare_Boolean_16.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_26_Leave()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_26_Leave();
    params = self:OnEnter_box_OutputOrder_v2_20();
    l0 = self.box_ProximityTrigger_v2_26;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1851908142", "1851908142", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_26.Leave", "box_OutputOrder_v2_20.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_26_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_26_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_26_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_26_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_26_Use()
    self:OnExit_box_ProximityTrigger_v2_26_Use();
end;

function export:f_box_Compare_Boolean_7_A_is_True()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_13();
    l0 = self.box_DisplayCustomUIMsg_v4_13;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1817570527", "1817570527", "ExitZoneWarningListener_Custom", "box_Compare_Boolean_7.A_is_True", "box_DisplayCustomUIMsg_v4_13.Display", clone:GetLuaBox(), l0:GetLuaBox());
    -- Display
    l0:Exec(0, params);
end;

function export:f_box_MultipleOR_36_Out()
    local params, l0, l1;
    params = self:OnEnter_box_DisplayCustomUIMsg_v5_35();
    l0 = self.box_MultipleOR_36;
    l1 = self.box_DisplayCustomUIMsg_v5_35;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|626783976", "626783976", "ExitZoneWarningListener_Custom", "box_MultipleOR_36.Out", "box_DisplayCustomUIMsg_v5_35.Hide", l0:GetLuaBox(), l1:GetLuaBox());
    -- Hide
    l1:Exec(1, params);
end;

function export:f_box_MultipleAND_v2_6_Out()
    local l0, l1;
    l0 = self.box_MultipleAND_v2_6;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1749055625", "1749055625", "ExitZoneWarningListener_Custom", "box_MultipleAND_v2_6.Out", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_OutputOrder_v2_3_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_24();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|756339907", "756339907", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_3.Out", "box_Compare_Entity_24.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_3_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Entity_18();
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|308064305", "308064305", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_3.Out", "box_Compare_Entity_18.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_29();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|2140213267", "2140213267", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_25.Out", "box_Simple_Node_29.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_25_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_DisplayCustomUIMsg_v4_21();
    l0 = self.box_DisplayCustomUIMsg_v4_21;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|883278688", "883278688", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_25.Out", "box_DisplayCustomUIMsg_v4_21.Hide", clone:GetLuaBox(), l0:GetLuaBox());
    -- Hide
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_25_Out_2()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1530002128", "1530002128", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_25.Out", "box_MultipleOR_5.Input", clone:GetLuaBox(), l0:GetLuaBox());
    -- Input
    l0:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_Gate_v3_14_Out()
    local params, l0, l1;
    params = self:OnEnter_box_SoundModifier_v2_15();
    l0 = self.box_Gate_v3_14;
    l1 = self.box_SoundModifier_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1334720089", "1334720089", "ExitZoneWarningListener_Custom", "box_Gate_v3_14.Out", "box_SoundModifier_v2_15.Play", l0:GetLuaBox(), l1:GetLuaBox());
    -- Play
    l1:Exec(0, params);
end;

function export:f_box_GetPlayerGroup_v2_38_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_38_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_34();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|533967689", "533967689", "ExitZoneWarningListener_Custom", "box_GetPlayerGroup_v2_38.Out", "box_OutputOrder_v2_34.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_9_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_4();
    l0 = self.box_MultipleOR_9;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1442067505", "1442067505", "ExitZoneWarningListener_Custom", "box_MultipleOR_9.Out", "box_Compare_Boolean_4.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_1_Enabled()
    self:OnExit_box_ProximityTrigger_v2_1_Enabled();
end;

function export:f_box_ProximityTrigger_v2_1_Enter()
    local params, l0, l1;
    self:OnExit_box_ProximityTrigger_v2_1_Enter();
    params = self:OnEnter_box_Simple_Node_27();
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1523927131", "1523927131", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_1.Enter", "box_Simple_Node_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_ProximityTrigger_v2_1_Leave()
    local l0, l1;
    self:OnExit_box_ProximityTrigger_v2_1_Leave();
    l0 = self.box_ProximityTrigger_v2_1;
    l1 = self.box_CoopActivePlayers_30;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|2006560048", "2006560048", "ExitZoneWarningListener_Custom", "box_ProximityTrigger_v2_1.Leave", "box_CoopActivePlayers_30.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, {
    });
end;

function export:f_box_ProximityTrigger_v2_1_OnEmpty()
    self:OnExit_box_ProximityTrigger_v2_1_OnEmpty();
end;

function export:f_box_ProximityTrigger_v2_1_OnOccupied()
    self:OnExit_box_ProximityTrigger_v2_1_OnOccupied();
end;

function export:f_box_ProximityTrigger_v2_1_Use()
    self:OnExit_box_ProximityTrigger_v2_1_Use();
end;

function export:f_box_DisplayCustomUIMsg_v4_8_OnHide()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_28();
    l0 = self.box_DisplayCustomUIMsg_v4_8;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|2030276824", "2030276824", "ExitZoneWarningListener_Custom", "box_DisplayCustomUIMsg_v4_8.OnHide", "box_Simple_Node_28.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_SetEntity_v2_19();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|597953088", "597953088", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_20.Out", "box_SetEntity_v2_19.FromEntity", clone:GetLuaBox(), l0:GetLuaBox());
    -- FromEntity
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_20_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Compare_Boolean_10();
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|713109720", "713109720", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_20.Out", "box_Compare_Boolean_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_5_Out()
    local l0;
    l0 = self.box_MultipleOR_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|2103425696", "2103425696", "ExitZoneWarningListener_Custom", "box_MultipleOR_5.Out", "FailingZoneEntered", l0:GetLuaBox(), self);
    self:FailingZoneEntered();
end;

function export:f_box_OutputOrder_v2_34_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_33();
    l0 = self.box_ProximityTrigger_v2_33;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1802715123", "1802715123", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_34.Out", "box_ProximityTrigger_v2_33.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_34_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ProximityTrigger_v2_32();
    l0 = self.box_ProximityTrigger_v2_32;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|2003817527", "2003817527", "ExitZoneWarningListener_Custom", "box_OutputOrder_v2_34.Out", "box_ProximityTrigger_v2_32.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_Gate_v3_2_Out()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Boolean_7();
    l0 = self.box_Gate_v3_2;
    l1 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|238043482", "238043482", "ExitZoneWarningListener_Custom", "box_Gate_v3_2.Out", "box_Compare_Boolean_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_SetEntity_v2_19_Out()
    local l0;
    self:OnExit_box_SetEntity_v2_19_Out();
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    local clone = l0;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1854591467", "1854591467", "ExitZoneWarningListener_Custom", "box_SetEntity_v2_19.Out", "WarningZoneEntered", clone:GetLuaBox(), self);
    self:WarningZoneEntered();
end;

function export:f_box_CoopActivePlayers_30_OnePlayer()
    local l0, l1;
    l0 = self.box_CoopActivePlayers_30;
    l1 = self.box_MultipleOR_9;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|153770403", "153770403", "ExitZoneWarningListener_Custom", "box_CoopActivePlayers_30.OnePlayer", "box_MultipleOR_9.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_CoopActivePlayers_30_PlayerAdded()
    local params, l0, l1;
    params = self:OnEnter_box_Simple_Node_11();
    l0 = self.box_CoopActivePlayers_30;
    l1 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1401977080", "1401977080", "ExitZoneWarningListener_Custom", "box_CoopActivePlayers_30.PlayerAdded", "box_Simple_Node_11.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_30_PlayerRemoved()
    local params, l0, l1;
    params = self:OnEnter_box_Compare_Entity_31();
    l0 = self.box_CoopActivePlayers_30;
    l1 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1346090181", "1346090181", "ExitZoneWarningListener_Custom", "box_CoopActivePlayers_30.PlayerRemoved", "box_Compare_Entity_31.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_CoopActivePlayers_30_TwoPlayers()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_3();
    l0 = self.box_CoopActivePlayers_30;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1884669283", "1884669283", "ExitZoneWarningListener_Custom", "box_CoopActivePlayers_30.TwoPlayers", "box_OutputOrder_v2_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_29()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_29");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|@Close");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_29_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_28()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_28");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|@HideWarning");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|@Reset");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_27_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_33()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = self.WarningZoneTrigger,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_37()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_37");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|156470759");
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
                [0] = self.f_box_OutputOrder_v2_37_Out_0,
                [1] = self.f_box_OutputOrder_v2_37_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_32()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = self.FailingZoneTrigger,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_24()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|168161319");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_24_Equal,
    });
    l0 = self.box_CoopActivePlayers_30;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(0),
        -- Entity2,
        [1] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|237701294");
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
                [0] = self.f_box_OutputOrder_v2_17_Out_0,
                [1] = self.f_box_OutputOrder_v2_17_Out_1,
                [2] = self.f_box_OutputOrder_v2_17_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_4()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_4");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|302181773");
    l0:SetConnections({
        -- A_is_False,
        [1] = self.f_box_Compare_Boolean_4_A_is_False,
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_4_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bShowUI,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|318909891");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_10_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bShowUI,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_31()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_31");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|376534139");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_31_Equal,
    });
    l0 = self.box_CoopActivePlayers_30;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(2),
        -- Entity2,
        [1] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnEnter_box_SoundModifier_v2_15()
    local params;
    params = {
        -- Pawns,
        [0] = "#ED455357",
        -- SoundId,
        [1] = "872277581",
        -- SoundType,
        [2] = 20,
        -- StopFadeOut,
        [3] = 0.5,
        -- UseSubtitles,
        [4] = false,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v5_35()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD Popups",
            item = "HUDPOPUP_HUD_LEAVINGMISSIONZONE",
            id = "153327",
        },
        -- MessageType,
        [1] = 1,
        -- pawns,
        [2] = self.eCurrentPlayerWarn,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|498713903");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_16_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bShowUI,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_13()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD Popups",
            item = "HUDPOPUP_HUD_LEAVINGMISSIONZONE",
            id = "153327",
        },
        -- pawns,
        [1] = self.eCurrentPlayerWarn,
    };
    return params;
end;

function export:OnEnter_box_Compare_Entity_18()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareEntity.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Entity_18");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|643791649");
    l0:SetConnections({
        -- Equal,
        [0] = self.f_box_Compare_Entity_18_Equal,
    });
    l0 = self.box_CoopActivePlayers_30;
    params = {
        -- Entity1,
        [0] = l0:GetDataOutValue(1),
        -- Entity2,
        [1] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_23()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD Popups",
            item = "HUDPOPUP_HUD_LEAVINGMISSIONZONE",
            id = "153327",
        },
        -- pawns,
        [1] = self.eCurrentPlayerWarn,
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_26()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = self.WarningZoneTrigger,
    };
    return params;
end;

function export:OnEnter_box_Compare_Boolean_7()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/CompareBoolean.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Compare_Boolean_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|831439197");
    l0:SetConnections({
        -- A_is_True,
        [2] = self.f_box_Compare_Boolean_7_A_is_True,
    });
    params = {
        -- A,
        [0] = self.bShowUI,
    };
    return params;
end;

function export:OnEnter_box_MultipleAND_v2_6()
    local params;
    params = {
        -- AutoReset,
        [0] = false,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_3()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|936247110");
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

function export:OnEnter_box_DisplayCustomUIMsg_v4_21()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD Popups",
            item = "HUDPOPUP_HUD_LEAVINGMISSIONZONE",
            id = "153327",
        },
        -- pawns,
        [1] = self.eCurrentPlayerFail,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_25()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_25");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1121048135");
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
                [0] = self.f_box_OutputOrder_v2_25_Out_0,
                [1] = self.f_box_OutputOrder_v2_25_Out_1,
                [2] = self.f_box_OutputOrder_v2_25_Out_2,
            },
            count = 3,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_14()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_38()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_38");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1464859158");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_38_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ProximityTrigger_v2_1()
    local params;
    params = {
        -- autoDisable,
        [0] = false,
        -- colliderFilterId,
        [1] = self.gPlayers,
        -- listenToGroupSizeChange,
        [2] = true,
        -- triggerId,
        [3] = self.FailingZoneTrigger,
    };
    return params;
end;

function export:OnEnter_box_DisplayCustomUIMsg_v4_8()
    local params;
    params = {
        -- MessageId,
        [0] = {
            section = "HUD Popups",
            item = "HUDPOPUP_HUD_LEAVINGMISSIONZONE",
            id = "153327",
        },
        -- pawns,
        [1] = "#ED455357",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_20()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1637953315");
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
                [0] = self.f_box_OutputOrder_v2_20_Out_0,
                [1] = self.f_box_OutputOrder_v2_20_Out_1,
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
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1796325525");
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

function export:OnEnter_box_Gate_v3_2()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Simple_Node_11()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_11");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1871187846");
    l0:SetConnections({
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_SetEntity_v2_19()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_SetEntity_v2_19");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\Lieutenants\\LT01\\LT01_030\\LT01_030_B40.domino|@ExitZoneWarningListener_Custom|1899920657");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_SetEntity_v2_19_Out,
    });
    params = {
        -- Entity,
        [0] = self.eCurrentPlayerWarn,
    };
    return params;
end;

function export:OnExit_box_ProximityTrigger_v2_33_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_33;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_33_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_33;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_33_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_33;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_33_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_33;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_33_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_33;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_33_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_33;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_32_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_32;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_32_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_32;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_32_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_32;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_32_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_32;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_32_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_32;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_32_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_32;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_26_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_26;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_26_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_26;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_26_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_26;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_26_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_26;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_26_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_26;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_26_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_26;
    self.eCurrentPlayerWarn = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_38_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.gPlayers = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Enabled()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Enter()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Leave()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_OnEmpty()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_OnOccupied()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_ProximityTrigger_v2_1_Use()
    local l0;
    l0 = self.box_ProximityTrigger_v2_1;
    self.eCurrentPlayerFail = l0:GetDataOutValue(0);
end;

function export:OnExit_box_SetEntity_v2_19_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/SetEntity_v2.lua")];
    self.CurrentWarnedPlayer = l0:GetDataOutValue(0);
end;

-- Empty out anchor definitions
function export:FailingZoneEntered()
    
end;
function export:WarningZoneEntered()
    
end;
_compilerVersion = 60;
<DominoMetadata IsStateless="0" IsSystem="0">
	<ControlsIn>
		<ControlIn Name="Disable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
		<ControlIn Name="Enable" AnchorDynType="0" HostExecFunc="" ClientExecFunc="" />
	</ControlsIn>
	<ControlsOut>
		<ControlOut Name="FailingZoneEntered" AnchorDynType="0" IsDelayed="1" />
		<ControlOut Name="WarningZoneEntered" AnchorDynType="0" IsDelayed="1" />
	</ControlsOut>
	<DatasIn>
		<DataIn Name="bShowUI" AnchorDynType="0" DataTypeID="bool" />
		<DataIn Name="FailingZoneTrigger" AnchorDynType="0" DataTypeID="entity" />
		<DataIn Name="WarningZoneTrigger" AnchorDynType="0" DataTypeID="entity" />
	</DatasIn>
	<DatasOut>
		<DataOut Name="CurrentWarnedPlayer" AnchorDynType="0" DataTypeID="entity" />
	</DatasOut>
</DominoMetadata>
