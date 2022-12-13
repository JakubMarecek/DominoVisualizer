LUAC_�  -- {\v/} Domino auto-generated LUA script file
-- 
-- Script document: domino/user/fc5_main/fc5_activities/questlines/uniquecharacters/uni04/uni04_020_postb20_dialog.domino
-- User graph: UNI04_020_PostB20_Dialog
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
        cboxRes:RegisterBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
        cboxRes:RegisterBox("Domino/System/Activity/ActivityEnd.lua");
        cboxRes:RegisterBox("Domino/System/AI/CharacterLoadedIdListener.lua");
        cboxRes:RegisterBox("Domino/System/AI/GetCharacterLoadState.lua");
        cboxRes:RegisterBox("Domino/System/Delay_v5.lua");
        cboxRes:RegisterBox("Domino/System/Gate_v3.lua");
        cboxRes:RegisterBox("Domino/System/GetPlayerGroup_v2.lua");
        cboxRes:RegisterBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
        cboxRes:RegisterBox("Domino/System/MultipleOR.lua");
        cboxRes:RegisterBox("Domino/System/OnceOnly_v3.lua");
        cboxRes:RegisterBox("Domino/System/OutputOrder_v2.lua");
        cboxRes:RegisterBox("Domino/System/Player/RequestPhoneCall_v2.lua");
        cboxRes:RegisterBox("Domino/System/ProximityRadiusListener_v3.lua");
        cboxRes:RegisterBox("Domino/System/SimpleNode.lua");
        
        -- Load resources
        cboxRes:LoadResource([[1560101090.bnk]], "CSoundResource");
    end;
end;

function export:RegisterCppMetadata()
    -- Publish blackbox metadata to C++
    metadataTable[GetPathID("Domino/User/FC5_main/FC5_Activities/QuestLines/UniqueCharacters/UNI04/UNI04_020_PostB20_Dialog.UNI04_020_PostB20_Dialog.debug.lua")] = {
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
    metadataTable[GetPathID("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Play",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Finished",
                delayed = true,
            },
            [1] = {
                name = "Interrupted",
                delayed = true,
            },
            [2] = {
                name = "Restarted",
                delayed = true,
            },
            [3] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "Group",
                type = "group",
            },
            [1] = {
                name = "Mandatory",
                type = "bool",
            },
            [2] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 3,
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
    metadataTable[GetPathID("Domino/System/AI/CharacterLoadedIdListener.lua")] = {
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
                name = "EntityUnloaded",
                delayed = true,
            },
            [3] = {
                name = "LoadedIdReceived",
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
                name = "CharacterId",
                type = "string",
            },
        },
        dataInCount = 2,
        dataOut = {
            [0] = {
                name = "EntityId",
                type = "entity",
            },
        },
        dataOutCount = 1,
    };
    metadataTable[GetPathID("Domino/System/AI/GetCharacterLoadState.lua")] = {
        stateless = true,
        controlIn = {
            [0] = {
                name = "In",
            },
        },
        controlInCount = 1,
        controlOut = {
            [0] = {
                name = "Loaded",
                delayed = false,
            },
            [1] = {
                name = "NotLoaded",
                delayed = false,
            },
        },
        controlOutCount = 2,
        dataIn = {
            [0] = {
                name = "CharacterId",
                type = "string",
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
    metadataTable[GetPathID("Domino/System/Mission_Flow/MissionAckTriggerListener.lua")] = {
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
        },
        controlOutCount = 4,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "triggerId",
                type = "entity",
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
    metadataTable[GetPathID("Domino/System/Player/RequestPhoneCall_v2.lua")] = {
        stateless = false,
        controlIn = {
            [0] = {
                name = "Cancel",
            },
            [1] = {
                name = "In",
            },
        },
        controlInCount = 2,
        controlOut = {
            [0] = {
                name = "Canceled",
                delayed = true,
            },
            [1] = {
                name = "Completed",
                delayed = true,
            },
            [2] = {
                name = "Failed",
                delayed = true,
            },
            [3] = {
                name = "Out",
                delayed = false,
            },
            [4] = {
                name = "Pending",
                delayed = true,
            },
            [5] = {
                name = "Started",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "CustomRingInSound",
                type = "Sound",
            },
            [1] = {
                name = "CustomRingOutSound",
                type = "Sound",
            },
            [2] = {
                name = "Delay",
                type = "float",
            },
            [3] = {
                name = "NoDeadair",
                type = "bool",
            },
            [4] = {
                name = "Pawns",
                type = "group",
            },
            [5] = {
                name = "SoundId",
                type = "Sound",
            },
        },
        dataInCount = 6,
        dataOut = {
        },
        dataOutCount = 0,
    };
    metadataTable[GetPathID("Domino/System/ProximityRadiusListener_v3.lua")] = {
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
                name = "AllFar",
                delayed = true,
            },
            [1] = {
                name = "AllNear",
                delayed = true,
            },
            [2] = {
                name = "Disabled",
                delayed = false,
            },
            [3] = {
                name = "Enabled",
                delayed = false,
            },
            [4] = {
                name = "SomeoneFar",
                delayed = true,
            },
            [5] = {
                name = "SomeoneNear",
                delayed = true,
            },
        },
        controlOutCount = 6,
        dataIn = {
            [0] = {
                name = "autoDisable",
                type = "bool",
            },
            [1] = {
                name = "Entities",
                type = "group",
            },
            [2] = {
                name = "farZone",
                type = "float",
            },
            [3] = {
                name = "id2",
                type = "entity",
            },
            [4] = {
                name = "nearZone",
                type = "float",
            },
            [5] = {
                name = "use2d",
                type = "bool",
            },
        },
        dataInCount = 6,
        dataOut = {
            [0] = {
                name = "currentEntity",
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
end;

function export:Init(cbox)
    local l0;
    self._name = "UNI04_020_PostB20_Dialog";
    self._elementPathId = "DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog";
    self.g_PlayerGroup = nil;
    self.eLarry = nil;
    self.box_MissionAckTriggerListener_5 = cbox:CreateBox("Domino/System/Mission_Flow/MissionAckTriggerListener.lua");
    l0 = self.box_MissionAckTriggerListener_5;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MissionAckTriggerListener_5");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|135804987");
    l0:SetConnections({
        -- Enabled,
        [1] = self.f_box_MissionAckTriggerListener_5_Enabled,
        -- Enter,
        [2] = self.f_box_MissionAckTriggerListener_5_Enter,
    });
    self.box_Delay_v5_26 = cbox:CreateBox("Domino/System/Delay_v5.lua");
    l0 = self.box_Delay_v5_26;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Delay_v5_26");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|630010246");
    l0:SetConnections({
        -- TimeElapsed,
        [5] = self.f_box_Delay_v5_26_TimeElapsed,
    });
    self.box_Brick_PlayDialog_Relax_24 = cbox:CreateBox("Domino/Library/Sp/Lib_Brick_PlayDialog.Brick_PlayDialog_Relax.debug.lua");
    l0 = self.box_Brick_PlayDialog_Relax_24;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Brick_PlayDialog_Relax_24");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|924211823");
    l0:SetConnections({
        -- Finished,
        [0] = self.f_box_Brick_PlayDialog_Relax_24_Finished,
    });
    self.box_CharacterLoadedIdListener_20 = cbox:CreateBox("Domino/System/AI/CharacterLoadedIdListener.lua");
    l0 = self.box_CharacterLoadedIdListener_20;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_CharacterLoadedIdListener_20");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1431037315");
    l0:SetConnections({
        -- Disabled,
        [0] = self.f_box_CharacterLoadedIdListener_20_Disabled,
        -- Enabled,
        [1] = self.f_box_CharacterLoadedIdListener_20_Enabled,
        -- EntityUnloaded,
        [2] = self.f_box_CharacterLoadedIdListener_20_EntityUnloaded,
        -- LoadedIdReceived,
        [3] = self.f_box_CharacterLoadedIdListener_20_LoadedIdReceived,
    });
    self.box_ProximityRadiusListener_v3_2 = cbox:CreateBox("Domino/System/ProximityRadiusListener_v3.lua");
    l0 = self.box_ProximityRadiusListener_v3_2;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ProximityRadiusListener_v3_2");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1484763589");
    l0:SetConnections({
        -- AllFar,
        [0] = self.f_box_ProximityRadiusListener_v3_2_AllFar,
    });
    self.box_Gate_v3_7 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_7;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_7");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1501492366");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_7_Out,
    });
    self.box_Gate_v3_3 = cbox:CreateBox("Domino/System/Gate_v3.lua");
    l0 = self.box_Gate_v3_3;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Gate_v3_3");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1535813785");
    l0:SetConnections({
        -- Out,
        [2] = self.f_box_Gate_v3_3_Out,
    });
    self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua");
    l0 = self.box_MultipleOR_12;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_MultipleOR_12");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1642149466");
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
    self.box_OnceOnly_v3_14 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua");
    l0 = self.box_OnceOnly_v3_14;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OnceOnly_v3_14");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1763666945");
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
                [0] = self.f_box_OnceOnly_v3_14_Out_0,
            },
            count = 2,
        },
    });
    self.box_RequestPhoneCall_v2_15 = cbox:CreateBox("Domino/System/Player/RequestPhoneCall_v2.lua");
    l0 = self.box_RequestPhoneCall_v2_15;
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_RequestPhoneCall_v2_15");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1822263340");
    l0:SetConnections({
        -- Completed,
        [1] = self.f_box_RequestPhoneCall_v2_15_Completed,
    });
end;

function export:In()
    local params, l0;
    params = self:OnEnter_box_GetPlayerGroup_v2_17();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1966936234", "1966936234", "UNI04_020_PostB20_Dialog", "In", "box_GetPlayerGroup_v2_17.FriendlyPlayers", self, l0:GetLuaBox());
    -- FriendlyPlayers
    l0:Exec(1, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_Simple_Node_16_Out()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|288027718", "288027718", "UNI04_020_PostB20_Dialog", "box_Simple_Node_16.Out", "box_Gate_v3_3.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_MissionAckTriggerListener_5_Enabled()
    local params, l0, l1;
    params = self:OnEnter_box_Delay_v5_26();
    l0 = self.box_MissionAckTriggerListener_5;
    l1 = self.box_Delay_v5_26;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|159941737", "159941737", "UNI04_020_PostB20_Dialog", "box_MissionAckTriggerListener_5.Enabled", "box_Delay_v5_26.Start", l0:GetLuaBox(), l1:GetLuaBox());
    -- Start
    l1:Exec(2, params);
end;

function export:f_box_MissionAckTriggerListener_5_Enter()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_27();
    l0 = self.box_MissionAckTriggerListener_5;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|2005155750", "2005155750", "UNI04_020_PostB20_Dialog", "box_MissionAckTriggerListener_5.Enter", "box_OutputOrder_v2_27.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_21_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_CharacterLoadedIdListener_20();
    l0 = self.box_CharacterLoadedIdListener_20;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|988835614", "988835614", "UNI04_020_PostB20_Dialog", "box_OutputOrder_v2_21.Out", "box_CharacterLoadedIdListener_20.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_21_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_MissionAckTriggerListener_5();
    l0 = self.box_MissionAckTriggerListener_5;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1130222767", "1130222767", "UNI04_020_PostB20_Dialog", "box_OutputOrder_v2_21.Out", "box_MissionAckTriggerListener_5.Enable", clone:GetLuaBox(), l0:GetLuaBox());
    -- Enable
    l0:Exec(1, params);
end;

function export:f_box_OutputOrder_v2_27_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1211604678", "1211604678", "UNI04_020_PostB20_Dialog", "box_OutputOrder_v2_27.Out", "box_Gate_v3_7.Close", clone:GetLuaBox(), l0:GetLuaBox());
    -- Close
    l0:Exec(0, params);
end;

function export:f_box_OutputOrder_v2_27_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_10();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|607933559", "607933559", "UNI04_020_PostB20_Dialog", "box_OutputOrder_v2_27.Out", "box_OutputOrder_v2_10.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_GetCharacterLoadState_23_Loaded()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetCharacterLoadState.lua")];
    local clone = l0;
    params = self:OnEnter_box_Brick_PlayDialog_Relax_24();
    l0 = self.box_Brick_PlayDialog_Relax_24;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|2044433829", "2044433829", "UNI04_020_PostB20_Dialog", "box_GetCharacterLoadState_23.Loaded", "box_Brick_PlayDialog_Relax_24.Play", clone:GetLuaBox(), l0:GetLuaBox());
    -- Play
    l0:Exec(0, params);
end;

function export:f_box_GetCharacterLoadState_23_NotLoaded()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetCharacterLoadState.lua")];
    local clone = l0;
    params = self:OnEnter_box_RequestPhoneCall_v2_15();
    l0 = self.box_RequestPhoneCall_v2_15;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1147495473", "1147495473", "UNI04_020_PostB20_Dialog", "box_GetCharacterLoadState_23.NotLoaded", "box_RequestPhoneCall_v2_15.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(1, params);
end;

function export:f_box_Delay_v5_26_TimeElapsed()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_7();
    l0 = self.box_Delay_v5_26;
    l1 = self.box_Gate_v3_7;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1178602745", "1178602745", "UNI04_020_PostB20_Dialog", "box_Delay_v5_26.TimeElapsed", "box_Gate_v3_7.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Brick_PlayDialog_Relax_24_Finished()
    local l0, l1;
    l0 = self.box_Brick_PlayDialog_Relax_24;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|424437995", "424437995", "UNI04_020_PostB20_Dialog", "box_Brick_PlayDialog_Relax_24.Finished", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_10_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1816395337", "1816395337", "UNI04_020_PostB20_Dialog", "box_OutputOrder_v2_10.Out", "box_Simple_Node_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_10_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_9();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1076684610", "1076684610", "UNI04_020_PostB20_Dialog", "box_OutputOrder_v2_10.Out", "box_ActivityEnd_9.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_CharacterLoadedIdListener_20_LoadedIdReceived()
    self:OnExit_box_CharacterLoadedIdListener_20_LoadedIdReceived();
end;

function export:f_box_ProximityRadiusListener_v3_2_AllFar()
    local params, l0, l1;
    params = self:OnEnter_box_Gate_v3_3();
    l0 = self.box_ProximityRadiusListener_v3_2;
    l1 = self.box_Gate_v3_3;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|682934246", "682934246", "UNI04_020_PostB20_Dialog", "box_ProximityRadiusListener_v3_2.AllFar", "box_Gate_v3_3.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_7_Out()
    local params, l0, l1;
    params = self:OnEnter_box_ProximityRadiusListener_v3_2();
    l0 = self.box_Gate_v3_7;
    l1 = self.box_ProximityRadiusListener_v3_2;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1815629312", "1815629312", "UNI04_020_PostB20_Dialog", "box_Gate_v3_7.Out", "box_ProximityRadiusListener_v3_2.Enable", l0:GetLuaBox(), l1:GetLuaBox());
    -- Enable
    l1:Exec(1, params);
end;

function export:f_box_Gate_v3_3_Out()
    local params, l0, l1;
    params = self:OnEnter_box_GetCharacterLoadState_23();
    l0 = self.box_Gate_v3_3;
    l1 = Boxes[GetPathID("Domino/System/AI/GetCharacterLoadState.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|337214670", "337214670", "UNI04_020_PostB20_Dialog", "box_Gate_v3_3.Out", "box_GetCharacterLoadState_23.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_MultipleOR_12_Out()
    local l0, l1;
    l0 = self.box_MultipleOR_12;
    l1 = self.box_OnceOnly_v3_14;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|280019366", "280019366", "UNI04_020_PostB20_Dialog", "box_MultipleOR_12.Out", "box_OnceOnly_v3_14.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:ExecDynInt(0, {
    }, 0);
end;

function export:f_box_OutputOrder_v2_1_Out_0()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_Simple_Node_16();
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|498315510", "498315510", "UNI04_020_PostB20_Dialog", "box_OutputOrder_v2_1.Out", "box_Simple_Node_16.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OutputOrder_v2_1_Out_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_ActivityEnd_8();
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1782690280", "1782690280", "UNI04_020_PostB20_Dialog", "box_OutputOrder_v2_1.Out", "box_ActivityEnd_8.EndHardSave", clone:GetLuaBox(), l0:GetLuaBox());
    -- EndHardSave
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:f_box_OnceOnly_v3_14_Out_0()
    local params, l0, l1;
    params = self:OnEnter_box_OutputOrder_v2_1();
    l0 = self.box_OnceOnly_v3_14;
    l1 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1565157881", "1565157881", "UNI04_020_PostB20_Dialog", "box_OnceOnly_v3_14.Out", "box_OutputOrder_v2_1.In", l0:GetLuaBox(), l1:GetLuaBox());
    -- In
    l1:Exec(0, params);
    l1:SetParentGraph(nil);
end;

function export:f_box_RequestPhoneCall_v2_15_Completed()
    local l0, l1;
    l0 = self.box_RequestPhoneCall_v2_15;
    l1 = self.box_MultipleOR_12;
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|560342513", "560342513", "UNI04_020_PostB20_Dialog", "box_RequestPhoneCall_v2_15.Completed", "box_MultipleOR_12.Input", l0:GetLuaBox(), l1:GetLuaBox());
    -- Input
    l1:ExecDynInt(0, {
    }, 1);
end;

function export:f_box_GetPlayerGroup_v2_17_Out()
    local params, l0;
    self:OnExit_box_GetPlayerGroup_v2_17_Out();
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    local clone = l0;
    params = self:OnEnter_box_OutputOrder_v2_21();
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    TraceConnection("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1770411374", "1770411374", "UNI04_020_PostB20_Dialog", "box_GetPlayerGroup_v2_17.Out", "box_OutputOrder_v2_21.In", clone:GetLuaBox(), l0:GetLuaBox());
    -- In
    l0:Exec(0, params);
    l0:SetParentGraph(nil);
end;

function export:OnEnter_box_Simple_Node_16()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/SimpleNode.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_Simple_Node_16");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|@n_CleanUp");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_Simple_Node_16_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_MissionAckTriggerListener_5()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- triggerId,
        [1] = "2095768890758926021",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_21()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_21");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|218307686");
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

function export:OnEnter_box_ActivityEnd_9()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_9");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|291469740");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_27()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_27");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|441076750");
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
                [0] = self.f_box_OutputOrder_v2_27_Out_0,
                [1] = self.f_box_OutputOrder_v2_27_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_GetCharacterLoadState_23()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/AI/GetCharacterLoadState.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetCharacterLoadState_23");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|479495308");
    l0:SetConnections({
        -- Loaded,
        [0] = self.f_box_GetCharacterLoadState_23_Loaded,
        -- NotLoaded,
        [1] = self.f_box_GetCharacterLoadState_23_NotLoaded,
    });
    params = {
        -- CharacterId,
        [0] = "9015184709204329",
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

function export:OnEnter_box_Brick_PlayDialog_Relax_24()
    local params;
    params = {
        -- Group,
        [0] = self.eLarry,
        -- Mandatory,
        [1] = true,
        -- SoundId,
        [2] = "1560101090",
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_10()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_10");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1045867409");
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

function export:OnEnter_box_CharacterLoadedIdListener_20()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- CharacterId,
        [1] = "9015184709204329",
    };
    return params;
end;

function export:OnEnter_box_ProximityRadiusListener_v3_2()
    local params;
    params = {
        -- autoDisable,
        [0] = true,
        -- Entities,
        [1] = self.g_PlayerGroup,
        -- farZone,
        [2] = 30,
        -- id2,
        [3] = "2104368592379193099",
        -- use2d,
        [5] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_7()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_Gate_v3_3()
    local params;
    params = {
        -- initStateOpen,
        [0] = true,
    };
    return params;
end;

function export:OnEnter_box_OutputOrder_v2_1()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/OutputOrder_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_OutputOrder_v2_1");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1658083465");
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
                [0] = self.f_box_OutputOrder_v2_1_Out_0,
                [1] = self.f_box_OutputOrder_v2_1_Out_1,
            },
            count = 2,
        },
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_RequestPhoneCall_v2_15()
    local params;
    params = {
        -- Delay,
        [2] = 0,
        -- NoDeadair,
        [3] = false,
        -- Pawns,
        [4] = "#ED455357",
        -- SoundId,
        [5] = "1560101090",
    };
    return params;
end;

function export:OnEnter_box_GetPlayerGroup_v2_17()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_GetPlayerGroup_v2_17");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|1898441908");
    l0:SetConnections({
        -- Out,
        [0] = self.f_box_GetPlayerGroup_v2_17_Out,
    });
    params = {
    };
    return params;
end;

function export:OnEnter_box_ActivityEnd_8()
    local params, l0;
    l0 = Boxes[GetPathID("Domino/System/Activity/ActivityEnd.lua")];
    l0:SetParentGraph(self._cbox);
    l0:SetBoxName("box_ActivityEnd_8");
    l0:SetElementPathId("DocumentContainer|FC5_main\\FC5_Activities\\QuestLines\\UniqueCharacters\\UNI04\\UNI04_020_PostB20_Dialog.domino|@UNI04_020_PostB20_Dialog|2048773160");
    l0:SetConnections({
    });
    params = {
        -- Success,
        [0] = true,
    };
    return params;
end;

function export:OnExit_box_CharacterLoadedIdListener_20_LoadedIdReceived()
    local l0;
    l0 = self.box_CharacterLoadedIdListener_20;
    self.eLarry = l0:GetDataOutValue(0);
end;

function export:OnExit_box_GetPlayerGroup_v2_17_Out()
    local l0;
    l0 = Boxes[GetPathID("Domino/System/GetPlayerGroup_v2.lua")];
    self.g_PlayerGroup = l0:GetDataOutValue(0);
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
